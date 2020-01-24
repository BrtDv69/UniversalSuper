unit psnCRC32;
{Копирайт (c) 2003 Сергей Парунов. Частичный копирайт (предок функции
CRC32Stream и пара идей) Андрей Рубин.

Подпрограммы вычисления CRC32 стандартным способом, применяющимся большинством
архиваторов и в Ethernet. Способ расчёта - обычный, побайтно. Для этого
инициализируется таблица размером 1 КБ.

Примечание для экспериментаторов: увеличивая таблицу до следующего значения
256 КБ (для обработки не по байту, а по слову), вы получите существенный
прирост скорости разве что на Xeon: очень важен кэш. Проверено: на PIII почти
не даёт прироста, а на старых модификациях (< Coppermine 256) даже отстаёт.}

interface

uses Classes;

procedure CRC32Next({Вычисляет CRC32 блока из прежнего значения. Это позволяет
обрабатывать большие массивы информации поблочно.}
	const Data; {Блок в памяти, чей CRC32 нужно просчитать.}
	const Count: Cardinal; {Размер блока.}
	var CRC32: Cardinal {Текущее значение CRC32. Перед обработкой первого блока
	CRC32 необходимо инициализировать единицами: CRC32:= not 0, а после обработки
	последнего блока - инвертировать: CRC32:= not CRC32. Кстати, последнее
	сделано только для того, чтобы генерировать всегда ненулевой CRC32 - этот
	алгоритм происходит из Ethernet.}
);

function CRC32Full(const Data; const Count: Cardinal): Cardinal; {Вычисляет
CRC32 блока Data размера Count.}

function  CRC32Stream({Вычисляет CRC32 потока, начиная с текущей позиции.}
	const Source: TStream; {Поток.}
	Count: Integer; {Длина блока в потоке, CRC32 которого нужно посчитать.
	Если нельзя столько прочитать, возникнет стандартное VCL-исключение
	EReadError. Если Count отрицателен, он принимается равным размеру потока.}
	const BufSize: Cardinal = 1024 {Размер буфера, д.б. положителен.}
): Cardinal;

implementation

var T: array [Byte] of Cardinal;

procedure CRC32Next(const Data; const Count: Cardinal; var CRC32: Cardinal);
var
	MyCRC32, I: Cardinal;
	PData: ^Byte;
begin
	PData:= @Data;
	MyCRC32:= CRC32; {в цикле - не var-переменная: так быстрее}
	for I:= 1 to Count do begin
		MyCRC32:= MyCRC32 shr 8 xor T[MyCRC32 and $FF xor PData^];
		Inc(PData);
	end;
	CRC32:= MyCRC32;
end;

function CRC32Full(const Data; const Count: Cardinal): Cardinal;
begin
	Result:= High(Result);
	CRC32Next(Data, Count, Result);
	Result:= not Result;
end;

function  CRC32Stream(const Source: TStream; Count: Integer;
	const BufSize: Cardinal = 1024): Cardinal;
var
	N: Cardinal;
	Buffer: Pointer;
begin
	if Count < 0
	then Count:= Source.Size;
	GetMem(Buffer, BufSize); try
	Result:= High(Result);
	while Count <> 0 do begin
		if Cardinal(Count) > BufSize
		then N:= BufSize
		else N:= Count;
		Source.ReadBuffer(Buffer^, N);
		CRC32Next(Buffer^, N, Result);
		Dec(Count, N);
	end;
	finally FreeMem(Buffer); end;
	Result:= not Result;
end;

var I, D, J: Cardinal;
initialization {заполним таблицу значениями}
	for I:= 0 to 255 do begin
		D:= I;
		for J:= 1 to 8 do
			if Odd(D)
			then D:= D shr 1 xor $EDB88320 {образующий полином}
			else D:= D shr 1;
		T[I]:= D;
	end;
end.

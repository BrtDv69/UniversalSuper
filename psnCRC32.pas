unit psnCRC32;
{�������� (c) 2003 ������ �������. ��������� �������� (������ �������
CRC32Stream � ���� ����) ������ �����.

������������ ���������� CRC32 ����������� ��������, ������������� ������������
����������� � � Ethernet. ������ ������� - �������, ��������. ��� �����
���������������� ������� �������� 1 ��.

���������� ��� �����������������: ���������� ������� �� ���������� ��������
256 �� (��� ��������� �� �� �����, � �� �����), �� �������� ������������
������� �������� ����� ��� �� Xeon: ����� ����� ���. ���������: �� PIII �����
�� ��� ��������, � �� ������ ������������ (< Coppermine 256) ���� ������.}

interface

uses Classes;

procedure CRC32Next({��������� CRC32 ����� �� �������� ��������. ��� ���������
������������ ������� ������� ���������� ��������.}
	const Data; {���� � ������, ��� CRC32 ����� ����������.}
	const Count: Cardinal; {������ �����.}
	var CRC32: Cardinal {������� �������� CRC32. ����� ���������� ������� �����
	CRC32 ���������� ���������������� ���������: CRC32:= not 0, � ����� ���������
	���������� ����� - �������������: CRC32:= not CRC32. ������, ���������
	������� ������ ��� ����, ����� ������������ ������ ��������� CRC32 - ����
	�������� ���������� �� Ethernet.}
);

function CRC32Full(const Data; const Count: Cardinal): Cardinal; {���������
CRC32 ����� Data ������� Count.}

function  CRC32Stream({��������� CRC32 ������, ������� � ������� �������.}
	const Source: TStream; {�����.}
	Count: Integer; {����� ����� � ������, CRC32 �������� ����� ���������.
	���� ������ ������� ���������, ��������� ����������� VCL-����������
	EReadError. ���� Count �����������, �� ����������� ������ ������� ������.}
	const BufSize: Cardinal = 1024 {������ ������, �.�. �����������.}
): Cardinal;

implementation

var T: array [Byte] of Cardinal;

procedure CRC32Next(const Data; const Count: Cardinal; var CRC32: Cardinal);
var
	MyCRC32, I: Cardinal;
	PData: ^Byte;
begin
	PData:= @Data;
	MyCRC32:= CRC32; {� ����� - �� var-����������: ��� �������}
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
initialization {�������� ������� ����������}
	for I:= 0 to 255 do begin
		D:= I;
		for J:= 1 to 8 do
			if Odd(D)
			then D:= D shr 1 xor $EDB88320 {���������� �������}
			else D:= D shr 1;
		T[I]:= D;
	end;
end.

// (c) Dmitry Yatcenko 2001
// All rights may be ignored :)
unit ShowIBException;

interface

uses sysutils, IBDataBase;

function SafeIBError(E: Exception; vDataBase: TIBDataBase; vTransaction:
  TIBTransaction): boolean;

implementation

uses IBQuery, IB, Dialogs;

resourcestring
  ermNotNull = 'Не заполнено обязательное поле:';
  ermIllegalValue = 'Введено недопустимое значение:';
  ermAborted = 'Выполнение невозможно.';
  ermBadReference = 'Нарушение ссылки';
  ermNotFilled = 'Не заполнено поле';
  ermErasedHasLinks = 'или на удаляемую запись есть ссылка';
  ermDeadLock = 'Запись заблокирована другим пользователем.';
  ermNonUnique = 'Введено неуникальное значение. '^M + 'Таблица ';
  ermField = 'поле';
  ermFields = 'поля';
  ermUser = 'Пользователь ';
  ermRights = ' не имеет прав на выполнение данной операции.'^M +
    'Обратитесь к Администратору.';
  ermConnectionLost = 'Прервана связь с сервером.'^M +
    'Продолжение работы невозможно.';

function SafeIBError(E: Exception; vDataBase: TIBDataBase; vTransaction:
  TIBTransaction): boolean;
var
  qryGetComment: TIBQuery;
  tname: string;
  s1: string;
begin
  if E is EIBError then
    case EIBError(E).IBErrorCode of
      335544347: begin
          if pos('*** null ***', E.Message) > 0 then
            s1 := ermNotNull
          else
            s1 := ermIllegalValue;
          MessageDlg(S1 + ^M + E.Message, mtError, [mbOk], 0);
          result := True;
        end;
      335544517: begin // Custom exception
          s1 := copy(E.Message, pos(#10, E.Message) + 1, length(E.Message));
          MessageDlg(ermAborted + ^M + s1, mtWarning, [mbOk], 0);
          result := True;
        end;
      335544466: begin
          tname := Copy(E.Message, pos('constraint', E.Message) + 12,
            length(E.Message));
          system.delete(tname, pos('"', tname), length(tname));
          qryGetComment := TIBQuery.Create(nil);
          with qryGetComment do begin
            Database := vDatabase;
            Transaction := vTransaction;
            SQL.text :=
              'select cast(0 as integer) i, relc1.rdb$relation_name, ' +
              '  inds1.rdb$field_name, rel1.rdb$description ' +
              'from rdb$relation_constraints relc1, ' +
              '  rdb$index_segments inds1, ' +
              '  rdb$relations rel1 ' +
              'where relc1.RDB$CONSTRAINT_NAME='#39 + tname + #39' ' +
              '  and inds1.rdb$index_name=relc1.rdb$index_name ' +
              '  and rel1.rdb$relation_name=relc1.rdb$relation_name ' +
              'union select cast(1 as integer) i,relc.rdb$relation_name, ' +
              '  inds.rdb$field_name, rel.rdb$description ' +
              'from RDB$REF_CONSTRAINTS refc, ' +
              '  rdb$relation_constraints relc, ' +
              '  rdb$index_segments inds, ' +
              '  rdb$relations rel ' +
              'where refc.RDB$CONSTRAINT_NAME='#39 + tname + #39' ' +
              '  and refc.RDB$CONST_NAME_UQ=relc.rdb$constraint_name ' +
              '  and inds.rdb$index_name=relc.rdb$index_name ' +
              '  and rel.rdb$relation_name=relc.rdb$relation_name ' +
              'ORDER BY 1,3';
            Open;
            FetchAll;
            tname := trim(FieldByName('rdb$relation_name').asstring);
            s1 := '"' + trim(FieldByName('rdb$description').asstring) + '" ' +
              trim(FieldByName('rdb$relation_name').asstring) + '(';
            while not eof do begin
              if tname <> trim(FieldByName('rdb$relation_name').asstring) then
                begin
                s1 := copy(s1, 1, length(s1) - 2) + ') - "' +
                  (FieldByName('rdb$description').asstring) + '" ' +
                  trim(FieldByName('rdb$relation_name').asstring) + '(';
                tname := trim(FieldByName('rdb$relation_name').asstring);
              end;
              s1 := s1 + trim(FieldByName('rdb$field_name').asstring) + ', ';
              next;
            end;
            s1 := stringreplace(copy(s1, 1, length(s1) - 2) + ')', '"" ', '',
              [rfReplaceAll]);
            MessageDlg(ermAborted + ^M + ermBadReference + ' <' + s1 + '>'^M +
              ermNotFilled + ' ' + Copy(s1, 1, pos(') - ', s1)) +
              ' ' + ermErasedHasLinks + '.',
              mtInformation, [mbOk], 0);
            Close;
            Free;
          end;
          result := True;
        end;
      335544336: begin
          MessageDlg(ermDeadLock, mtError, [mbOk], 0);
          result := True;
        end;
      335544349, 335544665: begin
          qryGetComment := TIBQuery.Create(nil);
          with qryGetComment do begin
            Database := vDatabase;
            Transaction := vTransaction;
            SQL.text := 'select i.RDB$RELATION_NAME, s.rdb$field_name, ' +
              'r.rdb$description from RDB$INDICES i, rdb$index_segments s, ' +
              'rdb$relations r where i.RDB$INDEX_NAME  = :IDXNAME and ' +
              's.rdb$index_name =:IDXNAME and r.rdb$relation_name = ' +
              'i.RDB$RELATION_NAME ' +
              'union ' +
              'select ' +
              '  i.RDB$RELATION_NAME, ' +
              '  s.rdb$field_name, ' +
              '  r.rdb$description ' +
              'from ' +
              '  RDB$RELATION_CONSTRAINTS c, ' +
              '  RDB$INDICES i, ' +
              '  rdb$index_segments s, ' +
              '  rdb$relations r ' +
              'where ' +
              '  c.rdb$constraint_name = :IDXNAME ' +
              '  and i.RDB$INDEX_NAME  = c.rdb$index_name ' +
              '  and s.rdb$index_name = i.RDB$INDEX_NAME ' +
              '  and r.rdb$relation_name = i.RDB$RELATION_NAME';
            tname := copy(E.Message, pos('"', E.Message) + 1,
              length(E.Message));
            system.delete(tname, pos('"', tname), length(tname));
            ParamByName('IDXNAME').AsString := tname;
            open;
            FetchAll;
            if recordcount > 1 then
              s1 := '"' + trim(FieldByName('rdb$description').asstring) + '" ' +
                trim(FieldByName('rdb$relation_name').asstring) + ' '+ermFields+' '
            else
              s1 := '"' + trim(FieldByName('rdb$description').asstring) + '" ' +
                trim(FieldByName('rdb$relation_name').asstring) + ' '+ermField+' ';

            while not eof do begin
              s1 := s1 + trim(FieldByName('rdb$field_name').asstring) + ', ';
              next;
            end;
            s1 := stringreplace(copy(s1, 1, length(s1) - 2), '"" ', '',
              [rfReplaceAll]);
            Close;
            Free;
          end;
          MessageDlg(ermNonUnique + S1, mtError, [mbOk], 0);
          result := True;
        end;
      335544551, 335544552, 335544553: begin
          qryGetComment := TIBQuery.Create(nil);
          with qryGetComment do begin
            Database := vDatabase;
            Transaction := vTransaction;
            SQL.text := 'select user from rdb$database';
            Open;
//Bert            MessageDlg(ermUser + FieldByName('user').asstring + ermRights,
            MessageDlg(ermUser + ermRights,
              mtError, [mbOk], 0);
            Close;
            Free;
          end;
          result := True;
        end;
      335544721: begin
          MessageDlg(ermConnectionLost, mtError, [mbOk], 0);
          result := false;
        end;
    else
      result := false;
    end
  else
    result := false;
end;

end.


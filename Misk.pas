unit Misk;

interface

uses Windows, Registry, Classes, IBServices, SysUtils, Buttons, DB, wwDBGrid,
     IBCustomDataSet, Dialogs, Forms, Controls, Graphics, Wwdbigrd,
     Grids, Menus, IBSQL, IBDataBase, JclMath, cxGridDBTableView, cxGraphics,
     cxGridTableView, cxCustomData, cxGridCustomTableView, cxGridDBDataDefinitions,
     Variants, cxGrid, cxClasses, cxGridPopUpMenuConsts, cxGridStrs, cxFilterConsts,
     cxEditConsts, Math, HyperStr, ComCtrls, cxGridLevel, cxGridCustomView, RzTreeVw,
     dxdbtrel, LbCipher, LbString, dxBarStrs, cxFilterControlStrs, dxBarExtItems;

type
 TObjProcedure = procedure of object;
 ForCRC = array of Byte;

 PReasonsRec = ^ItemReasonsRec;
 ItemReasonsRec = Record
  ID : Integer;
  ReasonType : ShortInt; //0-расчеты по товару, 1-расчеты по услугам, 2-внутреннее перемещение, 3-прочее
  MovementType : ShortInt; //0-движение товара, 1-оплата/расчеты
  PaymentType : ShortInt; //-1-у движения товара, 1-наличные, 2-безналичные, 3-бартер, 4-ценные бумаги, 5-зачеты
  InOut : ShortInt; //1-расход, 2-приход
 end;

const
  prro = $396A3CC6;
  VariousRightForGO = 'GO_RIGHT';
var
  Path1, Path2, Path3, GenPswd, UserName, Password : String;
  Black : Boolean = False;
  PersonID, SecurityLevel : Integer;
  UserRole : String;
  DefParamsBlack, DefParams : TStrings;
  ColorGroups : TColor = $009EE1FE;
  ColorComplects : TColor = $009DB6FF;
  ColorWorks : TColor = $00FFE49D;
  ColorGoods : TColor = clWindow;
  ColorMany : TColor = $00AFF8A5;
  ColorBlack : TColor = $00FFEAEA;
  PaintBlackBody : Boolean = True;
  ColorUnModify : TColor = $00A6C8F0;
  StyleDouble : set of TFontStyle = [fsBold];
  StyleBlack : set of TFontStyle = [fsItalic];
  TempIn_Out : Integer;
  TempNal_In : Integer;
  Invoice_ID, Inner_Invoice_ID, Nakl_In_ID, Nakl_Out_ID, Plat_ID : Int64;
  Request_ID : Integer;
  SetUp_Use_Guarantee_Period : Integer;

function GetPaths(var Path1, Path2, Path3 : String): Boolean;
procedure GetServer(var ServerName : String; var Protocol : TProtocol);
function EnCodeStr(StrIn : String; const Psw : String): String;
function DeCodeStr(StrIn : String; const Psw : String): String;
function MyUpCase(Ch : Char): Char;
function FieldPos(FieldName: String; SelectSQL: TStrings): String;
function FieldPosNumber(FieldPosRes, OrderBy: String): String;
procedure wwDBGridCalcTitleAttributes(Sender: TObject;
  AFieldName, AFieldNameReal: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment; OrderBy: String);
procedure wwDBGridTitleButtonClick(Sender: TObject; AFieldName: String;
                                   var OrderBy : String; Ctrl : Boolean;
                                   sbApply, sbCancel : TSpeedButton;
                                   GenerateSelect : TObjProcedure);
procedure wwDBGridCalcTitleImage(Sender: TObject; Field: TField;
                                 var TitleImageAttributes: TwwTitleImageAttributes;
                                 OrderBy : String);
procedure ibdsAfterScroll(DataSet: TDataSet; Form: TForm; Suf: String);
function GetStartDate(Number_Restart_Period: Integer; Date: TDateTime): TDate;
function GetStopDate(Number_Restart_Period: Integer; Date: TDateTime): TDate;
function ReplaceDateStr(InStr: String; Date: TDateTime): String;
procedure wwDBGridCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
procedure wwDBGridCalcCellColors2(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
procedure wwDBGridCalcCellColors3(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
function GeneratePrice(BasePrice: Double; PriceFormula: String; Percent: Double; GetNSP: Integer; NSP: Double): Double;
procedure sbPrintClick(Sender: TSpeedButton; ibsAux: TIBSQL; ibDataSet : TIBDataSet);
function CurrencyToStr (nSum : Longint; cTxt1,cTxt2,cTxt3 : String; nTypeWrite : Byte) : String;
function GetMainCurrencyRate(ibsAux : TIBSQL; Enterprise_ID, Enterprise_Store_ID : String; CurrencyID : Integer; CurrencyRate : Double) : Double;
procedure SetUserSelect(trMain : TIBTransaction; ibdsList : TIBDataSet; ibsAux : TIBSQL; TableID, FormID : Integer; EnterpriseID : Largeint);
procedure ReadUserSelect(ibdsList : TIBDataSet; ibsAux : TIBSQL; TableID, FormID : Integer;
                         EnterpriseID : Largeint);
procedure SafeFormPlace(Form: TForm);
function MyCRC32(const X: String): Integer;
function MyBoolToInt(Bool : Boolean): Integer;
function ReplaceStr(const S, Srch, Replace: string): string;
{ Returns string with every occurrence of Srch string replaced with
  Replace string. }
procedure FlashMsg(const Title,Msg:AnsiString; TOut:Integer);
function  iMax(const I,J:Integer):Integer;
procedure AnsiLCase(var Source:AnsiString;const Index,Count:Integer);
procedure GridDBTableViewCustomDrawColumnHeader(Sender: TcxGridDBTableView;
          ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo);
procedure GridDBTableViewCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
          AViewInfo: TcxGridTableDataCellViewInfo; DrawBlack: Boolean);
procedure LocaliseDevEx;
function GetNewID(ibsGen_ID: TIBSQL; Gen_Name: String): Integer;
procedure PostIfNeeded(IBDataSet: TIBDataSet);
procedure DeleteSet(DataSet: TIBDataSet; DataSetFieldPARENT_ID  : TField; ParentID : Integer);
function CreateSetLevelView(Grid: TcxGrid; DataSource: TDataSource): TcxGridDBTableView;
function GetNeededLevel(DataSet: TIBDataSet): Integer;
function CountLevels(Grid: TcxGrid): Integer;
procedure CreateColumnByPattern(AView, PatternView: TcxGridDBTableView; FieldName: ShortString);
procedure InsertSet(Database: TIBDataBase; Transaction: TIBTransaction; DataSet: TIBDataSet; ArticulID, StoreID: ShortString);
procedure CheckDataSet(DataSet: TIBDataSet);
procedure SetCRC32_Set(MainDataSet,SetDataSet: TIBDataSet; FieldName: String);
procedure GenerateReasonsTree(ParentTree: TWinControl);
procedure GenerateExtendedReasonsTree(ParentTreeEdit: TdxDBTreeViewEdit; DataSet: TDataSet);
function GetName(BlackKey : Boolean; Name : String; MaxLength : Integer): String; // функция
// шифрует строку разными ключами и обрезает результат до максимальной длины.
// используется при получении имени пользователя и его пароля при логине.
procedure CalcNameWithSpecs(DataSet: TDataSet);
function GetSetUpParam(Database: TIBDataBase; Transaction: TIBTransaction; EnterpriseID, StoreID, SetupName: ShortString) : Integer;

implementation

uses Main, DM;

function GetPaths(var Path1, Path2, Path3 : String): Boolean ;
var
 Reg: TRegistry;
begin
 Result := False;
 Reg := TRegistry.Create;
 Reg.RootKey := HKEY_LOCAL_MACHINE;
 If (Reg.KeyExists('\Software\BertSoftware\Universal\SetUp')) then
  Begin
   Reg.OpenKeyReadOnly('\Software\BertSoftware\Universal\SetUp');
   If (Reg.ValueExists('Path1')) then
    Begin
     Result := True;
     Path1 := Reg.ReadString('Path1');
     Path2 := Reg.ReadString('Path2');
     Path3 := Reg.ReadString('Path3')
    End
  End
 else
  Result := False;
 Reg.Free
End;

procedure GetServer(var ServerName : String; var Protocol : TProtocol);
 var Path : String;
     Key256 : TKey256;
begin
 GenerateLMDKey(Key256, SizeOf(Key256), '¬ЎлмyWІО=`бюЪ БєyX†f0“Ъвљ 845098yhfjb hJLUGLI,. ., **&*^#');
 Path := RDLEncryptStringCBCEx(Path1, Key256, 32, False);
 If (Copy(Path,1,2)='\\') then
  Begin
   ServerName := Copy(Path,3,Pred(Pos(':',Path)));
   Protocol := NamedPipe
  End
 else
  If (Copy(Path,2,2)=':\') then
   Begin
    ServerName := '';
    Protocol := Local
   End
  else
   Begin
    ServerName := Copy(Path,1,Pred(Pos(':',Path)));
    Protocol := TCP
   End
End;

function EnCodeStr(StrIn : String; const Psw : String): String;
begin
 Result := StrIn
End;

function DeCodeStr(StrIn : String; const Psw : String): String;
begin
 Result := StrIn
End;

function MyUpCase(Ch: Char): Char;
Begin
 If Ch in ['a'..'z'] then Ch := UpCase(Ch);
 If Ord(Ch) in [224..255] then Ch := Chr(Ord(Ch)-32);
 Result := Ch
End;

function FieldPos(FieldName: String; SelectSQL: TStrings): String;
 var SqlStr, S : String;
     k, kk : Integer;
Begin
 SqlStr :='';
 For k := 0 to Pred(SelectSQL.Count) do
  SqlStr := SqlStr+Trim(SelectSQL[k])+' ';
 If (Pos('distinct',SqlStr)=0) then
  SqlStr := Copy(SqlStr,8,Pos(' from ',SqlStr)-7)
 else
  SqlStr := Copy(SqlStr,Pos(' distinct ',SqlStr)+11,Pos(' from ',SqlStr)-Pos(' distinct ',SqlStr)+10);
 SqlStr := Trim(SqlStr)+',';
 SqlStr := SqlStr+',';
 S := '';
 kk := 1;
 While (Length(SqlStr)>0) do
  Begin
   S := Trim(Copy(SqlStr,1,Pos(',',SqlStr)));
   If (CompareText(Copy(S,Length(S)-Length(FieldName),Length(FieldName)),FieldName)=0) and
      ((S[Length(S)-Length(FieldName)-1] in [' ','.',',']) or (Length(S)=Succ(Length(FieldName)))) then
    Break;
   SqlStr := Copy(SqlStr,Succ(Pos(',',SqlStr)),Length(SqlStr)-Pos(',',SqlStr));
   Inc(kk)
  End;
 Result := IntToStr(kk)
End;

function FieldPosNumber(FieldPosRes, OrderBy: String): String;
 var k : Integer;
begin
 Result := '';
 OrderBy := OrderBy+',';
 k := 0;
 While (Length(OrderBy)>0) do
  Begin
   Inc(k);
   If (Pos(' '+FieldPosRes+' ',Copy(OrderBy,1,Pred(Pos(',',OrderBy))))>0) then
    Begin
     If (Copy(OrderBy,Succ(Pos(',',OrderBy)),Length(OrderBy)-Pos(',',OrderBy))<>'') or (k>1) then
      Result := IntToStr(k)+': ';
     Break
    End;
   OrderBy := Copy(OrderBy,Succ(Pos(',',OrderBy)),Length(OrderBy)-Pos(',',OrderBy))
  End
end;

procedure wwDBGridCalcTitleAttributes(Sender: TObject;
  AFieldName, AFieldNameReal: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment; OrderBy: String);
 var FieldPosRes, Number : String;
begin
 FieldPosRes := FieldPos(AFieldNameReal,((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).SelectSQL);
 Number := FieldPosNumber(FieldPosRes, OrderBy);
 If (((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).Active) and
     (Pos(' '+FieldPosRes+' ',OrderBy)>0) then
  Begin
   If ((Sender as TwwDBGrid).UseTFields) then
    Begin
     If (Number='') or (Copy(((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel,1,Length(Number))<>Number) then
      Begin
       If (Pos(': ',((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel)>0) then
        ((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel := Copy(((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel,Pos(': ',((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel)+2,Length(((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel)-Pos(': ',((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel)-1);
       If (Number<>'') then
        ((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel := Number+((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel
      End
    End
   else
    If (Number='') or (Copy((Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel,1,Length(Number))<>Number) then
     Begin
      If (Pos(': ',(Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel)>0) then
       (Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel := Copy((Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel,Pos(': ',(Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel)+2,Length((Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel)-Pos(': ',(Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel)-1);
      If (Number<>'') then
       (Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel := Number+(Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel
     End
  End
 else
  If (Pos(': ',(Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel)>0) then
   Begin
     If ((Sender as TwwDBGrid).UseTFields) then
      ((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel := Copy(((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel,Pos(': ',((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel)+2,Length(((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel)-Pos(': ',((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName).DisplayLabel)-1)
     else
      (Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel := Copy((Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel,Pos(': ',(Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel)+2,Length((Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel)-Pos(': ',(Sender as TwwDBGrid).ColumnByName(AFieldName).DisplayLabel)-1)
   End
end;

procedure wwDBGridTitleButtonClick(Sender: TObject; AFieldName: String;
                                   var OrderBy : String; Ctrl : Boolean;
                                   sbApply, sbCancel : TSpeedButton;
                                   GenerateSelect : TObjProcedure);
 var BookMark : TBookMarkStr;
     Field : TField;
     FieldPosRes, PreStr, PastStr : String;
begin
 try
  Field := ((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).FieldByName(AFieldName)
 except
  exit
 end;
 If (AFieldName <> '') and (Field.FieldKind=fkData) then
  Begin
   If (sbApply<>nil) and (sbApply.Enabled) then
    Case MessageDlg('Имеются несохраненные изменения. Сохранить?', mtConfirmation, [mbYes,mbNo,mbCancel],0) of
     mrYes: sbApply.Click;
     mrNo: sbCancel.Click;
     mrCancel: Exit
    End;
   BookMark := ((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).BookMark;
   ((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).Close;
   FieldPosRes := FieldPos(AFieldName,((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).SelectSQL);
   If (Ctrl) then
    Begin
     If (Pos(' '+FieldPosRes+' ',OrderBy)>0) then
      Begin
       If (Pos(' '+FieldPosRes+' ',OrderBy)=1) then
        PreStr := ''
       else
        PreStr := Copy(OrderBy,1,Pos(' '+FieldPosRes+' ',OrderBy));
       OrderBy := Copy(OrderBy,Pos(' '+FieldPosRes+' ',OrderBy),Length(OrderBy)-Pos(' '+FieldPosRes+' ',OrderBy)+1);
       If (Pos(',',OrderBy)=0) then
        PastStr := ''
       else
        Begin
         PastStr := Copy(OrderBy,Pos(',',OrderBy),Length(OrderBy)-Pos(',',OrderBy)+1);
         OrderBy := Copy(OrderBy,1,Pos(',',OrderBy)-1)
        End;
       If (Pos('asc',OrderBy)>0) then
        OrderBy := ' '+FieldPosRes+' desc'
       else
        OrderBy := ' '+FieldPosRes+' asc';
       OrderBy := PreStr+OrderBy+PastStr
      End
     else
      Begin
       If (OrderBy<>'') then
        OrderBy := OrderBy+', '+FieldPosRes+' asc'
       else
        OrderBy := ' '+FieldPosRes+' asc';
      End
    end
   else
    Begin
     If (Pos(' '+FieldPosRes+' ',OrderBy)>0) then
      If (Pos('asc',OrderBy)>0) then
       OrderBy := ' '+FieldPosRes+' desc'
      else
       OrderBy := ' '+FieldPosRes+' asc'
     else
      OrderBy := ' '+FieldPosRes+' asc';
    End;
   GenerateSelect;
   ((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).Open;
   try
    ((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).BookMark := BookMark
   except
   end 
  End
end;

procedure wwDBGridCalcTitleImage(Sender: TObject; Field: TField;
                                 var TitleImageAttributes: TwwTitleImageAttributes;
                                 OrderBy : String);
var FieldPosRes, PartOrderBy : String;
begin
 TitleImageAttributes.ImageIndex := -1;
 FieldPosRes := FieldPos(Field.FieldName,((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).SelectSQL);
 If (Field <> nil) and (((Sender as TwwDBGrid).DataSource.DataSet as TIBDataSet).Active) and
    (Pos(' '+FieldPosRes+' ',OrderBy)>0) then
  Begin
   PartOrderBy := Copy(OrderBy,Pos(' '+FieldPosRes+' ',OrderBy),Length(OrderBy)-Pos(' '+FieldPosRes+' ',OrderBy)+1);
   If (Pos(',',PartOrderBy)<>0) then
    PartOrderBy := Copy(PartOrderBy,1,Pos(',',PartOrderBy)-1);
   If (Pos('asc',PartOrderBy)>0) then
    TitleImageAttributes.ImageIndex := 0
   else
    TitleImageAttributes.ImageIndex := 1
  End
end;

procedure ibdsAfterScroll(DataSet: TDataSet; Form: TForm; Suf: String);
 var ki : Integer;
begin
 If (Form<>nil) then
  For ki :=0 to Pred(Form.ComponentCount) do
   If (Form.Components[ki] is TSpeedButton) then
    If (Form.Components[ki].Name='sbFirst'+Suf) or (Form.Components[ki].Name='sbPrior'+Suf) then
     (Form.Components[ki] as TControl).Enabled := Not DataSet.Bof
    else
     If (Form.Components[ki].Name='sbNext'+Suf) or (Form.Components[ki].Name='sbLast'+Suf) then
      (Form.Components[ki] as TControl).Enabled := Not DataSet.EOF
     else
     If (Form.Components[ki].Name='sbDelete'+Suf) then
      (Form.Components[ki] as TControl).Enabled := Not (DataSet.Bof and DataSet.Eof)
end;

function GetStartDate(Number_Restart_Period: Integer; Date: TDateTime): TDate;
 var Year, Month, Day : Word;
begin
 Case Number_Restart_Period of
  0 : Result := 0;
  1 : Result := Date;
  2 : Result := Date-DayOfWeek(Date)+2;
//3 :
  4 : Begin
       DecodeDate(Date,Year,Month,Day);
       Result := EncodeDate(Year,Month,1)
      End;
//5 :
  6 : Begin
       DecodeDate(Date,Year,Month,Day);
       Result := EncodeDate(Year,1,1)
      End
 end
end;

function GetStopDate(Number_Restart_Period: Integer; Date: TDateTime): TDate;
 var Year, Month, Day : Word;
begin
 Case Number_Restart_Period of
  0 : Result := EncodeDate(2100,12,30);
  1 : Result := Date;
  2 : Result := Date+9-DayOfWeek(Date);
//3 :
  4 : Begin
       DecodeDate(Date,Year,Month,Day);
       If (Month=12) then
        Result := EncodeDate(Year+1,1,1)
       else
        Result := EncodeDate(Year,Month+1,1)
      End;
//5 :
  6 : Begin
       DecodeDate(Date,Year,Month,Day);
       Result := EncodeDate(Year+1,1,1)
      End
 end
end;

function ReplaceDateStr(InStr: String; Date: TDateTime): String;
Begin
 Result := ReplaceStr(InStr,'дд',FormatDateTime('dd',Date));
 Result := ReplaceStr(Result,'мм',FormatDateTime('mm',Date));
 Result := ReplaceStr(Result,'гггг',FormatDateTime('yyyy',Date));
 Result := ReplaceStr(Result,'гг',FormatDateTime('yy',Date))
End;

procedure wwDBGridCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 If NOT (Highlight) then
  If (Black) then
   Begin
    AFont.Style := [];
    ABrush.Color := clWindow;
    If (Field.DataSet.FieldByName('BLACK').AsInteger=1) then
     Begin
      AFont.Style := AFont.Style+StyleBlack;
      ABrush.Color := ColorBlack
     End;
    If (Field.DataSet.FieldByName('DOUBLE_SOSTAV').AsInteger=1) then
     AFont.Style := AFont.Style+StyleDouble
   End
end;

procedure wwDBGridCalcCellColors2(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 If NOT (Highlight) then
  If (Field.CanModify) then
   ABrush.Color := clWindow
  else
   ABrush.Color := ColorUnModify
end;

procedure wwDBGridCalcCellColors3(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 If NOT (Highlight) then
  If (Black) then
   Begin
    AFont.Style := [];
    ABrush.Color := clWindow;
    If (Field.DataSet.FieldByName('BLACK').AsInteger=1) then
     Begin
      AFont.Style := AFont.Style+StyleBlack;
      ABrush.Color := ColorBlack
     End
   End
end;

function GeneratePrice(BasePrice: Double; PriceFormula: String; Percent: Double; GetNSP: Integer; NSP: Double): Double;
begin
 Result := BasePrice*(1+Percent/100)*(1+GetNSP*NSP/100)
end;

procedure sbPrintClick(Sender: TSpeedButton; ibsAux: TIBSQL; ibDataSet : TIBDataSet);
 var PopUpMenu : TPopupMenu;
     MenuItem : TMenuItem;
     k, kk : Integer;
begin
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select R.ID, R.REPORT_NAME');
 ibsAux.SQL.Add('from REPORTS R, REPORTS_SHOING RS');
 ibsAux.SQL.Add('where (R.ID=RS.REPORT_ID) and (RS.FORM_NAME='#39+Copy(ibsAux.Owner.ClassName,2,Pred(Length(ibsAux.Owner.ClassName)))+'/'+Sender.Name+'/'+IntToStr(Sender.Tag)+#39')');
 PopUpMenu := TPopupMenu.Create(Sender);
 ibsAux.ExecQuery;
 While NOT (ibsAux.Eof) do
  Begin
   MenuItem := TMenuItem.Create(PopUpMenu);
   MenuItem.Caption := ibsAux.FieldByName('REPORT_NAME').AsString;
   MenuItem.Tag := ibsAux.FieldByName('ID').AsInteger;
   MenuItem.OnClick := frmMain.PopUpMenuItemClick;
   PopUpMenu.Items.Add(MenuItem);
   ibsAux.Next
  End;
 ibsAux.Close;
 MenuItem := TMenuItem.Create(PopUpMenu);
 MenuItem.Caption := '-';
 PopUpMenu.Items.Add(MenuItem);
 MenuItem := TMenuItem.Create(PopUpMenu);
 MenuItem.Caption := 'Создать новый';
 MenuItem.OnClick := frmMain.PopUpMenuItemClick;
 PopUpMenu.Items.Add(MenuItem);
 PopUpMenu.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);
 frmDM.frReport1.Dictionary.DisabledDatasets.Clear;
 frmDM.frReport1.Dictionary.DisabledDatasets.Add('ibdsReport');
 frmDM.frReport1.Dictionary.DisabledDatasets.Add('ibdsShow');
 For k := 0 to Pred(frmMain.ComponentCount) do
  If (frmMain.Components[k] is TForm) then
   If (ibDataset.Owner<>(frmMain.Components[k] as TForm)) then
    frmDM.frReport1.Dictionary.DisabledDatasets.Add((frmMain.Components[k] as TForm).Name+'*')
   else
     For kk := 0 to Pred((frmMain.Components[k] as TForm).ComponentCount) do
      If ((frmMain.Components[k] as TForm).Components[kk] is TDataSet) then
       If (((frmMain.Components[k] as TForm).Components[kk] as TDataSet).Name<>'ibdsReportHeader') and
          (((frmMain.Components[k] as TForm).Components[kk] as TDataSet).Name<>'ibdsMainFacturaList') and
          (((frmMain.Components[k] as TForm).Components[kk] as TDataSet).Name<>ibDataSet.Name) then
        frmDM.frReport1.Dictionary.DisabledDatasets.Add((frmMain.Components[k] as TForm).Name+'.'+((frmMain.Components[k] as TForm).Components[kk] as TDataSet).Name);
 frmDM.frDBDataSet1.DataSet := ibDataSet
end;

//-----------------------------------------------------------------------//
// Назначение : Возвращает сумму прописью
// Параметры :
// nSum : 		Сумма, которая будет переведена в пропись
// cTxt1 :  		Единица измерения, например: РУБЛЬ
// cTxt2 :  		Единица измерения, например: РУБЛЯ
// cTxt3 :  		Единица измерения, например: РУБЛЕЙ
// nTypeWrite : 	Род единицы измерения (1-муж, 2-жен)
//
function CurrencyToStr (nSum : Longint; cTxt1,cTxt2,cTxt3 : String; nTypeWrite : Byte) : String;
Var aTxtMeasure,aTxtThousand,aTxtMillion,aTxtBillion,aTxtTrillion : array [1..3] of String;
    aTxtHundred, aTxtTen, aTxtExclude : array [0..9] of String;
    aTxtOne : array [0..9,1..2] of String;
    aTxtSum, aTextInWords : array [1..5] of String;
    nPos, nPos2, nTypeAddition : Integer;
    cSum, cText : String;
 Begin
 //------------------------------------Определяем константы размерностей-------------------------
 //Массивы написания размерностей

 aTxtMeasure[1] := cTxt1;
 aTxtMeasure[2] := cTxt2;
 aTxtMeasure[3] := cTxt3;
 //Тысячи
 aTxtThousand[1] := 'тысяча';
 aTxtThousand[2] := 'тысячи';
 aTxtThousand[3] := 'тысяч';
 //Миллионы
 aTxtMillion[1] := 'миллион';
 aTxtMillion[2] := 'миллиона';
 aTxtMillion[3] := 'миллионов';
 //Миллиард
 aTxtBillion[1] := 'миллиард';
 aTxtBillion[2] := 'миллиарда';
 aTxtBillion[3] := 'миллиардов';
 //Триллионы
 aTxtTrillion[1] := 'триллион';
 aTxtTrillion[2] := 'триллиона';
 aTxtTrillion[3] := 'триллионов';

 //--------------------------------Определяем массивы написания чисел-------------------------
 //Массив значений 0-9 в сотнях
 aTxtHundred[0] := '';
 aTxtHundred[1] := 'сто';
 aTxtHundred[2] := 'двести';
 aTxtHundred[3] := 'триста';
 aTxtHundred[4] := 'четыреста';
 aTxtHundred[5] := 'пятьсот';
 aTxtHundred[6] := 'шестьсот';
 aTxtHundred[7] := 'семьсот';
 aTxtHundred[8] := 'восемьсот';
 aTxtHundred[9] := 'девятьсот';
 //Массив значений 0-9 в десятках
 aTxtTen[0] := '';
 aTxtTen[1] := '';
 aTxtTen[2] := 'двадцать';
 aTxtTen[3] := 'тридцать';
 aTxtTen[4] := 'сорок';
 aTxtTen[5] := 'пятьдесят';
 aTxtTen[6] := 'шестьдесят';
 aTxtTen[7] := 'семьдесят';
 aTxtTen[8] := 'восемьдесят';
 aTxtTen[9] := 'девяносто';
 //Массив значений чисел 10-19
 aTxtExclude[0] := 'десять';
 aTxtExclude[1] := 'одиннадцать';
 aTxtExclude[2] := 'двенадцать';
 aTxtExclude[3] := 'тринадцать';
 aTxtExclude[4] := 'четырнадцать';
 aTxtExclude[5] := 'пятнадцать';
 aTxtExclude[6] := 'шестнадцать';
 aTxtExclude[7] := 'семнадцать';
 aTxtExclude[8] := 'восемнадцать';
 aTxtExclude[9] := 'девятнадцать';
 //Массив значений 0-9 для единиц (два варианта для мужского и женского рода)
 aTxtOne[0,1]:= '';
 aTxtOne[1,1] := 'один';
 aTxtOne[2,1] := 'два';
 aTxtOne[3,1] := 'три';
 aTxtOne[4,1] := 'четыре';
 aTxtOne[5,1] := 'пять';
 aTxtOne[6,1] := 'шесть';
 aTxtOne[7,1] := 'семь';
 aTxtOne[8,1] := 'восемь';
 aTxtOne[9,1] := 'девять';
 aTxtOne[0,2] := '';
 aTxtOne[1,2] := 'одна';
 aTxtOne[2,2] := 'две';
 For nPos:=3 to 9 do aTxtOne[nPos,2] := aTxtOne[nPos,1];

 //Создаем массив трехзначных чисел по группам
 // 1 - единицы
 // 2 - тысячи
 // 3 - миллионы
 // 4 - миллиарды
 // 5 - триллионы
 // aTxtSum[5]
 //Переводим сумму в числовой тип данных
 cSum := IntToStr(nSum);
 //Разбиваем сумму на трехзначные части и передаем их в массив
 For nPos:=1 to 5 do
  For nPos2:=1 to 3 do
   If ((Pred(nPos)*3+nPos2)<=Length(cSum)) then
    aTxtSum[nPos] := cSum[Length(cSum)-(Pred(nPos)*3+Pred(nPos2))]+aTxtSum[nPos]
   Else
    aTxtSum[nPos] := '0'+aTxtSum[nPos];

 //Создаем массив прописи по трехзначным числам:
 // 1 - единицы
 // 2 - тысячи
 // 3 - миллионы
 // 4 - миллиарды
 // 5 - триллионы
 //Массив прописных чисел
 //aTextInWords(5)

 //Цикл по трехзначным группам
 For nPos:=1 to 5 do
  If (aTxtSum[nPos]='000') then
   aTextInWords[nPos] := ''
  Else
   Begin
    cText := aTxtHundred[StrToInt(aTxtSum[nPos][1])];
    If (aTxtSum[nPos][2]='1') then
     cText := cText+' '+aTxtExclude[StrToInt(aTxtSum[nPos][3])]
    Else
     Begin
      cText := cText+' '+aTxtTen[StrToInt(aTxtSum[nPos][2])];
      If (nPos=2) then
       cText := cText+' '+aTxtOne[StrToInt(aTxtSum[nPos][3]),2]
      Else
       cText := cText+' '+aTxtOne[StrToInt(aTxtSum[nPos][3]),nTypeWrite]
     End;
    //Определяем тип написания размерности:
    // 1 = "рубль"
    // 2 = "рубля"
    // 3 = "рублей"
    Case aTxtSum[nPos][3] of
     '1'     : nTypeAddition := 1;
     '2'..'4': nTypeAddition := 2;
    Else
     nTypeAddition := 3
    End;
    If (aTxtSum[nPos][2]='1') then nTypeAddition := 3;
    //Определяем прописной текст единицы измерения
    Case nPos of
     1 : cText := cText+' '+aTxtMeasure[nTypeAddition];
     2 : cText := cText+' '+aTxtThousand[nTypeAddition];
     3 : cText := cText+' '+aTxtMillion[nTypeAddition];
     4 : cText := cText+' '+aTxtBillion[nTypeAddition];
     5 : cText := cText+' '+aTxtTrillion[nTypeAddition]
    End;
    //Результат заносим в массив прописных чисел
    aTextInWords[nPos] := cText;
   End;
 //Собираем массив прописи в одну строку
 cText := '';
 For nPos:=5 downto 1 do
  Begin
   If (nPos=1) and (aTxtSum[nPos]='000') then
    aTextInWords[nPos] := aTextInWords[nPos]+aTxtMeasure[3];
   cText := cText+' '+aTextInWords[nPos]
  End;
 //Удаление лишних пробелов
 While (Pos('  ',cText)>0) do Delete(cText, Pos('  ',cText), 1);
 If (cText[1]=' ') then Delete(cText, 1, 1);
 //Первый символ строки - заглавная буква
 If (nSum=0) then
  Result := '00 '+aTxtMeasure[3]
 Else
  Begin
   cSum := AnsiUpperCase(cText[1]);
   Delete(cText, 1, 1);
   Result := cSum + cText
  End
End;

function GetMainCurrencyRate(ibsAux : TIBSQL; Enterprise_ID, Enterprise_Store_ID : String; CurrencyID : Integer; CurrencyRate : Double) : Double;
begin
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select ID, CURRENT_RATE from CURRENCY where (VALID=1) and (MAIN=1) and');
 ibsAux.SQL.Add('(ENTERPRISE_ID='+Enterprise_ID+') and');
 ibsAux.SQL.Add('(STORE_ID='+Enterprise_Store_ID+')');
 ibsAux.ExecQuery;
 If (ibsAux.FieldByName('CURRENT_RATE').IsNull) or (ibsAux.FieldByName('CURRENT_RATE').AsDouble=0) then
  Begin
   ibsAux.Close;
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select ID, CURRENT_RATE from CURRENCY where (VALID=1) and (MAIN=1) and');
   ibsAux.SQL.Add('(ENTERPRISE_ID='+Enterprise_ID+') and');
   ibsAux.SQL.Add('(STORE_ID=-1)');
   ibsAux.ExecQuery
  End;
 If (ibsAux.FieldByName('CURRENT_RATE').IsNull) or (ibsAux.FieldByName('CURRENT_RATE').AsDouble=0) then
  Begin
   ibsAux.Close;
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select ID, CURRENT_RATE from CURRENCY where (VALID=1) and (MAIN=1) and');
   ibsAux.SQL.Add('(ENTERPRISE_ID=-1) and (STORE_ID=-1)');
   ibsAux.ExecQuery
  End;
 If (ibsAux.FieldByName('ID').AsInteger=CurrencyID) then
  Result := 1
 else
  Result := ibsAux.FieldByName('CURRENT_RATE').AsFloat/CurrencyRate;
 ibsAux.Close
end;

procedure SetUserSelect(trMain : TIBTransaction; ibdsList : TIBDataSet;
                        ibsAux : TIBSQL; TableID, FormID : Integer; EnterpriseID : Largeint);
var BookMark : String;
begin
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('delete from USERS_SELECT where USER_NAME=current_user and TABLE_ID='+IntToStr(TableID));
 ibsAux.ExecQuery;
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('insert into USERS_SELECT (TABLE_ID, ITEM_ID, FORM_ID, ENTERPRISE_ID) values ('+IntToStr(TableID)+', :ITEM_ID,'+IntToStr(FormID)+','+IntToStr(EnterpriseID)+')');
 ibsAux.GenerateParamNames := True;
 BookMark := ibdsList.Bookmark;
 ibdsList.DisableControls;
 ibdsList.First;
 While NOT (ibdsList.Eof) do
  Begin
   If (ibdsList.FieldByName('CHECKED').AsInteger=1) then
    Begin
     ibsAux.ParamByName('ITEM_ID').AsInt64 := (ibdsList.FieldByName('ID') as TLargeintField).AsLargeInt;
     ibsAux.ExecQuery
    End; 
   ibdsList.Next
  End;
 try
  trMain.CommitRetaining
 except
 end;
 try
  ibdsList.Bookmark := BookMark
 finally
  ibdsList.EnableControls
 end
end;

procedure ReadUserSelect(ibdsList : TIBDataSet; ibsAux : TIBSQL; TableID, FormID : Integer;
                         EnterpriseID : Largeint);
var BookMark : String;
begin
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select US.ITEM_ID from USERS_SELECT US');
 ibsAux.SQL.Add('where (US.USER_NAME=current_user) and (US.FORM_ID=:FORM_ID) and (US.ENTERPRISE_ID=:ENTERPRISE_ID) and (US.TABLE_ID=:TABLE_ID)');
 ibsAux.GenerateParamNames := True;
 ibsAux.ParamByName('TABLE_ID').AsInteger := TableID;
 ibsAux.ParamByName('FORM_ID').AsInteger := FormID;
 ibsAux.ParamByName('ENTERPRISE_ID').AsInteger := EnterpriseID;
 ibsAux.ExecQuery;
 BookMark := ibdsList.Bookmark;
 ibdsList.DisableControls;
 While NOT (ibsAux.Eof) do
  Begin
   If (ibdsList.Locate('ID',ibsAux.FieldByName('ITEM_ID').AsString,[])) then
    Begin
     ibdsList.Edit;
     ibdsList.FieldByName('CHECKED').AsInteger := 1;
     ibdsList.Post
    End;
   ibsAux.Next
  End;
 ibsAux.Close;
 try
  ibdsList.Bookmark := BookMark
 finally
  ibdsList.EnableControls
 end
end;

procedure SafeFormPlace(Form: TForm);
 var R  : TRect;
     L,T: Integer;
begin
 If Not(SystemParametersInfo(SPI_GETWORKAREA,0,@R,0)) then
  R := Bounds(0, 0, Screen.Width, Screen.Height);
 L := Form.Left;
 If (L<R.Left) then
  L := R.Left
 else
  If ((L+Form.Width)>R.Right) then
   L := R.Right-Form.Width;
 T := Form.Top;
 If (T<R.Top) then
  T := R.Top
 else
  If ((T+Form.Height)>R.Bottom) then
   T := R.Bottom-Form.Height;
 Form.SetBounds(L,T,Form.Width,Form.Height)
end;

function MyCRC32(const X: String): Integer;
begin
 Result := 2147483647-Crc32_A(ForCRC(X));
end;

function MyBoolToInt(Bool : Boolean): Integer;
begin
 If (Bool) then
  Result := 1
 else
  Result := 0
end;

function ReplaceStr(const S, Srch, Replace: string): string;
var I: Integer;
    Source: string;
begin
 Source := S;
 Result := '';
 repeat
  I := Pos(Srch, Source);
  If (I>0) then
   Begin
    Result := Result + Copy(Source, 1, I - 1) + Replace;
    Source := Copy(Source, I + Length(Srch), MaxInt)
   End
  else
   Result := Result + Source;
 until (I<=0);
end;

procedure FlashMsg(const Title,Msg:AnsiString; TOut:Integer);
  {Dynamically create a timed message display form.}
var
  I,J:Integer;
begin
  with TForm.Create(Application) do begin
    Name := 'EFD_Msg';
    Caption := Title;
    Position := poScreenCenter;
    BorderStyle := bsDialog;
    FormStyle := fsStayOnTop;
    BorderIcons := [];
    Height := 64;
    I := Canvas.TextWidth(Msg);
    J := Canvas.TextHeight(Msg);
    Height := 5*J;
    Width := iMax(128,I + (I Shr 1));
    I := Left+((Width - I ) Shr 1);
    J := Top+J;
    Show;
    Canvas.Brush.Style := bsClear;
    Canvas.TextOut(I,J,Msg);
    I:=GetTickCount+DWord(TOut);
    repeat
      Application.ProcessMessages;
    until GetTickCount>DWord(I);
    Free;
  end;
end;

function  iMax(const I,J:Integer):Integer;
asm
  Cmp   EAX,EDX
  Jge   @Exit
  Mov   EAX,EDX
@Exit:
end;

procedure AnsiLCase(var Source:AnsiString;const Index,Count:Integer);
  {Lower case Count characters in Source starting at Index considering
   Windows locale.}
var
  I:Integer;
begin
  if (Index<1) or (Index>Length(Source)) then Exit;
  I:=Length(Source)-Index+1;
  if (Count>0) AND (I>Count) then I:=Count;
  UniqueString(Source);
  CharLowerBuff(@Source[Index],I);
end;

procedure GridDBTableViewCustomDrawColumnHeader(Sender: TcxGridDBTableView;
          ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo);
begin
 If (AViewInfo.Column.SortIndex<>-1) and
    (Pos(IntToStr(Succ(AViewInfo.Column.SortIndex))+': ',AViewInfo.Text)<>1) then
  AViewInfo.Text := IntToStr(Succ(AViewInfo.Column.SortIndex))+': '+AViewInfo.Text
end;

procedure GridDBTableViewCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
          AViewInfo: TcxGridTableDataCellViewInfo; DrawBlack: Boolean);
begin
 If NOT(Assigned((AViewInfo.Item.DataBinding as TcxGridItemDBDataBinding).Field)) or
    (AViewInfo.Item as TcxGridColumn).IsPreview then
  Exit;
 If NOT(AviewInfo.Selected) then
  If ((AViewInfo.Item.DataBinding as TcxGridItemDBDataBinding).Field.CanModify) and
     (Sender.OptionsData.Editing) and (AViewInfo.Item.Options.Editing)  then
   If (DrawBlack) then
    ACanvas.Brush.Color := ColorBlack
   else
    ACanvas.Brush.Color := clWindow
  else
   ACanvas.Brush.Color := ColorUnModify
end;

procedure LocaliseDevEx;
begin
//TcxGridPopupMenu
 cxSetResourceString(@cxSGridAlignCenter, 'Выровнять по центру');
 cxSetResourceString(@cxSGridAlignLeft, 'Выровнять по левому краю');
 cxSetResourceString(@cxSGridAlignmentSubMenu, 'Выравнивание');
 cxSetResourceString(@cxSGridAlignRight, 'Выровнять по правому краю');
 cxSetResourceString(@cxSGridAvgMenuItem, 'Среднее');
 cxSetResourceString(@cxSGridBestFit, 'Подогнать ширину');
 cxSetResourceString(@cxSGridBestFitAllColumns, 'Подогнать ширину (всех столбцов)');
 cxSetResourceString(@cxSGridCountMenuItem, 'Всего');
 cxSetResourceString(@cxSGridFieldChooser, 'Выбор столбцов');
 cxSetResourceString(@cxSGridGroupByBox, 'Панель группировки');
 cxSetResourceString(@cxSGridGroupByThisField, 'Группировать по этому столбцу');
 cxSetResourceString(@cxSGridMaxMenuItem, 'Максимальное значение');
 cxSetResourceString(@cxSGridMinMenuItem, 'Минимальное значение');
 cxSetResourceString(@cxSGridNone, 'Нет');
 cxSetResourceString(@cxSGridNoneMenuItem, 'Нет');
 cxSetResourceString(@cxSGridRemoveColumn, 'Удалить этот столбец');
 cxSetResourceString(@cxSGridShowFooter, 'Итог');
 cxSetResourceString(@cxSGridShowGroupFooter, 'Итоги групп');
 cxSetResourceString(@cxSGridSortColumnAsc, 'Сортировать по возрастанию');
 cxSetResourceString(@cxSGridSortColumnDesc, 'Сортировать по убыванию');
 cxSetResourceString(@cxSGridSumMenuItem, 'Сумма');
//Express QuantumGrid
 cxSetResourceString(@scxGridCustomizationFormBandsPageCaption, 'Группы');
 cxSetResourceString(@scxGridCustomizationFormCaption, 'Настройка');
 cxSetResourceString(@scxGridCustomizationFormColumnsPageCaption, 'Столбцы');
 cxSetResourceString(@scxGridDeletingConfirmationCaption, 'Подтверждение');
 cxSetResourceString(@scxGridDeletingFocusedConfirmationText, 'Удалить строку?');
 cxSetResourceString(@scxGridDeletingSelectedConfirmationText, 'Удалить все выделенные строки?');
 cxSetResourceString(@scxGridFilterCustomizeButtonCaption, 'Настроить...');
 cxSetResourceString(@scxGridFilterIsEmpty, 'Фильтр пуст');
 cxSetResourceString(@scxGridGroupByBoxCaption, 'Перетащите сюда заголовок столбца, чтобы сгруппировать по нему');
 cxSetResourceString(@scxGridRecursiveLevels, '');
 cxSetResourceString(@scxNotExistGridLevel, 'Нет активного уровня таблицы');
//Express DataController
 cxSetResourceString(@cxSFilterAndCaption, 'и');
 cxSetResourceString(@cxSFilterBlankCaption, 'пусто');
 cxSetResourceString(@cxSFilterBoxAllCaption, '(Все)');
 cxSetResourceString(@cxSFilterBoxBlanksCaption, '(Пустые)');
 cxSetResourceString(@cxSFilterBoxCustomCaption, '(Некоторые...)');
 cxSetResourceString(@cxSFilterBoxNonBlanksCaption, 'НеПустые');
 cxSetResourceString(@cxSFilterNotCaption, 'не');
 cxSetResourceString(@cxSFilterOperatorBeginsWith, 'начинается с');
 cxSetResourceString(@cxSFilterOperatorBetween, 'между');
 cxSetResourceString(@cxSFilterOperatorContains, 'содержит');
 cxSetResourceString(@cxSFilterOperatorDoesNotBeginWith, 'не начинается с');
 cxSetResourceString(@cxSFilterOperatorDoesNotContain, 'не содержит');
 cxSetResourceString(@cxSFilterOperatorDoesNotEndWith, 'не кончается');
 cxSetResourceString(@cxSFilterOperatorEndsWith, 'кончается');
 cxSetResourceString(@cxSFilterOperatorEqual, 'равно');
 cxSetResourceString(@cxSFilterOperatorGreater, 'больше чем');
 cxSetResourceString(@cxSFilterOperatorGreaterEqual, 'больше или равно чем');
 cxSetResourceString(@cxSFilterOperatorInList, 'в');
 cxSetResourceString(@cxSFilterOperatorIsNotNull, 'не пусто');
 cxSetResourceString(@cxSFilterOperatorIsNull, 'пусто');
 cxSetResourceString(@cxSFilterOperatorLastMonth, 'в прошлом месяце');
 cxSetResourceString(@cxSFilterOperatorLastWeek, 'на прошлой неделе');
 cxSetResourceString(@cxSFilterOperatorLastYear, 'в прошлом году');
 cxSetResourceString(@cxSFilterOperatorLess, 'меньше чем');
 cxSetResourceString(@cxSFilterOperatorLessEqual, 'меньше или равно чем');
 cxSetResourceString(@cxSFilterOperatorLike, 'подобно');
 cxSetResourceString(@cxSFilterOperatorNextMonth, 'в следующем месяце');
 cxSetResourceString(@cxSFilterOperatorNextWeek, 'на следующей неделе');
 cxSetResourceString(@cxSFilterOperatorNextYear, 'в следующем году');
 cxSetResourceString(@cxSFilterOperatorNotBetween, 'не между');
 cxSetResourceString(@cxSFilterOperatorNotEqual, 'не равно');
 cxSetResourceString(@cxSFilterOperatorNotInList, 'не в');
 cxSetResourceString(@cxSFilterOperatorNotLike, 'не подобно');
 cxSetResourceString(@cxSFilterOperatorThisMonth, 'в этом месяце');
 cxSetResourceString(@cxSFilterOperatorThisWeek, 'на этой неделе');
 cxSetResourceString(@cxSFilterOperatorThisYear, 'в этом году');
 cxSetResourceString(@cxSFilterOperatorToday, 'сегодня');
 cxSetResourceString(@cxSFilterOperatorTomorrow, 'завтра');
 cxSetResourceString(@cxSFilterOperatorYesterday, 'вчера');
 cxSetResourceString(@cxSFilterOrCaption, 'или');
//Express Editors
 cxSetResourceString(@cxSBlobButtonCancel, '&Отмена');
 cxSetResourceString(@cxSBlobButtonClose, '&Закрыть');
 cxSetResourceString(@cxSBlobMemo, '(ЗАМЕТКА)');
 cxSetResourceString(@cxSBlobMemoEmpty, '(заметка)');
 cxSetResourceString(@cxSBlobPicture, '(КАРТИНКА)');
 cxSetResourceString(@cxSBlobPictureEmpty, '(картинка)');
 cxSetResourceString(@cxSDateBOM, 'нм');
 cxSetResourceString(@cxSDateEOM, 'км');
 cxSetResourceString(@cxSDateError, 'Неверная дата');
 cxSetResourceString(@cxSDateFifth, 'пятый');
 cxSetResourceString(@cxSDateFirst, 'первый');
 cxSetResourceString(@cxSDateFourth, 'четвертый');
 cxSetResourceString(@cxSDateFriday, 'Пятница');
 cxSetResourceString(@cxSDateMonday, 'Понедельник');
 cxSetResourceString(@cxSDateNow, 'сейчас');
 cxSetResourceString(@cxSDatePopupClear, 'Очистить');
 cxSetResourceString(@cxSDatePopupToday, 'Сегодня');
 cxSetResourceString(@cxSDateSaturday, 'Суббота');
 cxSetResourceString(@cxSDateSecond, 'второй');
 cxSetResourceString(@cxSDateSeventh, 'седьмой');
 cxSetResourceString(@cxSDateSixth, 'шестой');
 cxSetResourceString(@cxSDateSunday, 'Воскресенье');
 cxSetResourceString(@cxSDateThird, 'третий');
 cxSetResourceString(@cxSDateThursday, 'Четверг');
 cxSetResourceString(@cxSDateToday, 'сегодня');
 cxSetResourceString(@cxSDateTomorrow, 'завтра');
 cxSetResourceString(@cxSDateTuesday, 'Вторник');
 cxSetResourceString(@cxSDateWednesday, 'Среда');
 cxSetResourceString(@cxSDateYesterday, 'вчера');
 cxSetResourceString(@cxSEditNumericValueConvertError, 'Невозможно преобразовать к цифровому виду');
 cxSetResourceString(@cxSEditPopupCircularReferencingError, 'Циклические ссылки недопустимы');
 cxSetResourceString(@cxSEditTimeConvertError, 'Не могу привести ко времени');
 cxSetResourceString(@cxSEditValidateErrorText, 'Неверное значение, используйте клавишу Esc, чтобы отменить изменения');
 cxSetResourceString(@cxSEditValueOutOfBounds, 'Величина выходит за границы');
 cxSetResourceString(@cxSMenuItemCaptionCopy, '&Копировать');
 cxSetResourceString(@cxSMenuItemCaptionCut, '&Вырезать');
 cxSetResourceString(@cxSMenuItemCaptionDelete, '&Удалить');
 cxSetResourceString(@cxSMenuItemCaptionLoad, '&Загрузить...');
 cxSetResourceString(@cxSMenuItemCaptionPaste, 'В&ставить');
 cxSetResourceString(@cxSMenuItemCaptionSave, 'Сохранить к&ак');
 cxSetResourceString(@scxRegExprCantUsePlusQuantifier, 'Знак ''+'' не может быть применен здесь');
 cxSetResourceString(@scxRegExprCantUseStarQuantifier, 'Знак ''*'' не может быть применен здесь');
 cxSetResourceString(@scxRegExprChar, 'Знак');
//string constants for filter controls and filter dialogs
 cxSetResourceString(@cxSFilterAddCondition, 'Добавить условие');
 cxSetResourceString(@cxSFilterAddGroup, 'Добавить &группу');
 cxSetResourceString(@cxSFilterBoolOperatorAnd, 'И');
 cxSetResourceString(@cxSFilterBoolOperatorNotAnd, 'НЕ И');
 cxSetResourceString(@cxSFilterBoolOperatorNotOr, 'НЕ ИЛИ');
 cxSetResourceString(@cxSFilterBoolOperatorOr, 'ИЛИ');
 cxSetResourceString(@cxSFilterClearAll, 'Очистить &все');
 cxSetResourceString(@cxSFilterControlDialogActionApplyCaption, 'Применить');
 cxSetResourceString(@cxSFilterControlDialogActionCancelCaption, 'Отменить');
 cxSetResourceString(@cxSFilterControlDialogActionOpenCaption, '&Открыть...');
 cxSetResourceString(@cxSFilterControlDialogActionSaveCaption, '&Сохранить как');
 cxSetResourceString(@cxSFilterControlDialogCaption, 'Построитель фильтра');
 cxSetResourceString(@cxSFilterControlDialogFileFilter, 'Фильтры (*.flt)|*.flt');
 cxSetResourceString(@cxSFilterControlDialogNewFile, 'новый.flt');
 cxSetResourceString(@cxSFilterControlDialogOpenDialogCaption, 'Открыть существующий фильтр');
 cxSetResourceString(@cxSFilterControlDialogSaveDialogCaption, 'Сохранить активный фильтр в файл');
 cxSetResourceString(@cxSFilterControlNullString, '<пусто>');
 cxSetResourceString(@cxSFilterDialogCaption, 'Специальный фильтр');
 cxSetResourceString(@cxSFilterDialogCharactersSeries, 'для пердставления любых последовательностей символов');
 cxSetResourceString(@cxSFilterDialogInvalidValue, 'Неверное значение');
 cxSetResourceString(@cxSFilterDialogOperationAnd, 'И');
 cxSetResourceString(@cxSFilterDialogOperationOr, 'ИЛИ');
 cxSetResourceString(@cxSFilterDialogRows, 'Показать записи где:');
 cxSetResourceString(@cxSFilterDialogSingleCharacter, 'для представления одного любого символа');
 cxSetResourceString(@cxSFilterDialogUse, 'Использовать');
 cxSetResourceString(@cxSFilterErrorBuilding, 'Невозможно построить фильтр');
 cxSetResourceString(@cxSFilterFooterAddCondition, 'нажмите, чтобы добавить новое условие');
 cxSetResourceString(@cxSFilterGroupCaption, 'применить для следующих условий');
 cxSetResourceString(@cxSFilterRemoveRow, '&Удалить строчку');
 cxSetResourceString(@cxSFilterRootButtonCaption, 'Фильтр');
 cxSetResourceString(@cxSFilterRootGroupCaption, '<корень>');
 cxSetResourceString(@cxSGridClearSorting, 'Снять сортировку');
 cxSetResourceString(@cxSGridRemoveThisGroupItem, 'Убрать группировку по этому столбцу');
// dxBars
 cxSetResourceString(@dxSBAR_LOOKUPDIALOGCAPTION, 'Выбор значения');
 cxSetResourceString(@dxSBAR_LOOKUPDIALOGOK, 'OK');
 cxSetResourceString(@dxSBAR_LOOKUPDIALOGCANCEL, 'Отмена');

 cxSetResourceString(@dxSBAR_DIALOGOK, 'OK');
 cxSetResourceString(@dxSBAR_DIALOGCANCEL, 'Отмена');
 cxSetResourceString(@dxSBAR_DATETODAY, 'Сегодня');
 cxSetResourceString(@dxSBAR_DATECLEAR, 'Очистить');
 cxSetResourceString(@dxSBAR_DATEDIALOGCAPTION, 'Выбор даты');
 cxSetResourceString(@dxSBAR_TREEVIEWDIALOGCAPTION, 'Выбор пункта');
 cxSetResourceString(@dxSBAR_IMAGEDIALOGCAPTION, 'Выбор');
 cxSetResourceString(@dxSBAR_IMAGEINDEX, '№ картинки');
 cxSetResourceString(@dxSBAR_IMAGETEXT, 'Текст');
 cxSetResourceString(@dxSBAR_PLACEFORCONTROL, 'Место для ');

 cxSetResourceString(@dxSBAR_WANTTORESETTOOLBAR, 'Вы уверены, что хотите отменить изменения панели ''%s'' ?');

 cxSetResourceString(@dxSBAR_CP_ADDSUBITEM, 'Добавить По&дпункт');
 cxSetResourceString(@dxSBAR_CP_ADDBUTTON, 'Добавить &Кнопку');
 cxSetResourceString(@dxSBAR_CP_ADDITEM, 'Добавить &Пункт');
 cxSetResourceString(@dxSBAR_CP_DELETEBAR, 'Удалить панель');

 cxSetResourceString(@dxSBAR_CP_RESET, '&Умолчания');
 cxSetResourceString(@dxSBAR_CP_DELETE, 'У&далить');
 cxSetResourceString(@dxSBAR_CP_NAME, '&Имя:');
 cxSetResourceString(@dxSBAR_CP_CAPTION, '&Текст:'); // is the same as dxSBAR_CP_NAME (at design-time)

 cxSetResourceString(@dxSBAR_ADDEX, 'Добавить...');
 cxSetResourceString(@dxSBAR_RENAMEEX, 'Переименовать...');
 cxSetResourceString(@dxSBAR_DELETE, 'Удалить');
 cxSetResourceString(@dxSBAR_CLEAR, 'Очистить');
 cxSetResourceString(@dxSBAR_VISIBLE, 'Видимый');
 cxSetResourceString(@dxSBAR_OK, 'OK');
 cxSetResourceString(@dxSBAR_CANCEL, 'Отмена');
 cxSetResourceString(@dxSBAR_INSERTEX, 'Вставить...');

 cxSetResourceString(@dxSBAR_TOOLBARNEWNAME , 'Custom ');
 cxSetResourceString(@dxSBAR_CATEGORYADD , 'Add Category');
 cxSetResourceString(@dxSBAR_CATEGORYINSERT , 'Insert Category');
 cxSetResourceString(@dxSBAR_CATEGORYRENAME , 'Rename Category');
 cxSetResourceString(@dxSBAR_TOOLBARADD , 'Add Toolbar');
 cxSetResourceString(@dxSBAR_TOOLBARRENAME , 'Rename Toolbar');
 cxSetResourceString(@dxSBAR_CATEGORYNAME , '&Category name:');
 cxSetResourceString(@dxSBAR_TOOLBARNAME , '&Toolbar name:');
 cxSetResourceString(@dxSBAR_CUSTOMIZINGFORM, 'Customization Form...');

 cxSetResourceString(@dxSBAR_MODIFY, '... modify');
 cxSetResourceString(@dxSBAR_PERSMENUSANDTOOLBARS, 'Personalized Menus and Toolbars  ');
 cxSetResourceString(@dxSBAR_MENUSSHOWRECENTITEMS, 'Me&nus show recently used commands first');
 cxSetResourceString(@dxSBAR_SHOWFULLMENUSAFTERDELAY, 'Show f&ull menus after a short delay');
 cxSetResourceString(@dxSBAR_RESETUSAGEDATA, '&Reset my usage data');

{ sdxBarDatePopupToday := cxGetResourceString(@dxSBAR_DATETODAY);
 sdxBarDatePopupClear := cxGetResourceString(@dxSBAR_DATECLEAR);}
end;

function GetNewID(ibsGen_ID: TIBSQL; Gen_Name: String): Integer;
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id('+Gen_Name+',1) from rdb$database');
 ibsGen_ID.ExecQuery;
 Result := ibsGen_ID.FieldByName('Gen_ID').AsInteger;
 ibsGen_ID.Close
end;

procedure PostIfNeeded(IBDataSet: TIBDataSet);
begin
 If (IBDataSet.State in [dsEdit,dsInsert]) then
  IBDataSet.Post
end;

procedure DeleteSet(DataSet: TIBDataSet; DataSetFieldPARENT_ID  : TField; ParentID : Integer);
 var BookMark : String;
begin
 DataSet.DisableControls;
 BookMark := DataSet.Bookmark;
 DataSet.First;
 While NOT(DataSet.Eof) do
  Begin
   If (DataSetFieldPARENT_ID.AsInteger=ParentID) then
    DataSet.Delete
   else
    DataSet.Next
  End;
 try
  DataSet.Bookmark := BookMark
 except
 end;
 DataSet.EnableControls
end;

function CreateSetLevelView(Grid: TcxGrid; DataSource: TDataSource): TcxGridDBTableView;
 var View : TcxGridDBTableView;

 function GetParentLevel(TopLevel : TcxGridLevel) : TcxGridLevel;
  Begin
   Result := TopLevel;
   While (Result.Count>0) do
    Result := Result.Items[0]
  End;

begin
 Result := TcxGridDBTableView(Grid.CreateView(TcxGridDBTableView));
 With Grid.Levels.Add do
  Begin
   Parent := GetParentLevel(Grid.Levels[0]);
   Caption := 'Состав комплекта';
   GridView := Result
  End;
 With Result do
  Begin
   DataController.DataSource := DataSource;
   DataController.DetailKeyFieldNames := 'PARENT_TYPE; PARENT_ID';
   DataController.KeyFieldNames := 'ID';
   DataController.MasterKeyFieldNames := 'RECORD_TYPE; ID';
   DataController.Options := [dcoAnsiSort,dcoAssignGroupingValues,dcoAssignMasterDetailKeys,dcoSaveExpanding,dcoSortByDisplayText];
   View := ((Result.Level as TcxGridLevel).Parent.GridView as TcxGridDBTableView);
   Filtering := View.Filtering;
   OptionsBehavior := View.OptionsBehavior;
   OptionsCustomize := View.OptionsCustomize;
   OptionsData := View.OptionsData;
   OptionsSelection := View.OptionsSelection;
   OptionsView := View.OptionsView;
   OptionsView.Footer := False;
   Styles := View.Styles;
//   DataController.OnDetailHasChildren := View.DataController.OnDetailHasChildren;
   OnCustomDrawCell := View.OnCustomDrawCell;
   OnCustomDrawColumnHeader := View.OnCustomDrawColumnHeader;
   OnEditing := View.OnEditing;
   OnKeyUp := View.OnKeyUp
  End
end;

function GetNeededLevel(DataSet: TIBDataSet): Integer;
var BookMrk, AuxBookMark: String;
    Cnt: Integer;
begin
 With DataSet do
  Begin
   DisableControls;
   Result := 1;
   BookMrk := Bookmark;
   DataSet.First;
   While NOT (DataSet.Eof) do
    Begin
     AuxBookMark := Bookmark;
     Cnt := 1;
     While (FieldByName('PARENT_TYPE').Value=1) do
      Begin;
       Locate('ID',FieldByName('PARENT_ID').Value,[]);
       Inc(Cnt)
      End;
     Bookmark := AuxBookMark;
     Result := Max(Result,Cnt);
     Next
    End;
   Bookmark := BookMrk;
   EnableControls
  End
end;

function CountLevels(Grid: TcxGrid): Integer;
var CurrentLevel: TcxGridLevel;
begin
 Result := 0;
 CurrentLevel := Grid.Levels[0];
 While (CurrentLevel.Count>0) do
  Begin
   Inc(Result);
   CurrentLevel := CurrentLevel.Items[0]
  End
end;

procedure CreateColumnByPattern(AView, PatternView: TcxGridDBTableView; FieldName: ShortString);
begin
 With AView.CreateColumn do
  Begin
   HeaderAlignmentHorz := taCenter;
   HeaderAlignmentVert := vaCenter;
   Width := PatternView.GetColumnByFieldName(FieldName).Width;
   Visible := PatternView.GetColumnByFieldName(FieldName).Visible;
   DataBinding.FieldName := FieldName
  End;
end;

procedure InsertSet(Database: TIBDataBase; Transaction: TIBTransaction; DataSet: TIBDataSet; ArticulID, StoreID: ShortString);
var ibsLocalAux: TIBSQL;
begin
 ibsLocalAux := TIBSQL.Create(Nil);
 ibsLocalAux.Database := Database;
 ibsLocalAux.Transaction := Transaction;
 ibsLocalAux.SQL.Clear;
 ibsLocalAux.SQL.Add('select A.ID, S.AMOUNT, G.PACK_VALUE from SETS S join ARTICULS A on');
 ibsLocalAux.SQL.Add('(S.SET_ARTICUL_ID='+ArticulID+') and (S.PART_ARTICUL_ID=A.ID) left outer join GOODS G on');
 ibsLocalAux.SQL.Add('(G.STORE_ID='+StoreID+') and (G.ARTICUL_ID=S.PART_ARTICUL_ID)');
 ibsLocalAux.ExecQuery;
 While NOT (ibsLocalAux.Eof) do
  Begin
   If (ibsLocalAux.FieldByName('AMOUNT').AsDouble>0) then
    Begin
     DataSet.Append;
     DataSet.FieldByName('ARTICUL_ID').AsInteger := ibsLocalAux.FieldByName('ID').AsInteger;
     DataSet.FieldByName('PACK_VALUE').AsFloat := ibsLocalAux.FieldByName('PACK_VALUE').AsDouble;
     If (ibsLocalAux.FieldByName('PACK_VALUE').AsDouble>ibsLocalAux.FieldByName('AMOUNT').AsDouble) or
        (ibsLocalAux.FieldByName('PACK_VALUE').AsDouble=0) then
      Begin
       DataSet.FieldByName('PACKS_AMOUNT').AsInteger := 0;
       DataSet.FieldByName('ITEMS_AMOUNT').AsFloat := ibsLocalAux.FieldByName('AMOUNT').AsDouble
      End
     else
      Begin
       DataSet.FieldByName('PACKS_AMOUNT').AsInteger := Trunc(ibsLocalAux.FieldByName('AMOUNT').AsDouble/ibsLocalAux.FieldByName('PACK_VALUE').AsDouble);
       DataSet.FieldByName('ITEMS_AMOUNT').AsFloat := ibsLocalAux.FieldByName('AMOUNT').AsDouble-
                                               DataSet.FieldByName('PACKS_AMOUNT').AsInteger*
                                               DataSet.FieldByName('PACK_VALUE').AsFloat
      End
    End;
   ibsLocalAux.Next
  End;
 PostIfNeeded(DataSet);
 ibsLocalAux.Close;
 ibsLocalAux.Free
end;

procedure CheckDataSet(DataSet: TIBDataSet);
 var BookMrk : String;
     Price : Double;
begin
 With DataSet do
  Begin
   DisableControls;
   BookMrk := Bookmark;
   First;
   While NOT (Eof) do
    Begin
     If (FindField('MADE_IN')<>nil) then
      If (FieldByName('MADE_IN').AsVariant=null) then
       Begin
        DataSet.Edit;
        Price := FieldByName('PRICE').AsFloat;
        FieldByName('MADE_IN').Value := '-';
        FieldByName('PRICE').AsFloat := Price
       End;
     If (FieldByName('PACKS_AMOUNT').AsVariant=null) then
      Begin
       Edit;
       FieldByName('PACKS_AMOUNT').AsInteger := 0
      End;
     If (FieldByName('PACK_VALUE').AsVariant=null) then
      Begin
       Edit;
       FieldByName('PACK_VALUE').AsFloat := 0
      End;
     If (FieldByName('ITEMS_AMOUNT').AsVariant=null) then
      Begin
       Edit;
       FieldByName('ITEMS_AMOUNT').AsFloat := 0
      End;
     If (FieldByName('PRICE').AsVariant=null) then
      Begin
       Edit;
       FieldByName('PRICE').Value := 0
      End;
     If (FieldByName('PACKS_AMOUNT').AsInteger*FieldByName('PACK_VALUE').AsFloat+FieldByName('ITEMS_AMOUNT').AsFloat=0) then
      Begin
       Delete;
       Prior
      End;
     Next
    End;
   try
    Bookmark := BookMrk;
   except
   end;
   EnableControls
  End
end;

procedure SetCRC32_Set(MainDataSet,SetDataSet: TIBDataSet; FieldName: String);
 var BookMrk, BookMrkSet : String;
     I, X: Integer;
     SetList : TStringList;
     StringForCRC : AnsiString;
begin
 With MainDataSet do
  Begin
   SetDataSet.DisableControls;
   BookMrkSet := SetDataSet.Bookmark;
   DisableControls;
   BookMrk := Bookmark;
   First;
   SetList := nil;
   While NOT (Eof) do
    Begin
     If (FindField('ITEM_TYPE')=nil) or (FindField('ITEM_TYPE').AsInteger=1) then
      Begin
       If (SetList=nil) then
        SetList := TStringList.Create;
       SetDataSet.First;
       While Not SetDataSet.Eof do
        Begin
         If (SetDataSet.FieldByName(FieldName).AsInteger=FieldByName('ID').AsInteger) then
          If (SetDataSet.FindField('ITEMS_AMOUNT')=nil) then
           SetList.Add(SetDataSet.FieldByName('ARTICUL_ID').AsString+';'+FormatFloat('#0.000',SetDataSet.FieldByName('AMOUNT').AsFloat))
          else
           SetList.Add(SetDataSet.FieldByName('ARTICUL_ID').AsString+';'+FormatFloat('#0.000',SetDataSet.FieldByName('ITEMS_AMOUNT').AsFloat+SetDataSet.FieldByName('PACKS_AMOUNT').AsInteger*SetDataSet.FieldByName('PACK_VALUE').AsFloat));
         SetDataSet.Next
        End;
       SetList.Sorted := True;
       StringForCRC := '';
       For I := 0 to Pred(SetList.Count) do
        StringForCRC := StringForCRC+SetList[I];
       SetList.Clear;
       SetList.Sorted := False;
       X := -1;
       X := CRC32(X,StringForCRC);
       X := NOT X;
       If (FieldByName('CRC32_SET').IsNull) or (FieldByName('CRC32_SET').AsInteger<>X) then
        Begin
         Edit;
         FieldByName('CRC32_SET').AsInteger := X;
         Post
        End 
      End;
     Next
    End;
   If (SetList<>nil) then
    FreeAndNil(SetList);
   Bookmark := BookMrk;
   EnableControls;
   SetDataSet.Bookmark := BookMrkSet;
   SetDataSet.EnableControls
  End
end;

procedure GenerateReasonsTree(ParentTree: TWinControl);

 function CreateNode(ParentNode: TTreeNode; Text: String; ReasonType,MovementType,PaymentType,InOut: ShortInt): TTreeNode;
  var R : PReasonsRec;
 begin
  If (ParentTree.ClassType=TRzTreeView) then
   Result := (ParentTree as TRzTreeView).Items.AddChild(ParentNode,Text);
  If (ParentTree.ClassType=TdxDBTreeViewEdit) then
   Result := (ParentTree as TdxDBTreeViewEdit).Items.AddChild(ParentNode,Text);
  New(R);
  Result.Data := R;
  R.ID := 0; 
  R^.ReasonType := ReasonType;
  R^.MovementType := MovementType;
  R^.PaymentType := PaymentType;
  R.InOut := InOut
 end;

 procedure CreateInOut(ParentNode: TTreeNode; ReasonType,MovementType,PaymentType: ShortInt);
 begin
  CreateNode(ParentNode,'Приход',ReasonType,MovementType,PaymentType,2);
  CreateNode(ParentNode,'Расход',ReasonType,MovementType,PaymentType,1)
 end;

 procedure CreatePaymentType(ParentNode: TTreeNode; ReasonType,MovementType: ShortInt);
 begin
  CreateInOut(CreateNode(ParentNode,'Наличные',ReasonType,MovementType,1,-1),ReasonType,MovementType,1);
  CreateInOut(CreateNode(ParentNode,'Безналичные',ReasonType,MovementType,2,-1),ReasonType,MovementType,2);
  CreateInOut(CreateNode(ParentNode,'Бартер',ReasonType,MovementType,3,-1),ReasonType,MovementType,3);
  CreateInOut(CreateNode(ParentNode,'Ценные бумаги',ReasonType,MovementType,4,-1),ReasonType,MovementType,4);
  CreateInOut(CreateNode(ParentNode,'Зачеты',ReasonType,MovementType,5,-1),ReasonType,MovementType,5)
 end;

 procedure CreateMovementType(ParentNode: TTreeNode; ReasonType: ShortInt);
 begin
  CreateInOut(CreateNode(ParentNode,'Движение товара',ReasonType,0,-1,-1),ReasonType,0,-1);
  CreatePaymentType(CreateNode(ParentNode,'Оплата/Расчеты',ReasonType,1,-1,-1),ReasonType,1);
 end;

var I: Integer;
begin
 If (ParentTree.ClassType=TRzTreeView) then
  (ParentTree as TRzTreeView).Items.Clear;
 If (ParentTree.ClassType=TdxDBTreeViewEdit) then
  Begin
   For I := 0 to Pred((ParentTree as TdxDBTreeViewEdit).Items.Count) do
    Dispose(PReasonsRec((ParentTree as TdxDBTreeViewEdit).Items[I].Data));
   (ParentTree as TdxDBTreeViewEdit).Items.Clear
  End;
 CreateMovementType(CreateNode(nil,'Расчеты по товару',0,-1,-1,-1),0);
 CreateMovementType(CreateNode(nil,'Расчеты по услугам',1,-1,-1,-1),1);
 CreateMovementType(CreateNode(nil,'Внутреннее перемещение',2,-1,-1,-1),2);
 CreateMovementType(CreateNode(nil,'Прочее',3,-1,-1,-1),3);
end;

procedure GenerateExtendedReasonsTree(ParentTreeEdit: TdxDBTreeViewEdit; DataSet: TDataSet);
var I: Integer;
    BookMrk: string;
    NewNode: TTreeNode;
    R : PReasonsRec;
begin
 GenerateReasonsTree(ParentTreeEdit);
 BookMrk := DataSet.Bookmark;
 DataSet.First;
 While Not (DataSet.Eof) do
  Begin
   For I := 0 to Pred(ParentTreeEdit.Items.Count) do
    If (PReasonsRec(ParentTreeEdit.Items[I].Data)^.ReasonType=DataSet.FieldByName('REASON_TYPE').AsInteger) and
       (PReasonsRec(ParentTreeEdit.Items[I].Data)^.MovementType=DataSet.FieldByName('MOVEMENT_TYPE_NEW').AsInteger) and
       (PReasonsRec(ParentTreeEdit.Items[I].Data)^.PaymentType=DataSet.FieldByName('PAYMENT_TYPE').AsInteger) and
       (PReasonsRec(ParentTreeEdit.Items[I].Data)^.InOut=DataSet.FieldByName('IN_OUT').AsInteger) then
     Begin
      NewNode := ParentTreeEdit.Items.AddChild(ParentTreeEdit.Items[I],DataSet.FieldByName('NAME').AsString);
      New(R);
      NewNode.Data := R;
      R^.ID := DataSet.FieldByName('ID').AsInteger;
      R^.ReasonType := DataSet.FieldByName('REASON_TYPE').AsInteger;
      R^.MovementType := DataSet.FieldByName('MOVEMENT_TYPE_NEW').AsInteger;
      R^.PaymentType := DataSet.FieldByName('PAYMENT_TYPE').AsInteger;
      R.InOut := DataSet.FieldByName('IN_OUT').AsInteger;
      Break
     End;
   DataSet.Next
  End;
 DataSet.Bookmark := BookMrk;
 I := 0;
 While I<ParentTreeEdit.Items.Count do
  If (PReasonsRec(ParentTreeEdit.Items[I].Data)^.ID=0) and NOT (ParentTreeEdit.Items[I].HasChildren) then
   Begin
    ParentTreeEdit.Items[I].Delete;
    I := 0
   End
  else
   Inc(I)
end;

function GetName(BlackKey : Boolean; Name : String; MaxLength : Integer): String;
 var Key256 : TKey256;
begin
 If (BlackKey) then
  GenerateLMDKey(Key256, SizeOf(Key256), '¬ЎлмyWІО=`бюЪБєyX†f0“Ъвљ845098yhfjbhJLUGLI,.,**&*^#')
 else
  GenerateLMDKey(Key256, SizeOf(Key256), 'W¬ЎwлмyWІО=`бюЪБєyX†f0“Ъвљ84509WyhfjbhJLUGLI,.*&^#');
 Result := Copy(RDLEncryptStringEx(Name, Key256, SizeOf(Key256), True),0,MaxLength)
end;

procedure CalcNameWithSpecs(DataSet: TDataSet);
begin
 DataSet.FieldByName('NAME_WITH_SPECS').AsString := DataSet.FieldByName('NAME').AsString;
 Case DataSet.FieldByName('REASON_TYPE').AsInteger of
   0: DataSet.FieldByName('NAME_WITH_SPECS').Value := DataSet.FieldByName('NAME_WITH_SPECS').AsString+' | Расчеты по товару';
   1: DataSet.FieldByName('NAME_WITH_SPECS').Value := DataSet.FieldByName('NAME_WITH_SPECS').AsString+' | Расчеты по услугам';
   2: DataSet.FieldByName('NAME_WITH_SPECS').Value := DataSet.FieldByName('NAME_WITH_SPECS').AsString+' | Внутреннее перемещение';
   3: DataSet.FieldByName('NAME_WITH_SPECS').Value := DataSet.FieldByName('NAME_WITH_SPECS').AsString+' | Прочее'
 end;
 Case DataSet.FieldByName('MOVEMENT_TYPE_NEW').AsInteger of
   0: DataSet.FieldByName('NAME_WITH_SPECS').Value := DataSet.FieldByName('NAME_WITH_SPECS').AsString+' | Движение товара';
   1: DataSet.FieldByName('NAME_WITH_SPECS').Value := DataSet.FieldByName('NAME_WITH_SPECS').AsString+' | Оплата/расчеты'
 end;
 Case DataSet.FieldByName('PAYMENT_TYPE').AsInteger of
   1: DataSet.FieldByName('NAME_WITH_SPECS').Value := DataSet.FieldByName('NAME_WITH_SPECS').AsString+' | Наличные';
   2: DataSet.FieldByName('NAME_WITH_SPECS').Value := DataSet.FieldByName('NAME_WITH_SPECS').AsString+' | Безналичные';
   3: DataSet.FieldByName('NAME_WITH_SPECS').Value := DataSet.FieldByName('NAME_WITH_SPECS').AsString+' | Бартер';
   4: DataSet.FieldByName('NAME_WITH_SPECS').Value := DataSet.FieldByName('NAME_WITH_SPECS').AsString+' | Ценные бумаги';
   5: DataSet.FieldByName('NAME_WITH_SPECS').Value := DataSet.FieldByName('NAME_WITH_SPECS').AsString+' | Зачеты'
 end
end;

function GetSetUpParam(Database: TIBDataBase; Transaction: TIBTransaction; EnterpriseID, StoreID, SetupName: ShortString) : Integer;
 var ibsLocalAux: TIBSQL;
begin
 ibsLocalAux := TIBSQL.Create(Nil);
 ibsLocalAux.Database := Database;
 ibsLocalAux.Transaction := Transaction;
 ibsLocalAux.SQL.Clear;
 ibsLocalAux.SQL.Add('select S.SETUP_VALUE from SETUP S where (S.ENTERPRISE_ID='#39+EnterpriseID+#39') and (S.STORE_ID='#39+StoreID+#39') and (S.SETUP_NAME='#39+SetupName+#39')');
 ibsLocalAux.ExecQuery;
 Result := ibsLocalAux.Fields[0].AsInteger;
 ibsLocalAux.Close;
 ibsLocalAux.Free
end;

end.


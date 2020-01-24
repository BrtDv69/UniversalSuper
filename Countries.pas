unit Countries;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, IBSQL, IBDatabase,
  Db, IBCustomDataSet, ImgList, StdCtrls, ComCtrls, wwriched;

type
  TfrmCountries = class(TfrmLike)
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    Panel4: TPanel;
    sbCancelCountries: TSpeedButton;
    sbApplyCountries: TSpeedButton;
    sbDeleteCountries: TSpeedButton;
    sbAddCountries: TSpeedButton;
    sbLastCountries: TSpeedButton;
    sbNextCountries: TSpeedButton;
    sbPriorCountries: TSpeedButton;
    sbFirstCountries: TSpeedButton;
    SpeedButton9: TSpeedButton;
    sbCloseCountries: TSpeedButton;
    ibsWhite: TIBSQL;
    ibdsMainCountries: TIBDataSet;
    dsMainCountries: TDataSource;
    ibdsMainCountriesID: TLargeintField;
    ibdsMainCountriesKOD: TIBStringField;
    ibdsMainCountriesNAME: TIBStringField;
    ibdsMainCountriesVALID: TIntegerField;
    ibdsMainCountriesCOMMENTS: TIBStringField;
    wwDBRichEdit1: TwwDBRichEdit;
    procedure FormCreate(Sender: TObject);
    procedure sbCloseCountriesClick(Sender: TObject);
    procedure ibdsMainCountriesAfterScroll(DataSet: TDataSet);
    procedure sbFirstCountriesClick(Sender: TObject);
    procedure sbPriorCountriesClick(Sender: TObject);
    procedure sbNextCountriesClick(Sender: TObject);
    procedure sbLastCountriesClick(Sender: TObject);
    procedure sbAddCountriesClick(Sender: TObject);
    procedure sbDeleteCountriesClick(Sender: TObject);
    procedure sbCancelCountriesClick(Sender: TObject);
    procedure sbApplyCountriesClick(Sender: TObject);
    procedure dsMainCountriesStateChange(Sender: TObject);
    procedure ibdsMainCountriesNewRecord(DataSet: TDataSet);
    procedure wwDBGrid1CalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure ibdsMainCountriesUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
  private
    { Private declarations }
    function GetWhereCountries: String;
    procedure GenerateSelectMainCountries;
    procedure StteChange(Enabled: Boolean);
  public
    { Public declarations }
  end;

var
  frmCountries: TfrmCountries;

implementation

uses DM, Misk;

{$R *.DFM}

var
  OrderByCountries    : String = ' 3 asc';
  WhereSqlCountries   : String = '';

procedure TfrmCountries.FormCreate(Sender: TObject);
begin
 FName := 'Страны';
 inherited;
 If NOT (Black) then
  ibdsMainCountries.Database := frmDM.dbWhite;
 GenerateSelectMainCountries;
 trMain.StartTransaction;
 ibdsMainCountries.Open
end;

procedure TfrmCountries.sbCloseCountriesClick(Sender: TObject);
begin
 Close;
 frmCountries := nil
end;

procedure TfrmCountries.ibdsMainCountriesAfterScroll(DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmCountries,'Countries')
end;

procedure TfrmCountries.sbFirstCountriesClick(Sender: TObject);
begin
 ibdsMainCountries.First
end;

procedure TfrmCountries.sbPriorCountriesClick(Sender: TObject);
begin
 ibdsMainCountries.Prior
end;

procedure TfrmCountries.sbNextCountriesClick(Sender: TObject);
begin
 ibdsMainCountries.Next
end;

procedure TfrmCountries.sbLastCountriesClick(Sender: TObject);
begin
 ibdsMainCountries.Last
end;

procedure TfrmCountries.sbAddCountriesClick(Sender: TObject);
begin
 ibdsMainCountries.Append
end;

procedure TfrmCountries.sbDeleteCountriesClick(Sender: TObject);
begin
 ibdsMainCountries.Delete;
 StteChange(True)
end;

procedure TfrmCountries.sbCancelCountriesClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainCountries.Bookmark;
 ibdsMainCountries.CancelUpdates;
 StteChange(False);
 try
  ibdsMainCountries.Bookmark := BookMark
 except
 end
end;

procedure TfrmCountries.sbApplyCountriesClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainCountries.Bookmark;
 try
  ibdsMainCountries.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange(False)
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 try
  ibdsMainCountries.Bookmark := BookMark
 except
 end
end;

procedure TfrmCountries.dsMainCountriesStateChange(Sender: TObject);
begin
 If (Sender as TDataSource).State in [dsEdit,dsInsert] then
  StteChange(True)
 else
  StteChange(((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending)
end;

procedure TfrmCountries.ibdsMainCountriesNewRecord(DataSet: TDataSet);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_COUNTRIES,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainCountriesID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibsGen_ID.Close;
 ibdsMainCountriesVALID.Value := 1
end;

procedure TfrmCountries.wwDBGrid1CalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByCountries)
end;

procedure TfrmCountries.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 wwDBGridTitleButtonClick(Sender, AFieldName, OrderByCountries, (GetKeyState(VK_CONTROL)<0),
                          sbApplyCountries, sbCancelCountries, GenerateSelectMainCountries)
end;

function TfrmCountries.GetWhereCountries: String;
begin
 Result := ''
end;

procedure TfrmCountries.GenerateSelectMainCountries;
begin
 WhereSqlCountries := GetWhereCountries;
 ibdsMainCountries.SelectSQL.Clear;
 ibdsMainCountries.SelectSQL.Add('select C.ID, C.KOD, C.NAME, C.VALID, C.COMMENTS');
 ibdsMainCountries.SelectSQL.Add('from COUNTRIES C');
 ibdsMainCountries.SelectSQL.Add(WhereSqlCountries);
 ibdsMainCountries.SelectSQL.Add('order by'+OrderByCountries)
end;

procedure TfrmCountries.ibdsMainCountriesUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 UpdateAction := uaApply;
 If (Black) then
  Begin
   ibsWhite.SQL.Clear;
   Case UpdateKind of
    ukInsert: ibsWhite.SQL.AddStrings(ibdsMainCountries.InsertSQL);
    ukModify: ibsWhite.SQL.AddStrings(ibdsMainCountries.ModifySQL);
    ukDelete: ibsWhite.SQL.AddStrings(ibdsMainCountries.DeleteSQL)
   end;
   ibsWhite.GenerateParamNames := True;
   If (UpdateKind in [ukInsert, ukModify]) then
    Begin
     ibsWhite.ParamByName('KOD').Value := ibdsMainCountriesKOD.AsVariant;
     ibsWhite.ParamByName('NAME').Value := ibdsMainCountriesNAME.AsVariant;
     ibsWhite.ParamByName('VALID').Value := ibdsMainCountriesVALID.AsVariant;
     ibsWhite.ParamByName('COMMENTS').Value := ibdsMainCountriesCOMMENTS.AsVariant
    End;
   If (UpdateKind=ukInsert) then
    ibsWhite.ParamByName('ID').AsInt64 := ibdsMainCountriesID.Value
   else
    ibsWhite.ParamByName('OLD_ID').AsString := IntToStr(ibdsMainCountriesID.OldValue);
   ibsWhite.ExecQuery
  End
end;

procedure TfrmCountries.StteChange(Enabled: Boolean);
begin
 If (frmCountries<>nil) then
  Begin
   sbApplyCountries.Enabled := Enabled;
   sbCancelCountries.Enabled := Enabled
  End
end;

procedure TfrmCountries.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 If (not Highlight) and ((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('Valid').AsInteger=0) then
  ABrush.Color := clSilver
end;

end.

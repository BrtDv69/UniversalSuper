unit ContragBalans;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, IBSQL, IBDatabase, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  Db, IBCustomDataSet, StdCtrls, Mask, wwdbedit, wwcheckbox,
  wwdbdatetimepicker, wwdblook, wwclearbuttongroup, wwradiogroup;

type
  TfrmContragSaldo = class(TfrmLike)
    Panel4: TPanel;
    sbLastContragSaldo: TSpeedButton;
    sbNextContragSaldo: TSpeedButton;
    sbPriorContragSaldo: TSpeedButton;
    sbFirstContragSaldo: TSpeedButton;
    sbCloseContragSaldo: TSpeedButton;
    sbRefreshContragSaldo: TSpeedButton;
    ibdsMainContractors: TIBDataSet;
    ibdsMainContractorsCONTRACTOR_NAME: TIBStringField;
    ibdsMainContractorsCURRENCY_NAME: TIBStringField;
    ibdsMainContractorsSALDO: TFloatField;
    ibdsMainContractorsSALDO_REAL: TFloatField;
    dsMainContractors: TDataSource;
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    Panel2: TPanel;
    cbContractorType: TwwCheckBox;
    cbType: TwwCheckBox;
    edType: TwwDBLookupCombo;
    edContractorType: TwwDBLookupCombo;
    Label42: TLabel;
    deStartDate: TwwDBDateTimePicker;
    edContractor: TwwDBEdit;
    cbContractor: TwwCheckBox;
    ibdsFilterTypes: TIBDataSet;
    ibdsFilterTypesID: TLargeintField;
    ibdsFilterTypesNAME: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure sbRefreshContragSaldoClick(Sender: TObject);
    procedure ibdsMainContractorsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure sbCloseContragSaldoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1CalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure wwDBGrid1CalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure wwDBGrid1CreateHintWindow(Sender: TObject;
      HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
      var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
      var DoDefault: Boolean);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure pnlFilterMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sbFirstContragSaldoClick(Sender: TObject);
    procedure sbPriorContragSaldoClick(Sender: TObject);
    procedure sbNextContragSaldoClick(Sender: TObject);
    procedure sbLastContragSaldoClick(Sender: TObject);
    procedure ibdsMainContractorsAfterScroll(DataSet: TDataSet);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    function GetWhereContractors: String;
    procedure GenerateSelectMainContractors;
  public
    { Public declarations }
  end;

var
  frmContragSaldo: TfrmContragSaldo;

implementation

uses DM, Misk;

{$R *.DFM}

var
  OrderByContractors  : String = ' 1 asc, 2 asc';
  WhereSqlContractors : String = '';

function TfrmContragSaldo.GetWhereContractors: String;
begin
 Result := '';
 If (cbContractor.Checked) and (edContractor.Text<>'') then
  Result := Result+'and (C.NAME like '#39+edContractor.Text+#39') ';
 If (cbType.Checked) then
  Result := Result+'and exists(select * from INVOICE_HEADER IH where (IH.INVOICE_SETUP_ID='+ibdsFilterTypesID.AsString+') and (CS.CONTRACTOR_ID=IH.CONTRACTOR_ID)) '
end;

procedure TfrmContragSaldo.GenerateSelectMainContractors;
begin
 WhereSqlContractors := GetWhereContractors;
 ibdsMainContractors.SelectSQL.Clear;
 If (deStartDate.Date=Date) then
  Begin
   ibdsMainContractors.SelectSQL.Add('select C.NAME CONTRACTOR_NAME, CUR.SYMBOL CURRENCY_NAME,');
   ibdsMainContractors.SelectSQL.Add('CS.SALDO, CS.SALDO_REAL');
   ibdsMainContractors.SelectSQL.Add('from CONTRACTORS_SALDO CS, CONTRACTORS C, CURRENCY CUR');
   ibdsMainContractors.SelectSQL.Add('where (CS.CONTRACTOR_ID=C.ID) and (CUR.ID=CS.CURRENCY_ID) and');
   ibdsMainContractors.SelectSQL.Add('(CS.CONTRACTOR_ID>0) and (NOT(CS.SALDO=0) or NOT(CS.SALDO_REAL=0))');
   ibdsMainContractors.SelectSQL.Add(WhereSqlContractors);
   frmContragSaldo.Caption := 'Сальдо контрагентов - текущее'
  End
 else
  Begin
   ibdsMainContractors.SelectSQL.Add('select C.NAME CONTRACTOR_NAME, CUR.SYMBOL CURRENCY_NAME,');
   ibdsMainContractors.SelectSQL.Add('SUM(CS.SALDO) SALDO, SUM(CS.SALDO_REAL) SALDO_REAL');
   ibdsMainContractors.SelectSQL.Add('from GET_CONTRACTORS_SALDO('#39+FormatDateTime('dd.mm.yyyy',deStartDate.Date)+#39') CS, CONTRACTORS C, CURRENCY CUR');
   ibdsMainContractors.SelectSQL.Add('where (CS.CONTRACTOR_ID=C.ID) and (CUR.ID=CS.CURRENCY_ID)');
   ibdsMainContractors.SelectSQL.Add(WhereSqlContractors);
   ibdsMainContractors.SelectSQL.Add('group by C.NAME, CUR.SYMBOL');
   frmContragSaldo.Caption := 'Сальдо контрагентов на '+FormatDateTime('dd.mm.yyyy г.',deStartDate.Date)
  End;
 ibdsMainContractors.SelectSQL.Add('order by'+OrderByContractors)
end;

procedure TfrmContragSaldo.FormCreate(Sender: TObject);
 var ki : Integer;
begin
 FName := 'Сальдо контрагентов';
 inherited;
 If NOT (Black) then
  Begin
   ki := 0;
   While (ki<=Pred(ComponentCount)) do
    Begin
     If (Components[ki] is TIBDataSet) and
        ((Components[ki] as TIBDataSet).Database=frmDM.dbMain) then
      (Components[ki] as TIBDataSet).Database := frmDM.dbWhite;
     If (Components[ki] is TIBSQL) and
        ((Components[ki] as TIBSQL).Database=frmDM.dbMain) then
      (Components[ki] as TIBSQL).Database := frmDM.dbWhite;
     If (Components[ki].Tag=99) then
      Components[ki].Free
     else
      Inc(ki)
    End
  End;
 trMain.StartTransaction;
 deStartDate.Date := Date;
 GenerateSelectMainContractors;
 ibdsFilterTypes.Open;
 ibdsMainContractors.Open
end;

procedure TfrmContragSaldo.sbRefreshContragSaldoClick(Sender: TObject);
 var Name : String;
begin
 ibdsMainContractors.DisableControls;
 Cursor := crHourGlass;
 Name := ibdsMainContractorsCONTRACTOR_NAME.AsString;
 ibdsMainContractors.Close;
 GenerateSelectMainContractors;
 try
  ibdsMainContractors.Open;
  ibdsMainContractors.Locate('CONTRACTOR_NAME',NAME,[]);
 finally
  ibdsMainContractors.EnableControls;
  Cursor := crDefault;
  wwDBGrid1.SelectedList.Clear
 end
end;

procedure TfrmContragSaldo.ibdsMainContractorsFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
 Accept := (Trunc(Abs(ibdsMainContractorsSALDO.AsFloat*10000))>0) or (Trunc(Abs(ibdsMainContractorsSALDO_REAL.AsFloat*10000))>0)
end;

procedure TfrmContragSaldo.sbCloseContragSaldoClick(Sender: TObject);
begin
 Close
end;

procedure TfrmContragSaldo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 inherited;
 frmContragSaldo := nil
end;

procedure TfrmContragSaldo.wwDBGrid1CalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
 wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByContractors)
end;

procedure TfrmContragSaldo.wwDBGrid1CalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByContractors)
end;

procedure TfrmContragSaldo.wwDBGrid1CreateHintWindow(Sender: TObject;
  HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
  var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
  var DoDefault: Boolean);
begin
 WordWrap := True;
 if (AField is TBlobField) then
    MaxWidth := 200;
 MaxHeight := Screen.Height
end;

procedure TfrmContragSaldo.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 wwDBGridTitleButtonClick(Sender, AFieldName, OrderByContractors, (GetKeyState(VK_CONTROL)<0),
                          nil, nil, GenerateSelectMainContractors);
end;

procedure TfrmContragSaldo.pnlFilterMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 const SC_DRAGMOVE = $F012;
begin
 ReleaseCapture;
 (Sender as TPanel).Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
end;

procedure TfrmContragSaldo.sbFirstContragSaldoClick(Sender: TObject);
begin
 ibdsMainContractors.First
end;

procedure TfrmContragSaldo.sbPriorContragSaldoClick(Sender: TObject);
begin
 ibdsMainContractors.Prior
end;

procedure TfrmContragSaldo.sbNextContragSaldoClick(Sender: TObject);
begin
 ibdsMainContractors.Next
end;

procedure TfrmContragSaldo.sbLastContragSaldoClick(Sender: TObject);
begin
  ibdsMainContractors.Last
end;

procedure TfrmContragSaldo.ibdsMainContractorsAfterScroll(
  DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet, DataSet.Owner as TForm,'ContragSaldo');
end;

procedure TfrmContragSaldo.wwDBGrid1DblClick(Sender: TObject);
 var OldDecimalSeparator : Char;
begin
 OldDecimalSeparator := DecimalSeparator;
 DecimalSeparator := '.';
 wwDBGrid1.ExportOptions.Save;
 DecimalSeparator := OldDecimalSeparator
end;

end.

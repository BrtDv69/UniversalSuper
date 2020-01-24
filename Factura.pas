unit Factura;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, IBSQL, IBDatabase, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  Db, IBCustomDataSet, wwdbdatetimepicker, Wwdbspin, StdCtrls, Mask,
  wwdbedit, FR_Class, FR_DSet, FR_DBSet, FR_Desgn, Math, Menus, wwcheckbox,
  Wwdotdot, Wwdbcomb;

type
  TfrmFactura = class(TfrmLike)
    Panel4: TPanel;
    sbCancelFacturaList: TSpeedButton;
    sbApplyFacturaList: TSpeedButton;
    sbDeleteFacturaList: TSpeedButton;
    sbAddFacturaList: TSpeedButton;
    sbLastFacturaList: TSpeedButton;
    sbNextFacturaList: TSpeedButton;
    sbPriorFacturaList: TSpeedButton;
    sbFirstFacturaList: TSpeedButton;
    sbFilterFacturaList: TSpeedButton;
    SpeedButton10: TSpeedButton;
    sbRefreashFacturaList: TSpeedButton;
    sbPrintFacturaList: TSpeedButton;
    trLock: TIBTransaction;
    ibdsMainFacturaList: TIBDataSet;
    dsMainFacturaList: TDataSource;
    ibsWhite: TIBSQL;
    ibsNumb: TIBSQL;
    ibdsMainFacturaListID: TLargeintField;
    ibdsMainFacturaListPARENT_TYPE: TIntegerField;
    ibdsMainFacturaListPARENT_ID: TLargeintField;
    ibdsMainFacturaListFACTURA_DATE: TDateField;
    ibdsMainFacturaListNUMBER_STR: TIBStringField;
    ibdsMainFacturaListAMOUNT: TFloatField;
    ibdsMainFacturaListTYPE_NAME: TStringField;
    pnlFactura: TPanel;
    Label6: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    sbApplyFactura: TSpeedButton;
    sbCancelFactura: TSpeedButton;
    Label13: TLabel;
    dbePrefix: TwwDBEdit;
    spNumber: TwwDBSpinEdit;
    dbeSuffix: TwwDBEdit;
    dtDate: TwwDBDateTimePicker;
    Label1: TLabel;
    dbeAmount: TwwDBEdit;
    pnlMessage: TPanel;
    ibdsMainFacturaListNUMBER_PREFIX: TIBStringField;
    ibdsMainFacturaListNUMBER: TIntegerField;
    ibdsMainFacturaListNUMBER_SUFFIX: TIBStringField;
    ibdsReportHeader: TIBDataSet;
    ibdsReportHeaderENTERPRISE_NAME: TIBStringField;
    ibdsReportHeaderADDRESS: TIBStringField;
    ibdsReportHeaderPHONE: TIBStringField;
    ibdsReportHeaderNUMBER_STR: TIBStringField;
    ibdsReportHeaderPRIMARY_DATE: TDateField;
    ibdsReportHeaderCONTRACTOR_NAME: TIBStringField;
    ibdsReportHeaderMASTER_NAME: TIBStringField;
    ibdsReportHeaderCURRENCY_NAME: TIBStringField;
    ibdsReportHeaderDECIMALS_IN: TSmallintField;
    ibdsReportHeaderDECIMALS_OUT: TSmallintField;
    ibdsReportHeaderSYMBOL: TIBStringField;
    ibdsReportHeaderNAME1: TIBStringField;
    ibdsReportHeaderNAME3: TIBStringField;
    ibdsReportHeaderNAME5: TIBStringField;
    ibdsReportHeaderNAME001: TIBStringField;
    ibdsReportHeaderCURRENCY_RATE: TFloatField;
    ibdsReportHeaderSETUP_NAME: TIBStringField;
    ibdsReportHeaderTAKE_NSP: TIntegerField;
    ibdsReportHeaderPRIVATE: TIntegerField;
    ibdsReportHeaderSTORE_NAME: TIBStringField;
    ibdsReportHeaderENTERPRISE_INN: TIBStringField;
    ibdsReportHeaderCONTRACTOR_ADDRESS: TIBStringField;
    ibdsReportHeaderCONTRACTOR_INN: TIBStringField;
    ibdsReportHeaderAMOUNT: TFloatField;
    ibdsReportHeaderFACTURA_NUMBER: TStringField;
    ibdsReportHeaderFACTURA_DATE: TDateField;
    ibdsReportBody: TIBDataSet;
    ibdsReportBodyARTICUL_NAME: TIBStringField;
    ibdsReportBodyMADE_IN: TIBStringField;
    ibdsReportBodyUNITS: TIBStringField;
    ibdsReportBodyAMOUNT: TFloatField;
    ibdsReportBodyPRICE: TFloatField;
    ibdsReportBodyNDS: TFloatField;
    ibdsReportBodyNSP: TFloatField;
    ibdsReportBodyDECLARATION_NUMBER: TIBStringField;
    ibdsReportBodyCOUNTRY_ID: TLargeintField;
    ibdsReportBodyNDS_AMOUNT: TFloatField;
    ibdsReportBodyNSP_AMOUNT: TFloatField;
    ibdsReportBodyCOUNTRY_NAME: TStringField;
    ibdsReportBodyDECLARATION_NUMBER_FULL: TStringField;
    ibdsReportHeaderPRIMARY_TOVAR_OUTCOME_HEADER_ID: TLargeintField;
    dsReportHeader: TDataSource;
    ibsAux: TIBSQL;
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    pnlMomInfo: TPanel;
    ibdsMainFacturaListCONTRACTOR_NAME: TIBStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    pnlText: TPanel;
    lblFilter: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    pnlFilter: TPanel;
    Label42: TLabel;
    sbReFilter: TSpeedButton;
    deDateStart: TwwDBDateTimePicker;
    deDateStop: TwwDBDateTimePicker;
    cbPeriod: TwwCheckBox;
    ibdsReportHeaderCONTRACTOR_UR_ADDRESS: TIBStringField;
    ibdsMainFacturaListINN: TIBStringField;
    ibdsMainFacturaListPAYMENT_DATE: TDateField;
    ibdsMainFacturaListPAYMENT_DATE_STR: TStringField;
    ibdsMainFacturaListTAKE_NSP: TIntegerField;
    ibdsMainFacturaListPRIVATE: TIntegerField;
    ibdsMainFacturaListNSP_AMOUNT: TFloatField;
    ibdsMainFacturaListNDS_AMOUNT: TFloatField;
    cbType: TwwCheckBox;
    edType: TwwDBComboBox;
    ibdsReportHeaderENTERPRISE_KPP: TIBStringField;
    ibdsReportHeaderCONTRACTOR_KPP: TIBStringField;
    ibdsMainFacturaListKPP: TIBStringField;
    procedure ibdsMainFacturaListCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure ibdsMainFacturaListAfterScroll(DataSet: TDataSet);
    procedure sbFirstFacturaListClick(Sender: TObject);
    procedure sbPriorFacturaListClick(Sender: TObject);
    procedure sbNextFacturaListClick(Sender: TObject);
    procedure sbLastFacturaListClick(Sender: TObject);
    procedure sbDeleteFacturaListClick(Sender: TObject);
    procedure sbApplyFacturaListClick(Sender: TObject);
    procedure sbCancelFacturaListClick(Sender: TObject);
    procedure dsMainFacturaListStateChange(Sender: TObject);
    procedure wwDBGrid1CalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure wwDBGrid1CreateHintWindow(Sender: TObject;
      HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
      var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
      var DoDefault: Boolean);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure ibdsMainFacturaListUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure ibdsMainFacturaListAfterOpen(DataSet: TDataSet);
    procedure sbAddFacturaListClick(Sender: TObject);
    procedure sbApplyFacturaClick(Sender: TObject);
    procedure sbCancelFacturaClick(Sender: TObject);
    procedure ibdsReportBodyCalcFields(DataSet: TDataSet);
    procedure sbPrintFacturaListClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure sbFilterFacturaListClick(Sender: TObject);
    procedure sbReFilterClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure cbPeriodClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbRefreashFacturaListClick(Sender: TObject);
  private
    { Private declarations }
    procedure StteChange(Enabled: Boolean);
    procedure GetNaklOut(var ParentID: Int64; var ParentType : Integer);
    procedure GetNaklIn(var ParentID: Int64; var ParentType : Integer);
    procedure GetPayment(var ParentID: Int64; var ParentType : Integer);
    procedure GetInvoice(var ParentID: Int64);
    procedure GetAgreement(ParentID: Int64);
    function GetWhereMainFacturaList: String;
  public
    { Public declarations }
    IDParent : Largeint;
    procedure GenerateSelectMainFacturaList;
  end;

var
  frmFactura: TfrmFactura;

implementation

uses DM, Misk, Invoice, NaklIn, NaklOut, Main;

{$R *.DFM}

var
  OrderByMainFacturaList  : String = ' 4 desc, 6 desc';
  Mom_Type : Integer; // 0-приходная накладная,
                      // 1-расходная накладная,
                      // 2-приходный счет,
                      // 3-расходный счет,
                      // 4-договор
  Mom_ID : Int64;
  WhereSqlMainFacturaList : String;

procedure TfrmFactura.GenerateSelectMainFacturaList;
begin
 If (IDParent=0) then
  Begin
   WhereSqlMainFacturaList := GetWhereMainFacturaList;
   ibdsMainFacturaList.SelectSQL.Clear;
   ibdsMainFacturaList.SelectSQL.Add('select F.ID, F.PARENT_TYPE, F.PARENT_ID, F.FACTURA_DATE,');
   ibdsMainFacturaList.SelectSQL.Add('F.NUMBER_PREFIX, F.NUMBER, F.NUMBER_SUFFIX, PS.TAKE_NSP, C.PRIVATE,');
   ibdsMainFacturaList.SelectSQL.Add('PTOH.AMOUNT, C.NAME CONTRACTOR_NAME, C.INN, C.KPP, cast('#39+'01.01.1900'+#39' as DATE) PAYMENT_DATE');
   ibdsMainFacturaList.SelectSQL.Add('from FACTURA F, PRIMARY_TOVAR_OUTCOME_HEADER PTOH, CONTRACTORS C, PRIMARY_SETUP PS');
   ibdsMainFacturaList.SelectSQL.Add('where (F.PARENT_TYPE=1) and (PTOH.ID=F.PARENT_ID) and (C.ID=PTOH.CONTRACTOR_ID) and (PTOH.PRIMARY_SETUP_ID=PS.ID)');
   ibdsMainFacturaList.SelectSQL.Add(WhereSqlMainFacturaList);
   ibdsMainFacturaList.SelectSQL.Add('union');
   ibdsMainFacturaList.SelectSQL.Add('select F.ID, F.PARENT_TYPE, F.PARENT_ID, F.FACTURA_DATE,');
   ibdsMainFacturaList.SelectSQL.Add('F.NUMBER_PREFIX, F.NUMBER, F.NUMBER_SUFFIX, PS.TAKE_NSP, C.PRIVATE,');
   ibdsMainFacturaList.SelectSQL.Add('F.AMOUNT, C.NAME CONTRACTOR_NAME, C.INN, C.KPP, PP.PAYMENT_DATE');
   ibdsMainFacturaList.SelectSQL.Add('from FACTURA F, PRIMARY_PAYMENTS PP, CONTRACTORS C, PRIMARY_SETUP PS');
   ibdsMainFacturaList.SelectSQL.Add('where (F.PARENT_TYPE=3) and (PP.ID=F.PARENT_ID) and (C.ID=PP.CONTRACTOR_ID) and (PP.PRIMARY_SETUP_ID=PS.ID)');
   ibdsMainFacturaList.SelectSQL.Add(WhereSqlMainFacturaList);
   ibdsMainFacturaList.SelectSQL.Add('union');
   ibdsMainFacturaList.SelectSQL.Add('select F.ID, F.PARENT_TYPE, F.PARENT_ID, F.FACTURA_DATE,');
   ibdsMainFacturaList.SelectSQL.Add('F.NUMBER_PREFIX, F.NUMBER, F.NUMBER_SUFFIX, 0 TAKE_NSP, C.PRIVATE,');
   ibdsMainFacturaList.SelectSQL.Add('F.AMOUNT, C.NAME CONTRACTOR_NAME, C.INN, C.KPP, PP.PAYMENT_DATE');
   ibdsMainFacturaList.SelectSQL.Add('from FACTURA F, PRIMARY_PAYMENTS PP, CONTRACTORS C, FACTURA F2');
   ibdsMainFacturaList.SelectSQL.Add('where (F.PARENT_TYPE=4) and (F2.ID=F.PARENT_ID) and (PP.ID=F2.PARENT_ID) and (C.ID=PP.CONTRACTOR_ID)');
   ibdsMainFacturaList.SelectSQL.Add(WhereSqlMainFacturaList);
   ibdsMainFacturaList.SelectSQL.Add('order by'+OrderByMainFacturaList)
  End
 else
  Begin
   ibdsMainFacturaList.SelectSQL.Clear;
   ibdsMainFacturaList.SelectSQL.Add('select F.ID, F.PARENT_TYPE, F.PARENT_ID, F.FACTURA_DATE,');
   ibdsMainFacturaList.SelectSQL.Add('F.NUMBER_PREFIX, F.NUMBER, F.NUMBER_SUFFIX, PS.TAKE_NSP, C.PRIVATE,');
   ibdsMainFacturaList.SelectSQL.Add('PTOH.AMOUNT, C.NAME CONTRACTOR_NAME, C.INN, C.KPP, cast('#39+'01.01.1900'+#39' as DATE) PAYMENT_DATE');
   ibdsMainFacturaList.SelectSQL.Add('from FACTURA F, PRIMARY_TOVAR_OUTCOME_HEADER PTOH, CONTRACTORS C, PRIMARY_SETUP PS');
   ibdsMainFacturaList.SelectSQL.Add('where (F.PARENT_TYPE=1) and');
   ibdsMainFacturaList.SelectSQL.Add('(PTOH.ID=F.PARENT_ID) and (PTOH.PARENT_TYPE=1) and (C.ID=PTOH.CONTRACTOR_ID) and (PTOH.PRIMARY_SETUP_ID=PS.ID) and');
   ibdsMainFacturaList.SelectSQL.Add('((PTOH.PARENT_ID=:ID))');
   ibdsMainFacturaList.SelectSQL.Add('union');
   ibdsMainFacturaList.SelectSQL.Add('select F.ID, F.PARENT_TYPE, F.PARENT_ID, F.FACTURA_DATE,');
   ibdsMainFacturaList.SelectSQL.Add('F.NUMBER_PREFIX, F.NUMBER, F.NUMBER_SUFFIX, PS.TAKE_NSP, C.PRIVATE,');
   ibdsMainFacturaList.SelectSQL.Add('F.AMOUNT, C.NAME CONTRACTOR_NAME, C.INN, C.KPP, PP.PAYMENT_DATE');
   ibdsMainFacturaList.SelectSQL.Add('from FACTURA F, PRIMARY_PAYMENTS PP, CONTRACTORS C, PRIMARY_SETUP PS');
   ibdsMainFacturaList.SelectSQL.Add('where (F.PARENT_TYPE=3) and (PP.ID=F.PARENT_ID) and (C.ID=PP.CONTRACTOR_ID) and (PP.PRIMARY_SETUP_ID=PS.ID) and');
   ibdsMainFacturaList.SelectSQL.Add('(PP.PARENT_TYPE=4) and ((PP.PARENT_ID=:ID))');
   ibdsMainFacturaList.SelectSQL.Add('union');
   ibdsMainFacturaList.SelectSQL.Add('select F.ID, F.PARENT_TYPE, F.PARENT_ID, F.FACTURA_DATE,');
   ibdsMainFacturaList.SelectSQL.Add('F.NUMBER_PREFIX, F.NUMBER, F.NUMBER_SUFFIX, 0 TAKE_NSP, C.PRIVATE,');
   ibdsMainFacturaList.SelectSQL.Add('F.AMOUNT, C.NAME CONTRACTOR_NAME, C.INN, C.KPP, PP.PAYMENT_DATE');
   ibdsMainFacturaList.SelectSQL.Add('from FACTURA F, FACTURA FF, PRIMARY_PAYMENTS PP, CONTRACTORS C');
   ibdsMainFacturaList.SelectSQL.Add('where (F.PARENT_TYPE=4) and (FF.ID=F.PARENT_ID) and');
   ibdsMainFacturaList.SelectSQL.Add('(FF.PARENT_TYPE=3) and (PP.ID=FF.PARENT_ID) and (C.ID=PP.CONTRACTOR_ID) and');
   ibdsMainFacturaList.SelectSQL.Add('(PP.PARENT_TYPE=4) and ((PP.PARENT_ID=:ID))');
   ibdsMainFacturaList.SelectSQL.Add('order by'+OrderByMainFacturaList);
   ibdsMainFacturaList.ParamByName('ID').AsInt64 := IDParent
  End
end;

procedure TfrmFactura.ibdsMainFacturaListCalcFields(DataSet: TDataSet);
begin
 Case (ibdsMainFacturaListPARENT_TYPE.AsInteger) of
  1 : ibdsMainFacturaListTYPE_NAME.Value := 'Счет-фактура';
  2 : ibdsMainFacturaListTYPE_NAME.Value := 'Счет-фактура';
  3 : ibdsMainFacturaListTYPE_NAME.Value := 'На предоплату';
  4 : ibdsMainFacturaListTYPE_NAME.Value := 'На сторно'
 end;
 ibdsMainFacturaListNUMBER_STR.Value := ibdsMainFacturaListNUMBER_PREFIX.AsString+ibdsMainFacturaListNUMBER.AsString+ibdsMainFacturaListNUMBER_SUFFIX.AsString
end;

procedure TfrmFactura.FormCreate(Sender: TObject);
begin
 FName := 'Счета-фактуры';
 Caption := 'Справочник счетов-фактур';
 lblFilter.Caption := '';
 inherited;
 trMain.StartTransaction;
 If (Black) then
  Begin
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select FILTER_NAME, FILTER_VALUE from FILTERS');
   ibsAux.SQL.Add('where (PERSON_ID='+IntToStr(PersonID)+') and (FORM_NAME='#39+(Sender as TForm).Caption+#39')');
   ibsAux.ExecQuery;
   sbFilterFacturaList.Down :=(ibsAux.RecordCount>0);
   try
     While NOT (ibsAux.Eof) do
      Begin
       If (ibsAux.FieldByName('FILTER_NAME').AsString=cbPeriod.Name+'/Start') then
        Begin
         cbPeriod.Checked := True;
         deDateStart.Date := ibsAux.FieldByName('FILTER_VALUE').AsDate
        End;
       If (ibsAux.FieldByName('FILTER_NAME').AsString=cbPeriod.Name+'/Stop') then
        Begin
         cbPeriod.Checked := True;
         deDateStop.Date := ibsAux.FieldByName('FILTER_VALUE').AsDate
        End;
       ibsAux.Next
      End;
   finally
    ibsAux.Close
   end 
  End;
 GenerateSelectMainFacturaList;
 ibdsMainFacturaList.Open
end;

procedure TfrmFactura.SpeedButton10Click(Sender: TObject);
begin
 Close
end;

procedure TfrmFactura.ibdsMainFacturaListAfterScroll(DataSet: TDataSet);
 var ParentID : Int64;
     ParentType : Integer;
     NSP_Local : Double;
begin
 ibdsAfterScroll(DataSet,DataSet.Owner as TForm,'FacturaList');
 sbAddFacturaList.Enabled := (ibdsMainFacturaListPARENT_TYPE.AsInteger=3);
 pnlMomInfo.Caption := '';
 ParentID := ibdsMainFacturaListPARENT_ID.AsLargeInt;
 Case ibdsMainFacturaListPARENT_TYPE.AsInteger of
  1 : Begin
       GetNaklOut(ParentID,ParentType);
       If (ParentID<>0) or (ParentType<>0) then
        If (ParentType=3) then
         GetAgreement(ParentID)
        else
         If (ParentType in [1,2,4]) then
          Begin
           GetInvoice(ParentID);
           If (ParentID<>0) then
            GetAgreement(ParentID)
          End;
       ibsAux.SQL.Clear;
       ibsAux.SQL.Add('select PP.PAYMENT_DATE from PRIMARY_PAYMENTS PP');
       ibsAux.SQL.Add('where (PP.PARENT_TYPE='+IntToStr(Succ(Mom_Type))+') and (PP.PARENT_ID='+IntToStr(Mom_ID)+')');
       ibsAux.SQL.Add('order by 1');
       ibsAux.ExecQuery;
       While NOT (ibsAux.Eof) do
        Begin
         ibdsMainFacturaListPAYMENT_DATE_STR.Value := ibdsMainFacturaListPAYMENT_DATE_STR.AsString+FormatDateTime('dd.mm.yyyy',ibsAux.FieldByName('PAYMENT_DATE').AsDateTime)+'; ';
         ibsAux.Next
        End;
       If (ibdsMainFacturaListPAYMENT_DATE_STR.AsString<>'') then
        ibdsMainFacturaListPAYMENT_DATE_STR.Value := Copy(ibdsMainFacturaListPAYMENT_DATE_STR.AsString,1,Length(ibdsMainFacturaListPAYMENT_DATE_STR.AsString)-2);
       ibsAux.Close;
       ibsAux.SQL.Clear;
       ibsAux.SQL.Add('select (PTOB.PACKS_AMOUNT*PTOB.PACK_VALUE+PTOB.ITEMS_AMOUNT) AMOUNT,');
       ibsAux.SQL.Add('PTOB.PRICE, PTOB.NDS, PTOB.NSP');
       ibsAux.SQL.Add('from PRIMARY_TOVAR_OUTCOME_BODY PTOB');
       ibsAux.SQL.Add('where (PTOB.PRIMARY_TOVAR_OUTCOME_HEADER_ID='+ibdsMainFacturaListPARENT_ID.AsString+')');
       ibsAux.ExecQuery;
       While NOT (ibsAux.Eof) do
        Begin
         NSP_Local := ibsAux.FieldByName('AMOUNT').AsDouble*ibsAux.FieldByName('PRICE').AsDouble*ibdsMainFacturaListTAKE_NSP.AsInteger*ibdsMainFacturaListPRIVATE.AsInteger*ibsAux.FieldByName('NSP').AsDouble/(100+ibdsMainFacturaListTAKE_NSP.AsInteger*ibdsMainFacturaListPRIVATE.AsInteger*ibsAux.FieldByName('NSP').AsDouble);
         ibdsMainFacturaListNSP_AMOUNT.Value := ibdsMainFacturaListNSP_AMOUNT.AsFloat+NSP_Local;
         ibdsMainFacturaListNDS_AMOUNT.Value := ibdsMainFacturaListNDS_AMOUNT.AsFloat+ibsAux.FieldByName('AMOUNT').AsDouble*(ibsAux.FieldByName('PRICE').AsDouble-NSP_Local)*ibsAux.FieldByName('NDS').AsDouble/(100+ibsAux.FieldByName('NDS').AsDouble);
         ibsAux.Next
        End;
       ibsAux.Close
      End;
  2 : Begin
       GetNaklIn(ParentID,ParentType);
       If (ParentID<>0) or (ParentType<>0) then
        If (ParentType=3) then
         GetAgreement(ParentID)
        else
         If (ParentType in [1,2,4]) then
          Begin
           GetInvoice(ParentID);
           If (ParentID<>0) then
            GetAgreement(ParentID)
          End;
      End;
  3 : Begin
       ibdsMainFacturaListPAYMENT_DATE_STR.Value := FormatDateTime('dd.mm.yyyy',ibdsMainFacturaListPAYMENT_DATE.AsDateTime);
       GetPayment(ParentID,ParentType);
       If (ParentID<>0) or (ParentType<>0) then
        If (ParentType=5) then
         GetAgreement(ParentID)
        else
         If (ParentType in [3,4]) then
          Begin
           GetInvoice(ParentID);
           If (ParentID<>0) then
            GetAgreement(ParentID)
          End
         else
         If (ParentType=1) then
          Begin
           GetNaklIn(ParentID,ParentType);
           If (ParentID<>0) or (ParentType<>0) then
            If (ParentType=3) then
             GetAgreement(ParentID)
            else
             If (ParentType in [1,2,4]) then
              Begin
               GetInvoice(ParentID);
               If (ParentID<>0) then
                GetAgreement(ParentID)
              End;
          End
         else
          If (ParentType=2) then
           Begin
            GetNaklOut(ParentID,ParentType);
            If (ParentID<>0) or (ParentType<>0) then
             If (ParentType=3) then
              GetAgreement(ParentID)
             else
              If (ParentType in [1,2,4]) then
               Begin
                GetInvoice(ParentID);
                If (ParentID<>0) then
                 GetAgreement(ParentID)
               End;
           End;
       ibdsMainFacturaListNSP_AMOUNT.Value := Round(ibdsMainFacturaListAMOUNT.AsFloat*ibdsMainFacturaListTAKE_NSP.AsInteger*ibdsMainFacturaListPRIVATE.AsInteger*5/(100+ibdsMainFacturaListTAKE_NSP.AsInteger*ibdsMainFacturaListPRIVATE.AsInteger*5)*100)/100;
       ibdsMainFacturaListNDS_AMOUNT.Value := Round((ibdsMainFacturaListAMOUNT.AsFloat-ibdsMainFacturaListNSP_AMOUNT.AsFloat)*18/(118)*100)/100
      End;
  4 : Begin
       ibdsMainFacturaListPAYMENT_DATE_STR.Value := FormatDateTime('dd.mm.yyyy',ibdsMainFacturaListPAYMENT_DATE.AsDateTime);
       ibsAux.SQL.Clear;
       ibsAux.SQL.Add('select F.PARENT_ID from FACTURA F where (F.ID='+IntToStr(ParentID)+')');
       ibsAux.ExecQuery;
       ParentID := ibsAux.FieldByName('PARENT_ID').AsInt64;
       ibsAux.Close;
       GetPayment(ParentID,ParentType);
       If (ParentID<>0) or (ParentType<>0) then
        If (ParentType=5) then
         GetAgreement(ParentID)
        else
         If (ParentType in [3,4]) then
          Begin
           GetInvoice(ParentID);
           If (ParentID<>0) then
            GetAgreement(ParentID)
          End
         else
         If (ParentType=1) then
          Begin
           GetNaklIn(ParentID,ParentType);
           If (ParentID<>0) or (ParentType<>0) then
            If (ParentType=3) then
             GetAgreement(ParentID)
            else
             If (ParentType in [1,2,4]) then
              Begin
               GetInvoice(ParentID);
               If (ParentID<>0) then
                GetAgreement(ParentID)
              End;
          End
         else
          If (ParentType=2) then
           Begin
            GetNaklOut(ParentID,ParentType);
            If (ParentID<>0) or (ParentType<>0) then
             If (ParentType=3) then
              GetAgreement(ParentID)
             else
              If (ParentType in [1,2,4]) then
               Begin
                GetInvoice(ParentID);
                If (ParentID<>0) then
                 GetAgreement(ParentID)
               End;
           End;
       ibdsMainFacturaListNSP_AMOUNT.Value := 0;
       ibdsMainFacturaListNDS_AMOUNT.Value := Round((ibdsMainFacturaListAMOUNT.AsFloat-ibdsMainFacturaListNSP_AMOUNT.AsFloat)*18/(118)*100)/100
      End
 end
end;

procedure TfrmFactura.sbFirstFacturaListClick(Sender: TObject);
begin
 ibdsMainFacturaList.First
end;

procedure TfrmFactura.sbPriorFacturaListClick(Sender: TObject);
begin
 ibdsMainFacturaList.Prior
end;

procedure TfrmFactura.sbNextFacturaListClick(Sender: TObject);
begin
 ibdsMainFacturaList.Next
end;

procedure TfrmFactura.sbLastFacturaListClick(Sender: TObject);
begin
 ibdsMainFacturaList.Last
end;

procedure TfrmFactura.sbDeleteFacturaListClick(Sender: TObject);
begin
 ibdsMainFacturaList.Delete;
 StteChange(True)
end;

procedure TfrmFactura.StteChange(Enabled: Boolean);
begin
 If (frmFactura<>nil) then
  Begin
   sbApplyFacturaList.Enabled := Enabled;
   sbCancelFacturaList.Enabled := Enabled;
   sbPrintFacturaList.Enabled := NOT Enabled
  End
end;

procedure TfrmFactura.sbApplyFacturaListClick(Sender: TObject);
begin
 try
  ibdsMainFacturaList.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange(False)
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end
end;

procedure TfrmFactura.sbCancelFacturaListClick(Sender: TObject);
begin
 ibdsMainFacturaList.CancelUpdates;
 StteChange(False)
end;

procedure TfrmFactura.dsMainFacturaListStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
 StteChange(((Sender as TDataSource).State in [dsEdit,dsInsert]) or (((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending));
end;

procedure TfrmFactura.wwDBGrid1CalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 If (Field=ibdsMainFacturaListTYPE_NAME) then
  Field := ibdsMainFacturaListPARENT_TYPE;
 If (Field=ibdsMainFacturaListNUMBER_STR) then
  Field := ibdsMainFacturaListNUMBER;
 wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByMainFacturaList)
end;

procedure TfrmFactura.wwDBGrid1CreateHintWindow(Sender: TObject;
  HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
  var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
  var DoDefault: Boolean);
begin
 WordWrap := True;
 if (AField is TBlobField) then
    MaxWidth := 200;
 MaxHeight := Screen.Height
end;

procedure TfrmFactura.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 If (AFieldName='TYPE_NAME') then
  AFieldName := 'PARENT_TYPE';
 If (AFieldName='NUMBER_STR') then
  AFieldName := 'NUMBER';
 wwDBGridTitleButtonClick(Sender, AFieldName, OrderByMainFacturaList, (GetKeyState(VK_CONTROL)<0),
                          sbApplyFacturaList, sbCancelFacturaList, GenerateSelectMainFacturaList)
end;

procedure TfrmFactura.ibdsMainFacturaListUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 If (Black) then
  Begin
   ibsWhite.SQL.Clear;
   ibsWhite.SQL.AddStrings(ibdsMainFacturaList.DeleteSQL);
   ibsWhite.GenerateParamNames := True;
   ibsWhite.ParamByName('OLD_ID').AsString := IntToStr(ibdsMainFacturaListID.OldValue);
   ibsWhite.ExecQuery
  End;
 UpdateAction := uaApply
end;

procedure TfrmFactura.ibdsMainFacturaListAfterOpen(DataSet: TDataSet);
begin
 sbAddFacturaList.Enabled := (ibdsMainFacturaListPARENT_TYPE.AsInteger=3)
end;

procedure TfrmFactura.sbAddFacturaListClick(Sender: TObject);
 var Year, Month: Word;
begin
 If (MessageDlg('Создать счет-фактуру на сторно?',mtConfirmation,[mbOk,mbCancel],0)=mrOK) then
  Begin
   dbePrefix.Text := '';
   dbeSuffix.Text := '/'+FormatDateTime('yyyy',Date);
   dtDate.Date := Date;
   dbeAmount.Text := FloatToStr(ibdsMainFacturaListAMOUNT.Value);
   pnlMessage.Show;
   Application.ProcessMessages;
   trLock.StartTransaction;
   pnlMessage.Hide;
   Application.ProcessMessages;
   ibsNumb.SQL.Clear;
   ibsNumb.SQL.Add('select MAX(F.NUMBER)');
   ibsNumb.SQL.Add('from FACTURA F');
   ibsNumb.SQL.Add('where (F.FACTURA_DATE>=:START_DATE) and (F.FACTURA_DATE<=:STOP_DATE)');
   ibsNumb.GenerateParamNames := True;
   DecodeDate(Date,Year,Month,Month);
   ibsNumb.ParamByName('START_DATE').AsDate := EncodeDate(Year,1,1);
   ibsNumb.ParamByName('STOP_DATE').AsDate := EncodeDate(Year,12,31);
   ibsNumb.ExecQuery;
   spNumber.Value := Succ(ibsNumb.FieldByName('MAX').AsInteger);
   ibsNumb.Close;
   pnlFactura.Show
  End
end;

procedure TfrmFactura.sbApplyFacturaClick(Sender: TObject);
 var BookMark : String;
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_FACTURA,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 try
  ibsNumb.SQL.Clear;
  ibsNumb.SQL.Add('insert into FACTURA (ID, PARENT_TYPE, PARENT_ID, NUMBER_PREFIX,');
  ibsNumb.SQL.Add('NUMBER, NUMBER_SUFFIX, FACTURA_DATE, AMOUNT) values');
  ibsNumb.SQL.Add('(:ID, :PARENT_TYPE, :PARENT_ID, :NUMBER_PREFIX, :NUMBER, :NUMBER_SUFFIX,');
  ibsNumb.SQL.Add(':FACTURA_DATE, :AMOUNT)');
  ibsNumb.GenerateParamNames := True;
  ibsNumb.ParamByName('ID').AsInt64 := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
  ibsNumb.ParamByName('PARENT_TYPE').AsInteger := 4;
  ibsNumb.ParamByName('PARENT_ID').AsInt64 := ibdsMainFacturaListID.AsLargeInt;
  ibsNumb.ParamByName('NUMBER_PREFIX').AsString := dbePrefix.Text;
  ibsNumb.ParamByName('NUMBER').AsInteger := Trunc(spNumber.Value);
  ibsNumb.ParamByName('NUMBER_SUFFIX').AsString := dbeSuffix.Text;
  ibsNumb.ParamByName('FACTURA_DATE').AsDate := dtDate.Date;
  ibsNumb.ParamByName('AMOUNT').AsDouble := -Abs(StrToFloat(dbeAmount.Text));
  ibsWhite.SQL.Clear;
  ibsWhite.SQL.Add('insert into FACTURA (ID, PARENT_TYPE, PARENT_ID, NUMBER_PREFIX,');
  ibsWhite.SQL.Add('NUMBER, NUMBER_SUFFIX, FACTURA_DATE, AMOUNT) values');
  ibsWhite.SQL.Add('(:ID, :PARENT_TYPE, :PARENT_ID, :NUMBER_PREFIX, :NUMBER, :NUMBER_SUFFIX,');
  ibsWhite.SQL.Add(':FACTURA_DATE, :AMOUNT)');
  ibsWhite.GenerateParamNames := True;
  ibsWhite.ParamByName('ID').AsInt64 := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
  ibsWhite.ParamByName('PARENT_TYPE').AsInteger := 4;
  ibsWhite.ParamByName('PARENT_ID').AsInt64 := ibdsMainFacturaListID.AsLargeInt;
  ibsWhite.ParamByName('NUMBER_PREFIX').AsString := dbePrefix.Text;
  ibsWhite.ParamByName('NUMBER').AsInteger := Trunc(spNumber.Value);
  ibsWhite.ParamByName('NUMBER_SUFFIX').AsString := dbeSuffix.Text;
  ibsWhite.ParamByName('FACTURA_DATE').AsDate := dtDate.Date;
  ibsWhite.ParamByName('AMOUNT').AsDouble := -Abs(StrToFloat(dbeAmount.Text));
  ibsNumb.ExecQuery;
  ibsWhite.ExecQuery;
  trMain.CommitRetaining;
  BookMark := ibdsMainFacturaList.Bookmark;
  ibdsMainFacturaList.Close;
  ibdsMainFacturaList.Open;
  ibdsMainFacturaList.Bookmark := BookMark
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 ibsGen_ID.Close;
 If (trLock.InTransaction) then
  trLock.Commit;
 pnlFactura.Hide
end;

procedure TfrmFactura.sbCancelFacturaClick(Sender: TObject);
begin
 ibsGen_ID.Close;
 If (trLock.InTransaction) then
  trLock.Commit;
 pnlFactura.Hide
end;

procedure TfrmFactura.ibdsReportBodyCalcFields(DataSet: TDataSet);
begin
 ibdsReportBodyNSP_AMOUNT.Value := Round(ibdsReportBodyPRICE.AsFloat*ibdsReportHeaderTAKE_NSP.AsInteger*ibdsReportHeaderPRIVATE.AsInteger*ibdsReportBodyNSP.AsFloat/(100+ibdsReportHeaderTAKE_NSP.AsInteger*ibdsReportHeaderPRIVATE.AsInteger*ibdsReportBodyNSP.Value)*Trunc(Power(10,ibdsReportHeaderDECIMALS_IN.AsInteger)))/Trunc(Power(10,ibdsReportHeaderDECIMALS_IN.AsInteger));
 ibdsReportBodyNDS_AMOUNT.Value := Round((ibdsReportBodyPRICE.AsFloat-ibdsReportBodyNSP_AMOUNT.AsFloat)*ibdsReportBodyNDS.AsFloat/(100+ibdsReportBodyNDS.Value)*Trunc(Power(10,ibdsReportHeaderDECIMALS_IN.AsInteger)))/Trunc(Power(10,ibdsReportHeaderDECIMALS_IN.AsInteger));
 If (ibdsReportBodyCOUNTRY_ID.IsNull) then
  Begin
   ibdsReportBodyDECLARATION_NUMBER_FULL.Value := 'б/н';
   ibdsReportBodyCOUNTRY_NAME.Value := 'РОССИЯ'
  End
 else
  Begin
   ibsNumb.SQL.Clear;
   ibsNumb.SQL.Add('select C.NAME from COUNTRIES C where (C.ID='+ibdsReportBodyCOUNTRY_ID.AsString+')');
   ibsNumb.ExecQuery;
   ibdsReportBodyCOUNTRY_NAME.Value := ibsNumb.FieldByName('NAME').AsString;
   ibdsReportBodyDECLARATION_NUMBER_FULL.Value := ibdsReportBodyDECLARATION_NUMBER.AsString;
   ibsNumb.Close
  End
end;

procedure TfrmFactura.sbPrintFacturaListClick(Sender: TObject);
begin
 ibdsReportBody.Close;
 ibdsReportHeader.Close;
 ibdsReportBody.SelectSQL.Clear;
 ibdsReportHeader.SelectSQL.Clear;
 Case ibdsMainFacturaListPARENT_TYPE.AsInteger of
  1: Begin
      ibdsReportHeader.SelectSQL.Add('select E.NAME ENTERPRISE_NAME, E.ADDRESS, E.PHONE, E.INN ENTERPRISE_INN, E.KPP ENTERPRISE_KPP,');
      ibdsReportHeader.SelectSQL.Add('PTOH.NUMBER_PREFIX||cast(PTOH.NUMBER as varchar(30))||PTOH.NUMBER_SUFFIX NUMBER_STR,');
      ibdsReportHeader.SelectSQL.Add('PTOH.PRIMARY_DATE, C.NAME CONTRACTOR_NAME, C.ADDRESS CONTRACTOR_ADDRESS, C.UR_ADDRESS CONTRACTOR_UR_ADDRESS,');
      ibdsReportHeader.SelectSQL.Add('C.INN CONTRACTOR_INN, C.KPP CONTRACTOR_KPP, P.SURNAME||'#39' '#39'||P.NAME||'#39' '#39'||P.SECOND_NAME MASTER_NAME,');
      ibdsReportHeader.SelectSQL.Add('CUR.NAME CURRENCY_NAME, CUR.DECIMALS_IN, CUR.DECIMALS_OUT,');
      ibdsReportHeader.SelectSQL.Add('CUR.SYMBOL, CUR.NAME1, CUR.NAME3, CUR.NAME5, CUR.NAME001,');
      ibdsReportHeader.SelectSQL.Add('PTOH.CURRENCY_RATE, PS.NAME SETUP_NAME, PS.TAKE_NSP, C.PRIVATE,');
      ibdsReportHeader.SelectSQL.Add('S.NAME STORE_NAME, F.FACTURA_DATE, PTOH.ID PRIMARY_TOVAR_OUTCOME_HEADER_ID,');
      ibdsReportHeader.SelectSQL.Add('F.NUMBER_PREFIX||cast(F.NUMBER as varchar(30))||F.NUMBER_SUFFIX FACTURA_NUMBER');
      ibdsReportHeader.SelectSQL.Add('from PRIMARY_TOVAR_OUTCOME_HEADER PTOH, PRIMARY_SETUP PS,');
      ibdsReportHeader.SelectSQL.Add('PERSONS P, ENTERPRISES E, CONTRACTORS C, CURRENCY CUR, STORES S,');
      ibdsReportHeader.SelectSQL.Add('FACTURA F');
      ibdsReportHeader.SelectSQL.Add('where (F.ID=:ID) and (F.PARENT_ID=PTOH.ID) and');
      ibdsReportHeader.SelectSQL.Add('(PTOH.PRIMARY_SETUP_ID=PS.ID) and (PTOH.MASTER_ID=P.ID) and');
      ibdsReportHeader.SelectSQL.Add('(PTOH.ENTERPRISE_ID=E.ID) and (PTOH.CONTRACTOR_ID=C.ID) and');
      ibdsReportHeader.SelectSQL.Add('(PTOH.CURRENCY_ID=CUR.ID) and (S.ID=PTOH.ENTERPRISE_STORE_ID)');
      ibdsReportBody.SelectSQL.Add('select A.NAME ARTICUL_NAME, PTOB.MADE_IN, A.UNITS,');
      ibdsReportBody.SelectSQL.Add('PTOB.PACKS_AMOUNT*PTOB.PACK_VALUE+PTOB.ITEMS_AMOUNT AMOUNT,');
      ibdsReportBody.SelectSQL.Add('PTOB.PRICE, PTOB.NDS, PTOB.NSP, PTOB.DECLARATION_NUMBER, PTOB.COUNTRY_ID');
      ibdsReportBody.SelectSQL.Add('from ARTICULS A, PRIMARY_TOVAR_OUTCOME_BODY PTOB');
      ibdsReportBody.SelectSQL.Add('where (PTOB.PRIMARY_TOVAR_OUTCOME_HEADER_ID=:PRIMARY_TOVAR_OUTCOME_HEADER_ID) and');
      ibdsReportBody.SelectSQL.Add('(PTOB.ARTICUL_ID=A.ID) order by A.ARTICUL');
      ibdsReportBody.DataSource := dsReportHeader
     End;
  3: Begin
      ibdsReportHeader.SelectSQL.Add('select E.NAME ENTERPRISE_NAME, E.ADDRESS, E.PHONE, E.INN ENTERPRISE_INN, E.KPP ENTERPRISE_KPP,');
      ibdsReportHeader.SelectSQL.Add('PP.NUMBER_PREFIX||cast(PP.NUMBER as varchar(30))||PP.NUMBER_SUFFIX NUMBER_STR,');
      ibdsReportHeader.SelectSQL.Add('PP.PAYMENT_DATE PRIMARY_DATE, C.NAME CONTRACTOR_NAME, C.ADDRESS CONTRACTOR_ADDRESS, C.UR_ADDRESS CONTRACTOR_UR_ADDRESS,');
      ibdsReportHeader.SelectSQL.Add('C.INN CONTRACTOR_INN, C.KPP CONTRACTOR_KPP, '#39' '#39' MASTER_NAME,');
      ibdsReportHeader.SelectSQL.Add('CUR.NAME CURRENCY_NAME, CUR.DECIMALS_IN, CUR.DECIMALS_OUT,');
      ibdsReportHeader.SelectSQL.Add('CUR.SYMBOL, CUR.NAME1, CUR.NAME3, CUR.NAME5, CUR.NAME001,');
      ibdsReportHeader.SelectSQL.Add('PP.CURRENCY_RATE, PS.NAME SETUP_NAME, PS.TAKE_NSP, C.PRIVATE,');
      ibdsReportHeader.SelectSQL.Add(#39' '#39' STORE_NAME, F.FACTURA_DATE, cast(0 as numeric(18,0)) PRIMARY_TOVAR_OUTCOME_HEADER_ID,');
      ibdsReportHeader.SelectSQL.Add('F.NUMBER_PREFIX||cast(F.NUMBER as varchar(30))||F.NUMBER_SUFFIX FACTURA_NUMBER');
      ibdsReportHeader.SelectSQL.Add('from PRIMARY_PAYMENTS PP, PRIMARY_SETUP PS,');
      ibdsReportHeader.SelectSQL.Add('ENTERPRISES E, CONTRACTORS C, CURRENCY CUR,');
      ibdsReportHeader.SelectSQL.Add('FACTURA F');
      ibdsReportHeader.SelectSQL.Add('where (F.ID=:ID) and (F.PARENT_ID=PP.ID) and');
      ibdsReportHeader.SelectSQL.Add('(PP.PRIMARY_SETUP_ID=PS.ID) and (PP.ENTERPRISE_ID=E.ID) and');
      ibdsReportHeader.SelectSQL.Add('(PP.CONTRACTOR_ID=C.ID) and (PP.CURRENCY_ID=CUR.ID)');
      ibdsReportBody.SelectSQL.Add('select '#39'ПРЕДОПЛАТА'#39' ARTICUL_NAME, '#39' '#39' MADE_IN, '#39' '#39' UNITS,');
      ibdsReportBody.SelectSQL.Add('cast(1 as double precision) AMOUNT,');
      ibdsReportBody.SelectSQL.Add('F.AMOUNT PRICE, cast(18 as double precision) NDS,');
      ibdsReportBody.SelectSQL.Add('cast(5 as double precision) NSP, cast('#39' '#39' as varchar(30)) DECLARATION_NUMBER,');
      ibdsReportBody.SelectSQL.Add('cast(0 as numeric(18,0)) COUNTRY_ID');
      ibdsReportBody.SelectSQL.Add('from FACTURA F');
      ibdsReportBody.SelectSQL.Add('where (F.ID=:ID)');
      ibdsReportBody.DataSource := dsMainFacturaList
     End;
  4: Begin
      ibdsReportHeader.SelectSQL.Add('select E.NAME ENTERPRISE_NAME, E.ADDRESS, E.PHONE, E.INN ENTERPRISE_INN, E.KPP ENTERPRISE_KPP,');
      ibdsReportHeader.SelectSQL.Add('FF.NUMBER_PREFIX||cast(FF.NUMBER as varchar(30))||FF.NUMBER_SUFFIX NUMBER_STR,');
      ibdsReportHeader.SelectSQL.Add('FF.FACTURA_DATE PRIMARY_DATE, C.NAME CONTRACTOR_NAME, C.ADDRESS CONTRACTOR_ADDRESS, C.UR_ADDRESS CONTRACTOR_UR_ADDRESS,');
      ibdsReportHeader.SelectSQL.Add('C.INN CONTRACTOR_INN, C.KPP CONTRACTOR_KPP, '#39' '#39' MASTER_NAME, CUR.NAME CURRENCY_NAME,');
      ibdsReportHeader.SelectSQL.Add('CUR.DECIMALS_IN, CUR.DECIMALS_OUT, CUR.SYMBOL, CUR.NAME1,');
      ibdsReportHeader.SelectSQL.Add('CUR.NAME3, CUR.NAME5, CUR.NAME001, PP.CURRENCY_RATE,');
      ibdsReportHeader.SelectSQL.Add('PS.NAME SETUP_NAME, 0 TAKE_NSP, C.PRIVATE,');
      ibdsReportHeader.SelectSQL.Add(#39' '#39' STORE_NAME, F.FACTURA_DATE,  cast(0 as numeric(18,0)) PRIMARY_TOVAR_OUTCOME_HEADER_ID,');
      ibdsReportHeader.SelectSQL.Add('F.NUMBER_PREFIX||cast(F.NUMBER as varchar(30))||F.NUMBER_SUFFIX FACTURA_NUMBER');
      ibdsReportHeader.SelectSQL.Add('from FACTURA FF, PRIMARY_SETUP PS, ENTERPRISES E,');
      ibdsReportHeader.SelectSQL.Add('CONTRACTORS C, CURRENCY CUR, FACTURA F, PRIMARY_PAYMENTS PP');
      ibdsReportHeader.SelectSQL.Add('where (F.ID=:ID) and (F.PARENT_ID=FF.ID) and (PP.ID=FF.PARENT_ID) and');
      ibdsReportHeader.SelectSQL.Add('(PP.PRIMARY_SETUP_ID=PS.ID) and (PP.ENTERPRISE_ID=E.ID) and');
      ibdsReportHeader.SelectSQL.Add('(PP.CONTRACTOR_ID=C.ID) and (PP.CURRENCY_ID=CUR.ID)');
      ibdsReportBody.SelectSQL.Add('select '#39'СТОРНО ПО ПРЕДОПЛАТЕ'#39' ARTICUL_NAME, '#39' '#39' MADE_IN, '#39' '#39' UNITS,');
      ibdsReportBody.SelectSQL.Add('cast(1 as double precision) AMOUNT,');
      ibdsReportBody.SelectSQL.Add('-F.AMOUNT PRICE, cast(18 as double precision) NDS,');
      ibdsReportBody.SelectSQL.Add('cast(0 as double precision) NSP, '#39' '#39' DECLARATION_NUMBER,cast(0 as numeric(18,0)) COUNTRY_ID');
      ibdsReportBody.SelectSQL.Add('from FACTURA F where (F.ID=:ID)');
      ibdsReportBody.DataSource := dsMainFacturaList
     End
 End;
 ibdsReportHeader.Open;
 ibdsReportBody.Open;
 frVariables.Clear;
 frVariables['DisplayFormat'] := '#,##0.'+StringOfChar('0',ibdsReportHeaderDECIMALS_IN.AsInteger);
 frVariables['CurrencyRoundPower'] := StrToInt(IntToStr(Trunc(Power(10,ibdsReportHeaderDECIMALS_IN.AsInteger))));
 frVariables['MomDoc'] := pnlMomInfo.Caption;
 If (deDateStart.Text<>'') and (deDateStop.Text<>'') then
  Begin
   frVariables['StartDate'] := FormatDateTime('dd.mm.yyyy',deDateStart.Date);
   frVariables['StopDate'] := FormatDateTime('dd.mm.yyyy',deDateStop.Date)
  End;
 sbPrintClick((Sender as TSpeedButton), ibsNumb, ibdsReportBody)
end;

procedure TfrmFactura.GetNaklOut(var ParentID: Int64; var ParentType : Integer);
begin
// ibsAux.Close;
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select PTOH.PARENT_TYPE, PTOH.PARENT_ID, PS.NAME, PTOH.ID,');
 ibsAux.SQL.Add('PTOH.NUMBER_PREFIX||cast(PTOH.NUMBER as varchar(30))||PTOH.NUMBER_SUFFIX NUMBER_STR,');
 ibsAux.SQL.Add('PTOH.PRIMARY_DATE');
 ibsAux.SQL.Add('from PRIMARY_TOVAR_OUTCOME_HEADER PTOH, PRIMARY_SETUP PS');
 ibsAux.SQL.Add('where (PTOH.ID='+IntToStr(ParentID)+') and (PS.ID=PTOH.PRIMARY_SETUP_ID)');
 ibsAux.ExecQuery;
 If (ibsAux.FieldByName('PARENT_TYPE').AsInteger=0) then
  Begin
   pnlMomInfo.Caption := 'Расходная накладная № '+ibsAux.FieldByName('NUMBER_STR').AsString+
                         ' от '+ibsAux.FieldByName('PRIMARY_DATE').AsString+' Тип: '+
                         ibsAux.FieldByName('NAME').AsString;
   ParentID := 0;
   ParentType := 0;
   Mom_Type := 1;
   Mom_ID := ibsAux.FieldByName('ID').AsInt64
  End
 else
  Begin
   ParentID := ibsAux.FieldByName('PARENT_ID').AsInt64;
   ParentType := ibsAux.FieldByName('PARENT_TYPE').AsInteger;
  End;
 ibsAux.Close
end;

procedure TfrmFactura.GetNaklIn(var ParentID: Int64; var ParentType : Integer);
begin
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select PTIH.PARENT_TYPE, PTIH.PARENT_ID, PS.NAME, PTIH.ID,');
 ibsAux.SQL.Add('PTIH.NUMBER_PREFIX||cast(PTIH.NUMBER as varchar(30))||PTIH.NUMBER_SUFFIX NUMBER_STR,');
 ibsAux.SQL.Add('PTIH.PRIMARY_DATE');
 ibsAux.SQL.Add('from PRIMARY_TOVAR_INCOME_HEADER PTIH, PRIMARY_SETUP PS');
 ibsAux.SQL.Add('where (PTIH.ID='+IntToStr(ParentID)+') and (PS.ID=PTIH.PRIMARY_SETUP_ID)');
 ibsAux.ExecQuery;
 If (ibsAux.FieldByName('PARENT_TYPE').AsInteger=0) then
  Begin
   pnlMomInfo.Caption := 'Приходная накладная № '+ibsAux.FieldByName('NUMBER_STR').AsString+
                         ' от '+ibsAux.FieldByName('PRIMARY_DATE').AsString+' Тип: '+
                         ibsAux.FieldByName('NAME').AsString;
   ParentID := 0;
   ParentType := 0;
   Mom_Type := 0;
   Mom_ID := ibsAux.FieldByName('ID').AsInt64
  End
 else
  Begin
   ParentID := ibsAux.FieldByName('PARENT_ID').AsInt64;
   ParentType := ibsAux.FieldByName('PARENT_TYPE').AsInteger
  End;
 ibsAux.Close
end;

procedure TfrmFactura.GetPayment(var ParentID: Int64; var ParentType : Integer);
begin
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select PP.PARENT_TYPE, PP.PARENT_ID, PS.NAME,');
 ibsAux.SQL.Add('PP.NUMBER_PREFIX||cast(PP.NUMBER as varchar(30))||PP.NUMBER_SUFFIX NUMBER_STR,');
 ibsAux.SQL.Add('PP.PAYMENT_DATE');
 ibsAux.SQL.Add('from PRIMARY_PAYMENTS PP, PRIMARY_SETUP PS');
 ibsAux.SQL.Add('where (PP.ID='+IntToStr(ParentID)+') and (PS.ID=PP.PRIMARY_SETUP_ID)');
 ibsAux.ExecQuery;
 If (ibsAux.FieldByName('PARENT_TYPE').AsInteger=0) then
  Begin
   pnlMomInfo.Caption := 'Документ на перемещение денег № '+ibsAux.FieldByName('NUMBER_STR').AsString+
                         ' от '+ibsAux.FieldByName('PAYMENT_DATE').AsString+' Тип: '+
                         ibsAux.FieldByName('NAME').AsString;
   ParentID := 0;
   ParentType := 0
  End
 else
  Begin
   ParentID := ibsAux.FieldByName('PARENT_ID').AsInt64;
   ParentType := ibsAux.FieldByName('PARENT_TYPE').AsInteger
  End;
 ibsAux.Close
end;

procedure TfrmFactura.GetInvoice(var ParentID: Int64);
begin
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select IH.CONTRACT_ID, INVS.NAME, INVS.IN_OUT, IH.ID,');
 ibsAux.SQL.Add('IH.NUMBER_PREFIX||cast(IH.NUMBER as varchar(30))||IH.NUMBER_SUFFIX NUMBER_STR,');
 ibsAux.SQL.Add('IH.INVOICE_DATE');
 ibsAux.SQL.Add('from INVOICE_HEADER IH, INVOICE_SETUP INVS');
 ibsAux.SQL.Add('where (IH.ID='+IntToStr(ParentID)+') and (INVS.ID=IH.INVOICE_SETUP_ID)');
 ibsAux.ExecQuery;
 If (ibsAux.FieldByName('CONTRACT_ID').IsNull) then
  Begin
   pnlMomInfo.Caption := 'Счет № '+ibsAux.FieldByName('NUMBER_STR').AsString+
                         ' от '+ibsAux.FieldByName('INVOICE_DATE').AsString+' Тип: '+
                          ibsAux.FieldByName('NAME').AsString;
   ParentID := 0;
   If (ibsAux.FieldByName('IN_OUT').AsInteger=2) then
    Mom_Type := 2
   else
    Mom_Type := 3;
   Mom_ID := ibsAux.FieldByName('ID').AsInt64
  End
 else
  ParentID := ibsAux.FieldByName('PARENT_ID').AsInt64;
 ibsAux.Close
end;

procedure TfrmFactura.GetAgreement(ParentID: Int64);
begin
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select CS.NAME, C.CONTRACT_DATE, C.ID,');
 ibsAux.SQL.Add('C.NUMBER_PREFIX||cast(C.NUMBER as varchar(30))||C.NUMBER_SUFFIX NUMBER_STR');
 ibsAux.SQL.Add('from CONTRACTS C, CONTRACTS_SETUP CS');
 ibsAux.SQL.Add('where (C.ID='+IntToStr(ParentID)+') and (CS.ID=C.SETUP_ID)');
 ibsAux.ExecQuery;
 pnlMomInfo.Caption := 'Договор № '+ibsAux.FieldByName('NUMBER_STR').AsString+
                       ' от '+ibsAux.FieldByName('CONTRACT_DATE').AsString+' Тип: '+
                       ibsAux.FieldByName('NAME').AsString;
 Mom_Type := 4;
 Mom_ID := ibsAux.FieldByName('ID').AsInt64;
 ibsAux.Close
end;

procedure TfrmFactura.N1Click(Sender: TObject);
begin
 Case Mom_Type of
  0 : Begin
       If (frmMain.FindComponent('frmNaklIn')=nil) then
        frmNaklIn := TfrmNaklIn.Create(frmMain);
       If (frmNaklIn.PageControl1.ActivePageIndex<>1) then
        frmNaklIn.PageControl1.ActivePageIndex := 1;
       frmNaklIn.ibdsMainPrimaryTovarIncome.Close;
       frmNaklIn.ibdsMainPrimaryTovarIncomeBody.Close;
       frmNaklIn.ibdsMainPrimaryTovarIncome.ParamByName('ID').AsInt64 := Mom_ID;
       frmNaklIn.ibdsMainPrimaryTovarIncome.Open;
       frmNaklIn.ibdsMainPrimaryTovarIncomeBody.Open;
       frmNaklIn.Show
      End;
  1 : Begin
       If (frmMain.FindComponent('frmNaklOut')=nil) then
        frmNaklOut := TfrmNaklOut.Create(frmMain);
       If (frmNaklOut.PageControl1.ActivePageIndex<>1) then
        frmNaklOut.PageControl1.ActivePageIndex := 1;
       frmNaklOut.ibdsMainPrimaryTovarOutcome.Close;
       frmNaklOut.ibdsMainPrimaryTovarOutcomeBody.Close;
       frmNaklOut.ibdsMainPrimaryTovarOutcome.ParamByName('ID').AsInt64 := Mom_ID;
       frmNaklOut.ibdsMainPrimaryTovarOutcome.Open;
       frmNaklOut.ibdsMainPrimaryTovarOutcomeBody.Open;
       frmNaklOut.Show
      End;
  2 : Begin
        TempIn_Out := 2;
        If (frmMain.FindComponent('frmInvoiceIn')=nil) then
         Begin
          Invoice_ID := Mom_ID;
          frmInvoiceIn := TfrmInvoice.Create(frmMain);
          frmInvoiceIn.Name := 'frmInvoiceIn'
         End
        else
         Begin
          If (frmInvoiceIn.PageControl1.ActivePageIndex<>1) then
           frmInvoiceIn.PageControl1.ActivePageIndex := 1;
          frmInvoiceIn.ibdsMainInvoice.Close;
          frmInvoiceIn.ibdsMainInvoice.ParamByName('ID').AsInt64 := Mom_ID;
          frmInvoiceIn.ibdsMainInvoice.Open
         End;
        frmInvoiceIn.Show
       End;
  3 : Begin
        TempIn_Out := 1;
        If (frmMain.FindComponent('frmInvoiceOut')=nil) then
         Begin
          Invoice_ID := Mom_ID;
          frmInvoiceOut := TfrmInvoice.Create(frmMain);
          frmInvoiceOut.Name := 'frmInvoiceOut'
         End
        else
         Begin
          If (frmInvoiceOut.PageControl1.ActivePageIndex<>1) then
           frmInvoiceOut.PageControl1.ActivePageIndex := 1;
          frmInvoiceOut.ibdsMainInvoice.Close;
          frmInvoiceOut.ibdsMainInvoice.ParamByName('ID').AsInt64 := Mom_ID;
          frmInvoiceOut.ibdsMainInvoice.Open
         End;
        frmInvoiceOut.Show
      End
 end;
end;

procedure TfrmFactura.sbFilterFacturaListClick(Sender: TObject);
begin
 pnlFilter.Visible := sbFilterFacturaList.Down;
 pnlText.Visible := sbFilterFacturaList.Down;
 If ((cbPeriod.Checked) and (sbFilterFacturaList.Down)) or NOT (sbFilterFacturaList.Down) then
  Begin
   Cursor := crHourGlass;
   ibdsMainFacturaList.Close;
   GenerateSelectMainFacturaList;
   ibdsMainFacturaList.Open;
   Cursor := crDefault
  End 
end;

procedure TfrmFactura.sbReFilterClick(Sender: TObject);
begin
 sbFilterFacturaList.Click;
 sbReFilter.Visible := False
end;

procedure TfrmFactura.SpeedButton5Click(Sender: TObject);
begin
 SpeedButton5.Visible := Not SpeedButton5.Visible;
 SpeedButton3.Visible := Not SpeedButton3.Visible;
 pnlText.Visible := False;
 pnlFilter.Visible := Not pnlFilter.Visible;
 pnlText.Visible := True
end;

procedure TfrmFactura.cbPeriodClick(Sender: TObject);
begin
 sbReFilter.Visible := True
end;

function TfrmFactura.GetWhereMainFacturaList: String;
begin
 Result := '';
 If (sbFilterFacturaList.Down) then
  Begin
   lblFilter.Caption := '';
   If (cbPeriod.Checked) and (deDateStart.Text<>'') and (deDateStop.Text<>'') then
    Begin
     Result := Result+'and (F.FACTURA_DATE>='#39+deDateStart.Text+#39') and (F.FACTURA_DATE<='#39+deDateStop.Text+#39') ';
     lblFilter.Caption := lblFilter.Caption+'За период с '+deDateStart.Text+' по '+deDateStop.Text+'; '
    End;
   If (cbType.Checked) and (edType.ItemIndex<>-1) then
    Begin
     If (edType.ItemIndex>0) then
      Result := Result+'and (F.PARENT_TYPE='+IntToStr(edType.ItemIndex+2)+') '
     else
      Result := Result+'and (F.PARENT_TYPE='+IntToStr(edType.ItemIndex+1)+') ';
     lblFilter.Caption := lblFilter.Caption+'Тип: '+edType.Text+'; '
    End;
   lblFilter.Caption := Trim(lblFilter.Caption);
   pnlText.Visible := True;
   lblFilter.AutoSize := True
  End
end;

procedure TfrmFactura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 If (Black) then
  Begin
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('delete from FILTERS where (PERSON_ID='+IntToStr(PersonID)+') and (FORM_NAME='#39+(Sender as TForm).Caption+#39')');
   ibsAux.ExecQuery;
   If (sbFilterFacturaList.Down) then
    Begin
     ibsAux.SQL.Clear;
     ibsAux.SQL.Add('insert into FILTERS (PERSON_ID, FORM_NAME, FILTER_NAME, CHEKED, FILTER_VALUE)');
     ibsAux.SQL.Add('values (:PERSON_ID, :FORM_NAME, :FILTER_NAME, 1, :FILTER_VALUE)');
     ibsAux.GenerateParamNames := True;
     ibsAux.ParamByName('PERSON_ID').Value := PersonID;
     ibsAux.ParamByName('FORM_NAME').Value := (Sender as TForm).Caption;
     If (cbPeriod.Checked) then
      Begin
       ibsAux.ParamByName('FILTER_NAME').Value := cbPeriod.Name+'/Start';
       ibsAux.ParamByName('FILTER_VALUE').Value := deDateStart.Text;
       ibsAux.ExecQuery;
       ibsAux.ParamByName('FILTER_NAME').Value := cbPeriod.Name+'/Stop';
       ibsAux.ParamByName('FILTER_VALUE').Value := deDateStop.Text;
       ibsAux.ExecQuery
      End
    End;
   ibsAux.Close
  End;
 inherited;
 frmFactura := nil
end;

procedure TfrmFactura.sbRefreashFacturaListClick(Sender: TObject);
 var BookMark : Int64;
begin
 IDParent := 0;
 BookMark := ibdsMainFacturaListID.Value;
 ibdsMainFacturaList.Close;
 GenerateSelectMainFacturaList;
 ibdsMainFacturaList.Open;
 ibdsMainFacturaList.Locate('ID',IntToStr(BookMark),[])
end;

end.

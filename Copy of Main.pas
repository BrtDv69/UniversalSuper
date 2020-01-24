unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Buttons, ToolWin, ComCtrls, ExtCtrls, fcStatusBar,
  ImgList, ActnList, fcClearPanel, fcButtonGroup, fcButton, fcImgBtn,
  fcShapeBtn, FR_DCtrl, FR_IBXDB, FR_DSet, FR_DBSet, FR_Desgn, FR_Class,
  FR_E_CSV, FR_E_IRTF, FR_E_IHTM, FR_E_TXT, IBDatabase, IBSQL, Db, IBCustomDataSet,
  FR_E_RTF, XLSExport, cxStyles, cxClasses, cxGridTableView, cxLookAndFeels,
  dxBar, dxBarExtItems;
type
  TfrmMain = class(TForm)
    StatusBar: TfcStatusBar;
    ImageList1: TImageList;
    Image1: TImage;
    Image2: TImage;
    Documents: TActionList;
    ImageList2: TImageList;
    aAgreements: TAction;
    aInvoiceIn: TAction;
    aInvoiceOut: TAction;
    aNaklIn: TAction;
    aNaklOut: TAction;
    aOrdersIn: TAction;
    aOrdersOut: TAction;
    aPlatIn: TAction;
    aPlatOut: TAction;
    aSend: TAction;
    aRecieve: TAction;
    aOst: TAction;
    aSklUchet: TAction;
    aRashod: TAction;
    aMovement: TAction;
    aIn_Out: TAction;
    aSellCount: TAction;
    aPostavschiki: TAction;
    aKontrAgList: TAction;
    aDebtors: TAction;
    aDebt: TAction;
    aCompositVed: TAction;
    aSearch: TAction;
    aBanks: TAction;
    aOrganizations: TAction;
    aPeoples: TAction;
    aArticuls: TAction;
    aReasons: TAction;
    aPercentKonsign: TAction;
    aCountries: TAction;
    aIBAdmin: TAction;
    aUsersRights: TAction;
    cxLookAndFeelController1: TcxLookAndFeelController;
    cxStyleRepository: TcxStyleRepository;
    stHeader: TcxStyle;
    stPreview: TcxStyle;
    cxIncSearch: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    dxBarManager: TdxBarManager;
    N10: TdxBarButton;
    N16: TdxBarButton;
    N17: TdxBarButton;
    N65: TdxBarButton;
    N12: TdxBarSubItem;
    N18: TdxBarButton;
    N19: TdxBarButton;
    N13: TdxBarSubItem;
    N14: TdxBarButton;
    N20: TdxBarButton;
    N15: TdxBarSubItem;
    N23: TdxBarButton;
    N24: TdxBarButton;
    N22: TdxBarSubItem;
    N49: TdxBarButton;
    N50: TdxBarButton;
    N1: TdxBarSubItem;
    N25: TdxBarButton;
    N33: TdxBarButton;
    N66: TdxBarButton;
    N61: TdxBarButton;
    N62: TdxBarButton;
    N35: TdxBarSubItem;
    N27: TdxBarButton;
    N28: TdxBarButton;
    N56: TdxBarButton;
    N30: TdxBarButton;
    N31: TdxBarButton;
    N74: TdxBarButton;
    N26: TdxBarSubItem;
    N37: TdxBarButton;
    N40: TdxBarButton;
    N57: TdxBarButton;
    N38: TdxBarButton;
    N64: TdxBarButton;
    N36: TdxBarSubItem;
    N48: TdxBarButton;
    N2: TdxBarSubItem;
    N52: TdxBarButton;
    N34: TdxBarButton;
    N58: TdxBarButton;
    N42: TdxBarButton;
    N59: TdxBarButton;
    N60: TdxBarButton;
    N45: TdxBarButton;
    N46: TdxBarButton;
    N3: TdxBarSubItem;
    N53: TdxBarButton;
    N54: TdxBarButton;
    N68: TdxBarButton;
    N4: TdxBarSubItem;
    N6: TdxBarButton;
    N8: TdxBarButton;
    N72: TdxBarButton;
    N5: TdxBarSubItem;
    N9: TdxBarButton;
    lbInvoiceIn: TdxBarLargeButton;
    lbInvoiceOut: TdxBarLargeButton;
    lbNaklIn: TdxBarLargeButton;
    lbNaklOut: TdxBarLargeButton;
    lbOrdersIn: TdxBarLargeButton;
    lbOrdersOut: TdxBarLargeButton;
    lbPlatIn: TdxBarLargeButton;
    lbPlatOut: TdxBarLargeButton;
    ImageList3: TImageList;
    procedure N6Click(Sender: TObject);
    procedure aOstExecute(Sender: TObject);
    procedure aSklUchetExecute(Sender: TObject);
    procedure aRashodExecute(Sender: TObject);
    procedure aMovementExecute(Sender: TObject);
    procedure aBanksExecute(Sender: TObject);
    procedure aOrganizationsExecute(Sender: TObject);
    procedure aPeoplesExecute(Sender: TObject);
    procedure aArticulsExecute(Sender: TObject);
    procedure aReasonsExecute(Sender: TObject);
    procedure aPercentKonsignExecute(Sender: TObject);
    procedure aCountriesExecute(Sender: TObject);
    procedure aIBAdminExecute(Sender: TObject);
    procedure aUsersRightsExecute(Sender: TObject);
    procedure aIn_OutExecute(Sender: TObject);
    procedure aSellCountExecute(Sender: TObject);
    procedure aPostavschikiExecute(Sender: TObject);
    procedure aKontrAgListExecute(Sender: TObject);
    procedure aSearchExecute(Sender: TObject);
    procedure aDebtorsExecute(Sender: TObject);
    procedure aDebtExecute(Sender: TObject);
    procedure aCompositVedExecute(Sender: TObject);
    procedure aAgreementsExecute(Sender: TObject);
    procedure aInvoiceInExecute(Sender: TObject);
    procedure aInvoiceOutExecute(Sender: TObject);
    procedure aNaklInExecute(Sender: TObject);
    procedure aNaklOutExecute(Sender: TObject);
    procedure aOrdersInExecute(Sender: TObject);
    procedure aOrdersOutExecute(Sender: TObject);
    procedure aPlatInExecute(Sender: TObject);
    procedure aPlatOutExecute(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N62Click(Sender: TObject);
    procedure PopUpMenuItemClick(Sender: TObject);
    procedure N65Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure StatusBarPanels3DblClick(Sender: TObject);
    procedure N66Click(Sender: TObject);
    procedure N68Click(Sender: TObject);
    procedure N57Click(Sender: TObject);
    procedure N64Click(Sender: TObject);
    procedure TaskBarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N72Click(Sender: TObject);
    procedure N74Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBRefreashClick(Sender: TObject);
    procedure dxBarManagerBarDockingStyleChange(Sender: TdxBarManager;
      ABar: TdxBar);
  private
    { Private declarations }
    procedure WMHotKey(var Message: TMessage); message WM_HOTKEY;
    procedure SetMaxSize;
  public
    { Public declarations }
  end;

  TFormPointers = record
   PTabs, PForms : Pointer;
  end;

var
  frmMain: TfrmMain;

implementation

uses Organizations, Like, Banks, Peoples, Articuls, Reasons, Countries,
  KonsignSetup, IBAdmin, UsersRights, Tovar, StoreUchet, Outcome, Movement,
  In_Out, SellCount, Postavschiki, Search, KontrAgList, Debtors,
  Debt, CompositVed, Agreements, Invoice, NaklOut, NaklIn, Plat, Misk,
  Currency, DM, Factura, InnerInvoice, ManyMovement, PswdChange, Garant,
  ContragOborotHistory, BuysPlaning;

{$R *.DFM}

procedure TfrmMain.N6Click(Sender: TObject);
begin
 Close
end;

procedure TfrmMain.aOstExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmTovar')=nil) then
  frmTovar := TfrmTovar.Create(frmMain) ;
 frmTovar.Show
end;

procedure TfrmMain.aSklUchetExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmStoreUchet')=nil) then
  frmStoreUchet := TfrmStoreUchet.Create(frmMain);
 frmStoreUchet.Show
end;

procedure TfrmMain.aRashodExecute(Sender: TObject);
begin
 frmOutcome := TfrmOutcome.Create(frmMain);
 frmOutcome.Show
end;

procedure TfrmMain.aMovementExecute(Sender: TObject);
begin
 frmMovement := TfrmMovement.Create(frmMain);
 frmMovement.Show
end;

procedure TfrmMain.aBanksExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmBanks')=nil) then
  frmBanks := TfrmBanks.Create(frmMain);
 frmBanks.Show
end;

procedure TfrmMain.aOrganizationsExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmOrganizations')=nil) then
  frmOrganizations := TfrmOrganizations.Create(frmMain) ;
 frmOrganizations.Show
end;

procedure TfrmMain.aPeoplesExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmPeoples')=nil) then
  frmPeoples := TfrmPeoples.Create(frmMain) ;
 frmPeoples.Show
end;

procedure TfrmMain.aArticulsExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmArticuls')=nil) then
  frmArticuls := TfrmArticuls.Create(frmMain);
 frmArticuls.Show
end;

procedure TfrmMain.aReasonsExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmReasons')=nil) then
  frmReasons := TfrmReasons.Create(frmMain) ;
 frmReasons.Show
end;

procedure TfrmMain.aPercentKonsignExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmPercentKonsign')=nil) then
  frmPercentKonsign := TfrmPercentKonsign.Create(frmMain) ;
 frmPercentKonsign.Show
end;

procedure TfrmMain.aCountriesExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmCountries')=nil) then
  frmCountries := TfrmCountries.Create(frmMain) ;
 frmCountries.Show
end;

procedure TfrmMain.aIBAdminExecute(Sender: TObject);
begin
 frmIBAdmin := TfrmIBAdmin.Create(frmMain) ;
 frmIBAdmin.Show
end;

procedure TfrmMain.aUsersRightsExecute(Sender: TObject);
 var k : Integer;
begin
 For k := 0 to Pred(frmMain.ComponentCount) do
  If (frmMain.Components[k] is TfrmUsersRights) then
   Begin
    (frmMain.Components[k] as TfrmUsersRights).Show;
    Exit
   End;
 frmUsersRights := TfrmUsersRights.Create(frmMain) ;
 frmUsersRights.Show
end;

procedure TfrmMain.aIn_OutExecute(Sender: TObject);
begin
 frmIn_Out := TfrmIn_Out.Create(frmMain) ;
 frmIn_Out.Show
end;

procedure TfrmMain.aSellCountExecute(Sender: TObject);
begin
 frmSellCount := TfrmSellCount.Create(frmMain) ;
 frmSellCount.Show
end;

procedure TfrmMain.aPostavschikiExecute(Sender: TObject);
begin
 frmPostavschiki := TfrmPostavschiki.Create(frmMain) ;
 frmPostavschiki.Show
end;

procedure TfrmMain.aKontrAgListExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmKontrAgList')=nil) then
  frmKontrAgList := TfrmKontrAgList.Create(frmMain);
 frmKontrAgList.Show
end;

procedure TfrmMain.aSearchExecute(Sender: TObject);
begin
 frmSearch := TfrmSearch.Create(frmMain) ;
 frmSearch.Show
end;

procedure TfrmMain.aDebtorsExecute(Sender: TObject);
begin
 frmDebtors := TfrmDebtors.Create(frmMain) ;
 frmDebtors.Show
end;

procedure TfrmMain.aDebtExecute(Sender: TObject);
begin
 frmDebt := TfrmDebt.Create(frmMain) ;
 frmDebt.Show
end;

procedure TfrmMain.aCompositVedExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmCompositVed')=nil) then
  frmCompositVed := TfrmCompositVed.Create(frmMain);
 frmCompositVed.Show
end;

procedure TfrmMain.aAgreementsExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmAgreements')=nil) then
  frmAgreements := TfrmAgreements.Create(frmMain) ;
 frmAgreements.Show
end;

procedure TfrmMain.aInvoiceInExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmInvoiceIn')=nil) then
  Begin
   TempIn_Out := 2;
   frmInvoiceIn := TfrmInvoice.Create(frmMain);
  End;
 frmInvoiceIn.Show
end;

procedure TfrmMain.aInvoiceOutExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmInvoiceOut')=nil) then
  Begin
   TempIn_Out := 1;
   frmInvoiceOut := TfrmInvoice.Create(frmMain);
  End;
 frmInvoiceOut.Show
end;

procedure TfrmMain.aNaklInExecute(Sender: TObject);
 var k : Integer;
begin
 For k := 0 to Pred(frmMain.ComponentCount) do
  If (frmMain.Components[k] is TfrmNaklIn) then
   Begin
    (frmMain.Components[k] as TfrmNaklIn).Show;
    Exit
   End;
 frmNaklIn := TfrmNaklIn.Create(frmMain) ;
 frmNaklIn.Show
end;

procedure TfrmMain.aNaklOutExecute(Sender: TObject);
 var k : Integer;
begin
 For k := 0 to Pred(frmMain.ComponentCount) do
  If (frmMain.Components[k] is TfrmNaklOut) then
   Begin
    (frmMain.Components[k] as TfrmNaklOut).Show;
    Exit
   End;
 frmNaklOut := TfrmNaklOut.Create(frmMain) ;
 frmNaklOut.Show
end;

procedure TfrmMain.aOrdersInExecute(Sender: TObject);
 var k : Integer;
begin
 For k := 0 to Pred(frmMain.ComponentCount) do
  If (frmMain.Components[k] is TfrmPlat) then
   If ((frmMain.Components[k] as TfrmPlat).Nal_In=3) then
    Begin
     (frmMain.Components[k] as TfrmPlat).Show;
     Exit
    End;
 TempNal_In := 3;
 frmPlat := TfrmPlat.Create(frmMain);
 frmPlat.Show
end;

procedure TfrmMain.aOrdersOutExecute(Sender: TObject);
 var k : Integer;
begin
 For k := 0 to Pred(frmMain.ComponentCount) do
  If (frmMain.Components[k] is TfrmPlat) then
   If ((frmMain.Components[k] as TfrmPlat).Nal_In=2) then
    Begin
     (frmMain.Components[k] as TfrmPlat).Show;
     Exit
    End;
 TempNal_In := 2;
 frmPlat := TfrmPlat.Create(frmMain);
 frmPlat.Show
end;

procedure TfrmMain.aPlatInExecute(Sender: TObject);
 var k : Integer;
begin
 For k := 0 to Pred(frmMain.ComponentCount) do
  If (frmMain.Components[k] is TfrmPlat) then
   If ((frmMain.Components[k] as TfrmPlat).Nal_In=1) then
    Begin
     (frmMain.Components[k] as TfrmPlat).Show;
     Exit
    End;
 TempNal_In := 1;
 frmPlat := TfrmPlat.Create(frmMain);
 frmPlat.Show
end;

procedure TfrmMain.aPlatOutExecute(Sender: TObject);
 var k : Integer;
begin
 For k := 0 to Pred(frmMain.ComponentCount) do
  If (frmMain.Components[k] is TfrmPlat) then
   If ((frmMain.Components[k] as TfrmPlat).Nal_In=0) then
    Begin
     (frmMain.Components[k] as TfrmPlat).Show;
     Exit
    End;
 TempNal_In := 0;
 frmPlat := TfrmPlat.Create(frmMain);
 frmPlat.Show
end;

procedure TfrmMain.N34Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmCurrency')=nil) then
  frmCurrency := TfrmCurrency.Create(frmMain);
 frmCurrency.Show
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
 var k : Integer;
begin
 try
  For k := 0 to Pred(ComponentCount) do
   If (Components[k] is TForm) then
    (Components[k] as TForm).Close
 except
  frmDM.dbMain.ForceClose;
  frmDM.dbWhite.ForceClose;
  frmDM.dbGenerators.ForceClose
 end
end;

procedure TfrmMain.N62Click(Sender: TObject);
 var k : Integer;
begin
 For k := 0 to Pred(frmMain.ComponentCount) do
  If (frmMain.Components[k] is TfrmFactura) then
   Begin
    (frmMain.Components[k] as TfrmFactura).Show;
    Exit
   End;
 frmFactura := TfrmFactura.Create(frmMain);
 frmFactura.Show
end;

procedure TfrmMain.PopUpMenuItemClick(Sender: TObject);
begin
 If ((Sender as TMenuItem).Caption='Книга продаж') then
  frmDM.frDBDataSet1.DataSet := frmFactura.ibdsMainFacturaList;
 If ((Sender as TMenuItem).Caption='Остатки по складам') then
  Begin
   frmTovar.GenerateSelectReportByStoresBody;
   If NOT(frmTovar.cbAllStores.Checked) then
    frmTovar.ibdsStoresFilter.Filtered := True;
   frmTovar.ibdsReportByStoresBody.Open;
   frmDM.frDBDataSet1.DataSet := frmTovar.ibdsStoresFilter;
   frmDM.frDBDataSet2.DataSet := frmTovar.ibdsReportByStoresBody;
   frmDM.frReport1.Dictionary.DisabledDatasets.Delete(frmDM.frReport1.Dictionary.DisabledDatasets.IndexOf('frmTovar.ibdsStoresFilter'));
   frmDM.frReport1.Dictionary.DisabledDatasets.Delete(frmDM.frReport1.Dictionary.DisabledDatasets.IndexOf('frmTovar.ibdsReportByStoresBody'))
  End;
 If ((Sender as TMenuItem).Caption='Список счетов с составом') then
  Begin
   frmInvoiceOut.ibdsMainInvoiceBody.DataSource := frmInvoiceOut.dsMainInvoicesList;
   frmInvoiceOut.ibdsMainInvoiceBody.Open;
   frmDM.frDBDataSet2.DataSet := frmInvoiceOut.ibdsMainInvoiceBody;
   frmDM.frReport1.Dictionary.DisabledDatasets.Delete(frmDM.frReport1.Dictionary.DisabledDatasets.IndexOf('frmInvoiceOut.ibdsMainInvoiceBody'))
  End;
 If ((Sender as TMenuItem).Caption='Детализированный список со счетами') then
  Begin
   frmCompositVed.ibdsBalans.Open;
   frmDM.frDBDataSet2.DataSet := frmCompositVed.ibdsBalans;
   frmDM.frReport1.Dictionary.DisabledDatasets.Delete(frmDM.frReport1.Dictionary.DisabledDatasets.IndexOf('frmCompositVed.ibdsBalans'))
  End;
 If ((Sender as TMenuItem).Caption='Информация по гарантийному обслуживанию') then
  Begin
   frmGarant.ibdsGarant.Open;
   frmDM.frDBDataSet2.DataSet := frmGarant.ibdsGarant;
   frmDM.frReport1.Dictionary.DisabledDatasets.Delete(frmDM.frReport1.Dictionary.DisabledDatasets.IndexOf('frmGarant.ibdsGarant'))
  End;
 If ((Sender as TMenuItem).Tag=0) then
  With frmDM do
   Begin
    InputQuery('Новый отчет','Введите название нового отчета:',frmDM.frReport1.FileName);
    trMain.StartTransaction;
    ibsGen_ID.SQL.Clear;
    ibsGen_ID.SQL.Add('select gen_id(GEN_ID_REPORTS,1) from rdb$database');
    ibsGen_ID.ExecQuery;
    ibdsReport.ParamByName('ID').Value := ibsGen_ID.FieldByName('Gen_ID').AsInteger;
    ibsGen_ID.Close;
    ibdsReport.Open;
    ibdsReport.Append;
    ibdsReportID.Value := ibdsReport.ParamByName('ID').AsInteger;
    ibdsReportBLACK.Value := 0;
    ibdsReportREPORT_NAME.Value := frReport1.FileName;
    ibsGen_ID.SQL.Clear;
    ibsGen_ID.SQL.Add('select gen_id(GEN_ID_REPORTS_SHOWING,1) from rdb$database');
    ibsGen_ID.ExecQuery;
    ibdsShow.Open;
    ibdsShow.Append;
    ibdsShowID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInteger;
    ibsGen_ID.Close;
    ibdsShowREPORT_ID.Value := ibdsReportID.Value;
    ibdsShowFORM_NAME.Value := Copy((Sender as TMenuItem).Owner.Owner.Owner.ClassName,2,Pred(Length((Sender as TMenuItem).Owner.Owner.Owner.ClassName)))+'/'+(Sender as TMenuItem).Owner.Owner.Name+'/'+IntToStr((Sender as TMenuItem).Owner.Owner.Tag);
    If (frReport1.DesignReport=mrOK) then
     try
      ibdsReport.ApplyUpdates;
      ibdsShow.ApplyUpdates;
      trMain.Commit
     except
      trMain.Rollback;
      MessageDlg('Ошибка сохранения, последние изменения сохранены не были.', mtError, [mbOK],0)
     end
    else
     trMain.Rollback;
   End
 else
  With frmDM do
   Begin
    ibdsReport.ParamByName('ID').Value := (Sender as TMenuItem).Tag;
    ibdsReport.Open;
    frReport1.LoadFromBlobField(ibdsReportREPORT);
    frReport1.FileName := ibdsReportREPORT_NAME.Value;
    If (GetKeyState(VK_CONTROL)<0) then
     Begin
      If (frReport1.DesignReport=mrOK) then
       try
        ibdsReport.ApplyUpdates;
        trMain.Commit
       except
        trMain.Rollback;
        MessageDlg('Ошибка сохранения, последние изменения сохранены не были.', mtError, [mbOK],0)
       end
      else
       trMain.Rollback;
      frReport1.Clear
     End
    else
     Begin
      ibdsReport.ParamByName('ID').Value := (Sender as TMenuItem).Tag;
      ibdsReport.Open;
      frReport1.LoadFromBlobField(ibdsReportREPORT);
      frReport1.FileName := ibdsReportREPORT_NAME.Value;
      frReport1.ShowReport;
      frReport1.Clear;
      trMain.Commit
     End
   End;
 If ((Sender as TMenuItem).Caption='Остатки по складам') then
  Begin
   frmTovar.ibdsReportByStoresBody.Close;
   frmTovar.ibdsStoresFilter.Filtered := False
  End;
 If ((Sender as TMenuItem).Caption='Список счетов с составом') then
  Begin
   frmInvoiceOut.ibdsMainInvoiceBody.DataSource := nil;
   frmInvoiceOut.ibdsMainInvoiceBody.Close
  End;
 If ((Sender as TMenuItem).Caption='Детализированный список со счетами') then
  frmCompositVed.ibdsBalans.Close;
 If ((Sender as TMenuItem).Caption='Информация по гарантийному обслуживанию') then
  frmGarant.ibdsGarant.Close;
 (Sender as TMenuItem).Owner.Free
end;

procedure TfrmMain.N65Click(Sender: TObject);
 var k : Integer;
begin
 For k := 0 to Pred(frmMain.ComponentCount) do
  If (frmMain.Components[k] is TfrmInnerInvoice) then
   Begin
    (frmMain.Components[k] as TfrmInnerInvoice).Show;
    Exit
   End;
 frmInnerInvoice := TfrmInnerInvoice.Create(frmMain);
 frmInnerInvoice.Show
end;

procedure TfrmMain.FormPaint(Sender: TObject);
begin
 StatusBar.Refresh
end;

procedure TfrmMain.StatusBarPanels3DblClick(Sender: TObject);
begin
{ Constraints.MinHeight := 0;
 Constraints.MaxHeight := 0;
 TaskBar.Align := alTop;
 WindowState := wsNormal;
 WindowState := wsMaximized}
end;

procedure TfrmMain.N66Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmManyMovement')=nil) then
  frmManyMovement := TfrmManyMovement.Create(frmMain);
 frmManyMovement.Show
end;

procedure TfrmMain.N68Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmPswdChange')=nil) then
  frmPswdChange := TfrmPswdChange.Create(frmMain);
 frmPswdChange.Show
end;

procedure TfrmMain.N57Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmGarant')=nil) then
  frmGarant := TfrmGarant.Create(frmMain);
 frmGarant.Show
end;

procedure TfrmMain.N64Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmContragOborotHistory')=nil) then
  frmContragOborotHistory := TfrmContragOborotHistory.Create(frmMain);
 frmContragOborotHistory.Show
end;

procedure TfrmMain.TaskBarClick(Sender: TObject);
 var F : TForm;
begin
 F := TForm(TComponent(Sender).Tag);
 With F do
  Begin
   BringToFront;
   If (WindowState=wsMinimized) then
    ShowWindow(Handle,SW_RESTORE);
  End
end;

procedure TfrmMain.FormActivate(Sender: TObject);
begin
 RegisterHotKey(Handle,123,MOD_CONTROL,VK_F5)
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
 UnregisterHotKey(Handle, 123)
end;

procedure TfrmMain.WMHotKey(var Message: TMessage);
begin
 Application.Restore;
 Application.BringToFront
end;

procedure TfrmMain.N72Click(Sender: TObject);
 var k : Integer;
begin
 For k := 0 to Pred(ComponentCount) do
  If (Components[k] is TForm) then
   SafeFormPlace(Components[k] as TForm)
end;

procedure TfrmMain.N74Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmBuysPlaning')=nil) then
  frmBuysPlaning := TfrmBuysPlaning.Create(frmMain);
 frmBuysPlaning.Show
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
 SetMaxSize;
 LocaliseDevEx
end;

procedure TfrmMain.BBRefreashClick(Sender: TObject);
 var saveCursor : TCursor;
     k : Integer;
begin
 saveCursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;
 try
   frmDM.tmEventBlinking.Enabled := False;
   With dxBarManager.Bars[2].ItemLinks do
    For k := Pred(AvailableItemCount) downto 0  do
     If (Items[k].Item.Name = 'bbRefreash') then
      Items[k].Item.Free;
   frmMain.FindComponent('bbRefreash').Free;
   frmDM.ibdsArticuls.Close;
   frmDM.ibdsArticuls.Open;
   frmDM.ibdsArticuls.FetchAll;
 finally
 	Screen.Cursor := saveCursor;
 end;
end;

procedure TfrmMain.SetMaxSize;
 var k, i, OldMaxHeight : Integer;
begin
 i := 0;
 For k := 0 to Pred(dxBarManager.Bars.Count) do
  If (dxBarManager.Bars[k].Visible) and (dxBarManager.Bars[k].DockingStyle<>dsNone) then
   i := i+dxBarManager.Bars[k].Control.BoundsRect.Bottom-dxBarManager.Bars[k].Control.BoundsRect.Top;
 OldMaxHeight := Constraints.MaxHeight;
 Constraints.MaxHeight := (Height-ClientHeight)+i+StatusBar.Height;
 Constraints.MinHeight := Constraints.MaxHeight;
 For k := 0 to Pred(ComponentCount) do
  If (Components[k] is TForm) then
   If ((Components[k] as TForm).WindowState=wsMaximized) then
    Begin
     (Components[k] as TForm).WindowState := wsNormal;
     (Components[k] as TForm).WindowState := wsMaximized
    End
   else
    Begin
     (Components[k] as TForm).Height := (Components[k] as TForm).Height-
                                        Constraints.MaxHeight+OldMaxHeight;
     (Components[k] as TForm).Top := (Components[k] as TForm).Top+
                                      Constraints.MaxHeight-OldMaxHeight
    End
end;

procedure TfrmMain.dxBarManagerBarDockingStyleChange(Sender: TdxBarManager;
  ABar: TdxBar);
begin
 SetMaxSize
end;

end.

program Universal;

{%ToDo 'Universal.todo'}

uses
  Forms,
  Dialogs,
  Controls,
  Classes,
  Main in 'Main.pas' {frmMain},
  Like in 'Like.pas' {frmLike},
  Organizations in 'Organizations.pas' {frmOrganizations},
  Banks in 'Banks.pas' {frmBanks},
  Peoples in 'Peoples.pas' {frmPeoples},
  Articuls in 'Articuls.pas' {frmArticuls},
  Reasons in 'Reasons.pas' {frmReasons},
  Countries in 'Countries.pas' {frmCountries},
  UsersRights in 'UsersRights.pas' {frmUsersRights},
  Tovar in 'Tovar.pas' {frmTovar},
  StoreUchet in 'StoreUchet.pas' {frmStoreUchet},
  KontrAgList in 'KontrAgList.pas' {frmKontrAgList},
  CompositVed in 'CompositVed.pas' {frmCompositVed},
  Invoice in 'Invoice.pas' {frmInvoice},
  NaklOut in 'NaklOut.pas' {frmNaklOut},
  NaklIn in 'NaklIn.pas' {frmNaklIn},
  Plat in 'Plat.pas' {frmPlat},
  DM in 'DM.pas' {frmDM: TDataModule},
  LogIn in 'LogIn.pas' {frmLogIn},
  Misk in 'Misk.pas',
  Currency in 'Currency.pas' {frmCurrency},
  ChoiseCopy in 'ChoiseCopy.pas' {frmChoiseCopy},
  Factura in 'Factura.pas' {frmFactura},
  InnerInvoice in 'InnerInvoice.pas' {frmInnerInvoice},
  GoodInfo in 'GoodInfo.pas' {frmGoodInfo},
  Sostav in 'Sostav.pas' {frmSostav},
  SearchArticuls in 'SearchArticuls.pas' {frmSearchArticuls},
  ManyMovement in 'ManyMovement.pas' {frmManyMovement},
  PswdChange in 'PswdChange.pas' {frmPswdChange},
  Garant in 'Garant.pas' {frmGarant},
  LastBuyPrice in 'LastBuyPrice.pas' {frmLastBuyPrice},
  ContragOborotHistory in 'ContragOborotHistory.pas' {frmContragOborotHistory},
  SerialNumbers in 'SerialNumbers.pas' {frmSerialNumbers},
  BuysPlaning in 'BuysPlaning.pas' {frmBuysPlaning},
  ExportOptions in 'ExportOptions.pas' {frmExportOptions},
  MagicPurchase in 'MagicPurchase.pas' {frmMagicPurchase},
  ComplectDetails in 'ComplectDetails.pas' {frmComplectDetails},
  Requests in 'Requests.pas' {frmRequests},
  ShowIBException in 'ShowIBException.pas',
  GetStore in 'GetStore.pas' {frmGetStore};

{$R *.RES}
var kg : Integer;

begin
 If (GetPaths(Path1, Path2, Path3)) then
  Begin
   Application.Initialize;
   Path2 := DecodeStr(DeCodeStr(Path2,'Path2'),GenPswd);
   Application.Title := 'Universal';
   Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmLogIn, frmLogIn);
  frmLogIn.ShowModal;
   frmMain.Constraints.MaxHeight := frmMain.Constraints.MinHeight;
   If (frmLogIn.ModalResult=mrOK) then
    Begin
     Path1 := DecodeStr(DeCodeStr(Path1,'Path1'),GenPswd);
     If (Black) then
      Begin
       Path2 := DecodeStr(DeCodeStr(Path2,'Path2'),GenPswd);
       frmMain.StatusBar.Panels[0].Width := '35'
      End
     else
      frmMain.StatusBar.Panels[0].Width := '19';
     frmMain.StatusBar.Panels[1].Text := frmLogIn.lcUserName.Text;
     frmLogIn.Free;
     Application.CreateForm(TfrmDM, frmDM);
     If (Black) then
      DefParamsBlack.Free;
     DefParams.Free;
     If NOT (Black) then
      For kg := Pred(frmMain.ComponentCount) downto 0 do
       If (frmMain.Components[kg].Tag=99) then
        frmMain.Components[kg].Free;
     Application.Run;
    End
   else
    Begin
     frmLogIn.Free;
     frmMain.Free
    End
  End
 Else
  MessageDlg('Программный продукт не установлен. Воспользуйтесь программой установки.',mtError,[mbOK],0)
end.

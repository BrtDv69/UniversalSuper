unit GetStore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, StdCtrls, DB, IBCustomDataSet, ExtCtrls;

type
  TfrmGetStore = class(TForm)
    ibdsStores: TIBDataSet;
    ibdsStoresFULL_NAME: TIBStringField;
    ibdsStoresID: TLargeintField;
    dsStores: TDataSource;
    Panel1: TPanel;
    Label11: TLabel;
    lcbStore: TcxLookupComboBox;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGetStore: TfrmGetStore;

implementation

uses Invoice, DM;

{$R *.dfm}

procedure TfrmGetStore.SpeedButton1Click(Sender: TObject);
begin
 ModalResult := mrOK
end;

end.

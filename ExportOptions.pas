unit ExportOptions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxCheckBox, cxControls, cxContainer, cxEdit, cxRadioGroup,
  StdCtrls, cxButtons, RzBckgnd, cxGrid, cxExportGrid4Link ;

type
  TfrmExportOptions = class(TForm)
    cbExportSelections: TcxCheckBox;
    cbExportExpand: TcxCheckBox;
    btnExport: TcxButton;
    btnClose: TcxButton;
    RzSeparator1: TRzSeparator;
    svd: TSaveDialog;
    procedure svdTypeChange(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   AGrid: TcxGrid;
  end;

var
  frmExportOptions: TfrmExportOptions;

implementation

{$R *.dfm}

const Extension : array[1..4] of String[4] = ('xls','html','txt','xml');

procedure TfrmExportOptions.svdTypeChange(Sender: TObject);
begin
 svd.DefaultExt := Extension[svd.FilterIndex]
end;

procedure TfrmExportOptions.btnExportClick(Sender: TObject);
begin
 If (svd.Execute) then                 
  Case svd.FilterIndex of
   1: ExportGrid4ToExcel(svd.FileName,AGrid,cbExportExpand.Checked,NOT cbExportSelections.Checked,True);
   2: ExportGrid4ToHTML(svd.FileName,AGrid,cbExportExpand.Checked,NOT cbExportSelections.Checked);
   3: ExportGrid4ToText(svd.FileName,AGrid,cbExportExpand.Checked,NOT cbExportSelections.Checked,#9,'','');
   4: ExportGrid4ToXML(svd.FileName,AGrid,cbExportExpand.Checked,NOT cbExportSelections.Checked);
  End
end;

end.

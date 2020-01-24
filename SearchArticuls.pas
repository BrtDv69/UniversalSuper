unit SearchArticuls;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmSearchArticuls = class(TForm)
    wwDBGrid1: TwwDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSearchArticuls: TfrmSearchArticuls;

implementation

uses Articuls;

{$R *.DFM}

procedure TfrmSearchArticuls.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 wwDBGrid1.DataSource.DataSet.Close
end;

end.

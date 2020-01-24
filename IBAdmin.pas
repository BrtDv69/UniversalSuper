unit IBAdmin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, fcTreeView, ExtCtrls, Grids, IBSQL, IBDatabase;

type
  TfrmIBAdmin = class(TfrmLike)
    fcTreeView1: TfcTreeView;
    Splitter1: TSplitter;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIBAdmin: TfrmIBAdmin;

implementation

{$R *.DFM}

procedure TfrmIBAdmin.FormCreate(Sender: TObject);
begin
 FName := 'Админ. сервера';
 inherited
end;

end.

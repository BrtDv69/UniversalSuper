unit ProgSetup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, Grids, Wwdbigrd, Wwdbgrid, Buttons, ExtCtrls, ComCtrls, fcLabel,
  StdCtrls, IBDatabase, Db, IBSQL;

type
  TfrmProgSetup = class(TfrmLike)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Label14: TLabel;
    fcLabel1: TfcLabel;
    Label1: TLabel;
    fcLabel2: TfcLabel;
    Label2: TLabel;
    fcLabel3: TfcLabel;
    TabSheet1: TTabSheet;
    wwDBGrid1: TwwDBGrid;
    Panel4: TPanel;
    sbRollDown: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProgSetup: TfrmProgSetup;

implementation

{$R *.DFM}

procedure TfrmProgSetup.FormCreate(Sender: TObject);
begin
 FName := 'Настройки программы';
 inherited
end;

procedure TfrmProgSetup.SpeedButton10Click(Sender: TObject);
begin
 Close;
 frmProgSetup := nil
end;

end.

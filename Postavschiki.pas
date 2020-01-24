unit Postavschiki;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, IBSQL, IBDatabase;

type
  TfrmPostavschiki = class(TfrmLike)
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPostavschiki: TfrmPostavschiki;

implementation

{$R *.DFM}

procedure TfrmPostavschiki.FormCreate(Sender: TObject);
begin
 FName := 'Расчет поставщиков';
 inherited
end;

procedure TfrmPostavschiki.SpeedButton10Click(Sender: TObject);
begin
 Close;
 frmPostavschiki := nil
end;

end.

unit Movement;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, IBSQL, IBDatabase;

type
  TfrmMovement = class(TfrmLike)
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
    procedure SpeedButton10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovement: TfrmMovement;

implementation

{$R *.DFM}

procedure TfrmMovement.SpeedButton10Click(Sender: TObject);
begin
 Close;
 frmMovement := nil
end;

procedure TfrmMovement.FormCreate(Sender: TObject);
begin
 FName := 'Движение товара';
 inherited
end;

end.

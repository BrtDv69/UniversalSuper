unit Outcome;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, ComCtrls, wwdblook,
  StdCtrls, Mask, wwdbedit, DBCtrls, IBSQL, IBDatabase;

type
  TfrmOutcome = class(TfrmLike)
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
  frmOutcome: TfrmOutcome;

implementation

{$R *.DFM}

procedure TfrmOutcome.FormCreate(Sender: TObject);
begin
 FName := 'Расход товара';
 inherited
end;

procedure TfrmOutcome.SpeedButton10Click(Sender: TObject);
begin
 Close;
 frmOutcome := nil
end;

end.

unit In_Out;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, IBSQL, IBDatabase;

type
  TfrmIn_Out = class(TfrmLike)
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
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton8: TSpeedButton;
    sbRollDown: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    procedure SpeedButton10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIn_Out: TfrmIn_Out;

implementation

{$R *.DFM}

procedure TfrmIn_Out.SpeedButton10Click(Sender: TObject);
begin
 Close;
 frmIn_Out := nil
end;

procedure TfrmIn_Out.FormCreate(Sender: TObject);
begin
 FName := 'Приход';
 inherited
end;

end.

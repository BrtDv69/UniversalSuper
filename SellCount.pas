unit SellCount;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, IBSQL, IBDatabase;

type
  TfrmSellCount = class(TfrmLike)
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
  frmSellCount: TfrmSellCount;

implementation

{$R *.DFM}

procedure TfrmSellCount.SpeedButton10Click(Sender: TObject);
begin
 Close;
 frmSellCount := nil
end;

procedure TfrmSellCount.FormCreate(Sender: TObject);
begin
 FName := 'Расчет продаж';
 inherited
end;

end.

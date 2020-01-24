unit Debtors;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, Buttons, StdCtrls, DBCtrls, Mask, wwdbedit, Grids, Wwdbigrd,
  Wwdbgrid, fcdbtreeview, ExtCtrls, IBSQL, IBDatabase;

type
  TfrmDebtors = class(TfrmLike)
    Panel4: TPanel;
    sbRollDown: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    sbDetailsOrg: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    pnlDetail: TPanel;
    wwDBGrid2: TwwDBGrid;
    Panel9: TPanel;
    wwDBGrid1: TwwDBGrid;
    Panel3: TPanel;
    fcDBTreeView1: TfcDBTreeView;
    procedure sbDetailsOrgClick(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDebtors: TfrmDebtors;

implementation

{$R *.DFM}

procedure TfrmDebtors.sbDetailsOrgClick(Sender: TObject);
begin
 If (Sender as TSpeedButton).Down then
  Begin
   pnlDetail.Show;
   Splitter1.Show
  End
 else
  Begin
   pnlDetail.Hide;
   Splitter1.Hide
  End
end;

procedure TfrmDebtors.SpeedButton10Click(Sender: TObject);
begin
 Close;
 frmDebtors := nil
end;

procedure TfrmDebtors.FormCreate(Sender: TObject);
begin
 FName := 'Должники';
 inherited
end;

end.

unit Search;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, ComCtrls, Buttons, wwdblook,
  StdCtrls, Mask, wwdbedit, DBCtrls, wwrcdpnl, IBSQL, IBDatabase;

type
  TfrmSearch = class(TfrmLike)
    Panel1: TPanel;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    pnlDetail: TPanel;
    Panel4: TPanel;
    sbRollDown: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    sbDetailsOrg: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    wwRecordViewPanel1: TwwRecordViewPanel;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure sbDetailsOrgClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSearch: TfrmSearch;

implementation

{$R *.DFM}

procedure TfrmSearch.FormCreate(Sender: TObject);
begin
 FName := 'Поиск документов';
 inherited
end;

procedure TfrmSearch.SpeedButton10Click(Sender: TObject);
begin
 Close;
 frmSearch := nil
end;

procedure TfrmSearch.sbDetailsOrgClick(Sender: TObject);
begin
 If (Sender as TSpeedButton).Down then
  pnlDetail.Show
 else
  pnlDetail.Hide
end;

end.

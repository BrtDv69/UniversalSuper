unit GridSetup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, IBDatabase, Db, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  IBSQL, IBCustomDataSet, StdCtrls, fcCombo, fcColorCombo, Variants;

type
  TfrmGridSetup = class(TfrmLike)
    Panel4: TPanel;
    sbCancel: TSpeedButton;
    sbApply: TSpeedButton;
    sbRevertAll: TSpeedButton;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrior: TSpeedButton;
    sbFirst: TSpeedButton;
    sbExit: TSpeedButton;
    sbRevert: TSpeedButton;
    wwDBGridMain: TwwDBGrid;
    ibdsMain: TIBDataSet;
    ibsWhite: TIBSQL;
    dsMain: TDataSource;
    ibdsMainFIELD: TIBStringField;
    ibdsMainCAPTION: TIBStringField;
    ibdsMainCOLOR: TIntegerField;
    ibdsMainSHOW: TIntegerField;
    ibdsMainWIDTH: TIntegerField;
    ibdsMainORDR: TIntegerField;
    ibdsMainGRD_NAME: TIBStringField;
    ibdsMainPERSON_ID: TIntegerField;
    ibdsMainFieldDisplayLabel: TStringField;
    fcColorCombo1: TfcColorCombo;
    procedure FormCreate(Sender: TObject);
    procedure Verify(wwDBGrid: TwwDBGrid);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPriorClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbRevertClick(Sender: TObject);
    procedure sbRevertAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGridSetup: TfrmGridSetup;

implementation

uses Misk;

{$R *.DFM}

procedure TfrmGridSetup.FormCreate(Sender: TObject);
begin
 FName := 'Настройка - '+(frmGridSetUp.Owner as TfrmLike).FName;
 inherited
end;

procedure TfrmGridSetup.Verify(wwDBGrid: TwwDBGrid);
var i : Integer;
begin
 ibdsMain.SelectSQL.Clear;
 ibdsMain.SelectSQL.Add('select * from GRIDS_SETUP where (GRD_NAME='+
                                      #39+frmGridSetUp.Owner.Name+'/'+wwDBGrid.Name+#39+') and (PERSON_ID='+
                                      #39+IntToStr(PersonID)+#39+') order by ORDR');
 trMain.StartTransaction;
 ibdsMain.Open;
 For i:=0 to Pred(wwDBGrid.DataSource.DataSet.FieldCount) do
  Begin
   If (wwDBGrid.DataSource.DataSet.Fields[i].Tag=0) and
      (Not (wwDBGrid.DataSource.DataSet.Locate('GRD_NAME;PERSON_ID;FIELD',VarArrayOf([frmGridSetUp.Owner.Name+'/'+wwDBGrid.Name,PersonID,wwDBGrid.DataSource.DataSet.Fields[i].Name]),[loCaseInsensitive]))) then
    Begin
     ibdsMain.Append;
     ibdsMain.FieldByName('Grd_Name').Value := frmGridSetUp.Owner.Name+'/'+wwDBGrid.Name;
     ibdsMain.FieldByName('Person_ID').Value := PersonID;
     ibdsMain.FieldByName('Field').Value := wwDBGrid.DataSource.DataSet.Fields[i].Name;
     ibdsMain.FieldByName('Caption').Value := wwDBGrid.DataSource.DataSet.Fields[i].DisplayName;
     ibdsMain.FieldByName('Width').Value := wwDBGrid.DataSource.DataSet.Fields[i].DisplayWidth;
     ibdsMain.FieldByName('Ordr').Value := i;
     ibdsMain.FieldByName('Color').Value := clWindow;
     If (wwDBGrid.DataSource.DataSet.Fields[i].Visible) then
      ibdsMain.FieldByName('Show').Value := 1
     else
      ibdsMain.FieldByName('Show').Value := 0
    End
  End;
 try
  ibdsMain.ApplyUpdates;
  trMain.CommitRetaining;
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка первичной инициализации.', mtError, [mbOK],0)
 end;
end;

procedure TfrmGridSetup.sbFirstClick(Sender: TObject);
begin
 ibdsMain.First
end;

procedure TfrmGridSetup.sbPriorClick(Sender: TObject);
begin
 ibdsMain.Prior
end;

procedure TfrmGridSetup.sbNextClick(Sender: TObject);
begin
 ibdsMain.Next
end;

procedure TfrmGridSetup.sbLastClick(Sender: TObject);
begin
 ibdsMain.Last
end;

procedure TfrmGridSetup.sbRevertClick(Sender: TObject);
begin
 ibdsMain.Delete;
 MessageDlg('Поле обновится только после закрытия формы.',mtInformation,[mbOK],0)
end;

procedure TfrmGridSetup.sbRevertAllClick(Sender: TObject);
begin
 ibdsMain.First;
 While NOT (ibdsMain.Eof) do
  ibdsMain.Delete;
 MessageDlg('Поля обновятся только после закрытия формы.',mtInformation,[mbOK],0)
end;

end.

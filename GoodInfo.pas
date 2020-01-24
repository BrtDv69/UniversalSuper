unit GoodInfo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, IBSQL, IBDatabase, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Db,
  IBCustomDataSet, Menus;

type
  TfrmGoodInfo = class(TfrmLike)
    wwDBGrid1: TwwDBGrid;
    Splitter1: TSplitter;
    wwDBGrid2: TwwDBGrid;
    ibdsGoods: TIBDataSet;
    dsGoods: TDataSource;
    ibdsReservation: TIBDataSet;
    dsReservation: TDataSource;
    ibdsGoodsSTORE_NAME: TIBStringField;
    ibdsGoodsENTERPRISE_NAME: TIBStringField;
    ibdsGoodsTOTAL: TFloatField;
    ibdsReservationNAME: TIBStringField;
    ibdsReservationNUMBER_STR: TIBStringField;
    ibdsReservationINVOICE_DATE: TDateField;
    ibdsReservationMASTER_NAME: TIBStringField;
    ibdsReservationRESERV_AMOUNT: TFloatField;
    ibdsReservationMAX_BUY_PRICE: TFloatField;
    ibdsReservationLATEST_DATE: TDateField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    ibdsReservationPRICE: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1CalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwDBGrid2CalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
    procedure GenerateSelectGoods;
    procedure GenerateSelectReservation;
  public
    { Public declarations }
  end;

var
  frmGoodInfo: TfrmGoodInfo;

implementation

uses DM, Misk;

{$R *.DFM}

var
  OrderByGoods : String = '';

  OrderByReservation : String = '';

procedure TfrmGoodInfo.FormCreate(Sender: TObject);
begin
 FName := 'Информация';
 inherited;
 GenerateSelectGoods;
 GenerateSelectReservation
end;

procedure TfrmGoodInfo.GenerateSelectGoods;
 var k : Integer;
begin
 If NOT (Black) then
  Begin
   ibdsGoods.SelectSQL[0] := 'select G.MADE_IN, G.TOTAL TOTAL, S.NAME STORE_NAME,';
   ibdsGoods.SelectSQL[4] := '(G.ARTICUL_ID=:ARTICUL_ID) and NOT (G.TOTAL=0)';
  End;
 For k := Pred(ibdsGoods.SelectSQL.Count) downto 5 do
  ibdsGoods.SelectSQL.Delete(k);
 If (OrderByGoods<>'') then
  ibdsGoods.SelectSQL.Add('order by '+OrderByGoods)
end;

procedure TfrmGoodInfo.GenerateSelectReservation;
 var k : Integer;
begin
 For k := Pred(ibdsReservation.SelectSQL.Count) downto 22 do
  ibdsReservation.SelectSQL.Delete(k);
 If (OrderByReservation<>'') then
  ibdsReservation.SelectSQL.Add('order by '+OrderByReservation)
end;

procedure TfrmGoodInfo.wwDBGrid1CalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByGoods)
end;

procedure TfrmGoodInfo.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 wwDBGridTitleButtonClick(Sender, AFieldName, OrderByGoods, (GetKeyState(VK_CONTROL)<0),
                          nil, nil, GenerateSelectGoods)
end;

procedure TfrmGoodInfo.wwDBGrid2CalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByReservation)
end;

procedure TfrmGoodInfo.wwDBGrid2TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 wwDBGridTitleButtonClick(Sender, AFieldName, OrderByReservation, (GetKeyState(VK_CONTROL)<0),
                          nil, nil, GenerateSelectReservation)
end;

procedure TfrmGoodInfo.N1Click(Sender: TObject);
begin
 (Sender as TMenuItem).Checked := NOT (Sender as TMenuItem).Checked;
 If ((Sender as TMenuItem).Checked) then
  frmGoodInfo.FormStyle := fsStayOnTop
 else
  frmGoodInfo.FormStyle := fsNormal
end;

end.

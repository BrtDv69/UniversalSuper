unit Sostav;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, IBSQL, IBDatabase, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Db,
  IBCustomDataSet, Menus;

type
  TfrmSostav = class(TfrmLike)
    wwDBGrid1: TwwDBGrid;
    ibdsGoods: TIBDataSet;
    dsGoods: TDataSource;
    ibdsGoodsNAME: TIBStringField;
    ibdsGoodsMADE_IN: TIBStringField;
    ibdsGoodsAMOUNT: TFloatField;
    ibdsGoodsPRICE: TFloatField;
    ibdsGoodsSYMBOL: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1CalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure GenerateSelectGoods;
  public
    { Public declarations }
  end;

var
  frmSostav: TfrmSostav;

implementation

uses DM, Misk;

{$R *.DFM}

var
  OrderByGoods : String = ' 1 asc';

procedure TfrmSostav.FormCreate(Sender: TObject);
begin
 FName := 'Состав первичных';
 inherited;
end;

procedure TfrmSostav.GenerateSelectGoods;
 var k : Integer;
begin
 For k := Pred(ibdsGoods.SelectSQL.Count) downto 9 do
  ibdsGoods.SelectSQL.Delete(k);
 If (OrderByGoods<>'') then
  ibdsGoods.SelectSQL.Add('order by '+OrderByGoods)
end;

procedure TfrmSostav.wwDBGrid1CalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByGoods)
end;

procedure TfrmSostav.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 wwDBGridTitleButtonClick(Sender, AFieldName, OrderByGoods, (GetKeyState(VK_CONTROL)<0),
                          nil, nil, GenerateSelectGoods)
end;

procedure TfrmSostav.wwDBGrid1DblClick(Sender: TObject);
 var OldDecimalSeparator : Char;
begin
 OldDecimalSeparator := DecimalSeparator;
 DecimalSeparator := '.';
 wwDBGrid1.ExportOptions.Save;
 DecimalSeparator := OldDecimalSeparator
end;

end.

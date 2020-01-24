object frmLike: TfrmLike
  Left = 125
  Top = 131
  Width = 544
  Height = 375
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefaultPosOnly
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object trMain: TIBTransaction
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 25
    Top = 34
  end
  object ibsGen_ID: TIBSQL
    Database = frmDM.dbGenerators
    SQL.Strings = (
      'select gen_id(GEN_ID_ARTICULS,1) from rdb$database')
    Transaction = trMain
    Left = 2
    Top = 4
  end
  object ibsGridsSetup: TIBSQL
    Database = frmDM.dbMain
    Transaction = trMain
    Left = 80
    Top = 40
  end
end

object busquedaf: Tbusquedaf
  Left = 0
  Top = 0
  ClientHeight = 624
  ClientWidth = 484
  Caption = 'Consultar'
  OnShow = UniFormShow
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 16
    Top = 55
    Width = 453
    Height = 418
    Hint = ''
    DataSource = DataSource1
    LoadMask.Message = 'Loading data...'
    TabOrder = 0
    OnDblClick = UniDBGrid1DblClick
    Columns = <
      item
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'Codigo'
        Width = 88
      end
      item
        FieldName = 'Descripcion'
        Title.Alignment = taCenter
        Title.Caption = 'Descripcion'
        Width = 344
      end>
  end
  object Busqueda: TUniEdit
    Left = 16
    Top = 16
    Width = 453
    Height = 25
    Hint = ''
    Text = ''
    TabOrder = 1
    OnChange = BusquedaChange
    OnKeyPress = BusquedaKeyPress
  end
  object UniDBMemo1: TUniDBMemo
    Left = 16
    Top = 479
    Width = 453
    Height = 106
    Hint = ''
    DataSource = DataSource1
    TabOrder = 2
  end
  object DataSource1: TDataSource
    DataSet = UniMainModule.Query
    Left = 320
    Top = 176
  end
end

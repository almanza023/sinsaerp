object fmedicocistas: Tfmedicocistas
  Left = 0
  Top = 0
  ClientHeight = 575
  ClientWidth = 1099
  Caption = 'Reporte Citas'
  OnShow = UniFormShow
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPageControl1: TUniPageControl
    Left = 0
    Top = 0
    Width = 1099
    Height = 575
    Hint = ''
    ActivePage = UniTabSheet1
    Align = alClient
    TabOrder = 0
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Listado Paciente Asignados'
      object UniDBGrid1: TUniDBGrid
        Left = 16
        Top = 56
        Width = 1072
        Height = 390
        Hint = ''
        DataSource = DataSource
        LoadMask.Message = 'Loading data...'
        TabOrder = 0
        Columns = <
          item
            FieldName = 'turno'
            Title.Caption = 'Turno'
            Width = 64
            ReadOnly = True
            Expanded = True
          end
          item
            FieldName = 'afcodigo'
            Title.Caption = ' Identificaci'#243'n'
            Width = 109
            ReadOnly = True
            Expanded = True
          end
          item
            FieldName = 'edad'
            Title.Caption = 'Edad'
            Width = 54
            ReadOnly = True
            Expanded = True
          end
          item
            FieldName = 'nombrecompleto'
            Title.Caption = 'Paciente'
            Width = 258
            ReadOnly = True
            Expanded = True
          end
          item
            FieldName = 'horas'
            Title.Caption = 'Hora de Cita'
            Width = 70
            ReadOnly = True
            Expanded = True
          end
          item
            FieldName = 'consecutivo'
            Title.Caption = 'N'#176' Cita'
            Width = 75
            ReadOnly = True
            Expanded = True
          end
          item
            FieldName = 'Descripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 329
            ReadOnly = True
            Expanded = True
          end
          item
            FieldName = 'TELEFONO'
            Title.Caption = ' Tel'#233'fono'
            Width = 125
            ReadOnly = True
            Expanded = True
          end
          item
            FieldName = 'Asistio'
            Title.Caption = 'Asisti'#243
            Width = 80
            ReadOnly = True
            Expanded = True
          end
          item
            FieldName = 'nombre'
            Title.Caption = 'Entidad'
            Width = 215
            ReadOnly = True
            Expanded = True
          end
          item
            FieldName = 'AutorizacionC'
            Title.Caption = 'Autorizaci'#243'n'
            Width = 157
            ReadOnly = True
            Expanded = True
          end>
      end
      object UniLabel1: TUniLabel
        Left = 16
        Top = 8
        Width = 47
        Height = 13
        Hint = ''
        Caption = 'Prestador'
        TabOrder = 1
      end
      object Medico: TUniEdit
        Left = 80
        Top = 27
        Width = 322
        Hint = ''
        Text = ''
        TabOrder = 2
        ReadOnly = True
      end
      object UniLabel2: TUniLabel
        Left = 408
        Top = 9
        Width = 83
        Height = 13
        Hint = ''
        Caption = 'Fecha Asignaci'#243'n'
        TabOrder = 3
      end
      object fechaAsignacion: TUniDateTimePicker
        Left = 408
        Top = 28
        Width = 122
        Hint = ''
        DateTime = 44334.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        TabOrder = 4
      end
      object UniLabel3: TUniLabel
        Left = 560
        Top = 8
        Width = 51
        Height = 13
        Hint = ''
        Caption = 'Total Citas'
        TabOrder = 5
      end
      object TotalAgenda: TUniEdit
        Left = 560
        Top = 27
        Width = 73
        Hint = ''
        Text = ''
        ParentFont = False
        Font.Color = clMaroon
        Font.Height = -12
        Font.Style = [fsBold]
        TabOrder = 6
        ReadOnly = True
      end
      object UniSpeedButton1: TUniSpeedButton
        Left = 943
        Top = 8
        Width = 145
        Height = 42
        Hint = ''
        Caption = 'Cerrar Rips'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        ParentColor = False
        Color = clWindow
        TabOrder = 7
      end
      object NoAsistio: TUniEdit
        Left = 16
        Top = 452
        Width = 97
        Hint = ''
        Text = 'No Asisti'#243
        TabOrder = 8
        Color = clBtnFace
      end
      object Cancelado: TUniEdit
        Left = 248
        Top = 452
        Width = 97
        Hint = ''
        Text = 'Cancelado'
        TabOrder = 9
      end
      object Suspendido: TUniEdit
        Left = 464
        Top = 452
        Width = 97
        Hint = ''
        Text = 'Suspendido'
        TabOrder = 10
      end
      object EnEspera: TUniEdit
        Left = 696
        Top = 452
        Width = 97
        Hint = ''
        Text = 'En Espera'
        TabOrder = 11
      end
      object UniEdit7: TUniEdit
        Left = 991
        Top = 452
        Width = 97
        Hint = ''
        Text = 'Cancelado'
        TabOrder = 12
      end
      object CodigoMedico: TUniEdit
        Left = 16
        Top = 27
        Width = 58
        Hint = ''
        Text = ''
        TabOrder = 13
        ReadOnly = True
      end
      object UniSpeedButton2: TUniSpeedButton
        Left = 248
        Top = 496
        Width = 153
        Height = 41
        Hint = ''
        Caption = 'Cerrar'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        ParentColor = False
        Color = clWindow
        TabOrder = 14
      end
      object UniSpeedButton3: TUniSpeedButton
        Left = 640
        Top = 503
        Width = 153
        Height = 41
        Hint = ''
        Glyph.Data = {
          42100000424D4210000000000000420000002800000020000000200000000100
          20000300000000100000DD000000DD00000000000000000000000000FF0000FF
          0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E3E32DE5E5
          E5EEE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
          D9FFD9D9D9FFD9D9D9FFDADADAFEDDDDDD52FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4E4E460E5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
          D9FFD9D9D9FFD9D9D9FFD9D9D9FFDDDDDD9CFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4E4E460E5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
          D9FFD9D9D9FFD9D9D9FFD9D9D9FFDDDDDD9CFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00EFAD191FEFA71C40EFA71C40E9D2AB88E5E5
          E5FFE5E5E5FFE5E5E5FFE4E4E4FFDAD8D8FFD8D7D7FFD8D7D7FFD8D7D7FFD8D7
          D7FFD8D7D7FFC0BCBDFFC0BCBDFFC0BCBDFFC0BCBDFFC0BCBDFFC2BFC0FFD7D7
          D7FFD9D9D9FFD9D9D9FFD9D9D9FFE3CDB3C8F6961970F6961970F69A163AFFFF
          FF00FFFFFF00EFA71820F0A91AB7EFA91BFDEFA91BFFEFA91BFFEBC067FFE5E5
          E5FFE5E5E5FFE5E5E5FFCCC9C9FFB3ADAEFFB3ADAEFFB3ADAEFFB3ADAEFFB3AD
          AEFFB3ADAEFF92888BFF92888BFF92888BFF92888BFF92888BFF92888BFFACA5
          A7FFD9D9D9FFD9D9D9FFD9D9D9FFE9BD90FFFC8916FFFC8916FFFC8916FFF88F
          17EBF799153CEFA91A91EFA91BFFEFA91BFFEFA91BFFEFA91BFFEBC067FFE5E5
          E5FFE5E5E5FFE5E5E5FFDDDCDCFFC7C3C4FFC6C2C2FFC6C2C2FFC6C2C2FFC6C2
          C2FFC6C2C2FFA49C9EFFA49C9EFFA49C9EFFA49C9EFFA49C9EFFA59DA0FFC8C6
          C6FFD9D9D9FFD9D9D9FFD9D9D9FFE9BD90FFFC8916FFFC8916FFFC8916FFFC89
          16FFF89217D0EFA91BEFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEBC067FFE5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
          D9FFD9D9D9FFD9D9D9FFD9D9D9FFE9BD90FFFC8916FFFC8916FFFC8916FFFC89
          16FFFB8B16FEEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEBC067FFE5E5
          E5FFE5E5E5FFE5E5E5FFE0DFDFFFCDCACBFFCCC9C9FFCCC9C9FFCCC9C9FFCCC9
          C9FFCCC9C9FFACA5A7FFACA5A7FFACA5A7FFACA5A7FFACA5A7FFAEA7A9FFCECC
          CCFFD9D9D9FFD9D9D9FFD9D9D9FFE9BD90FFFC8916FFFC8916FFFC8916FFFC89
          16FFFC8916FFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEBC067FFE5E5
          E5FFE5E5E5FFE5E5E5FFCBC8C9FFB3ADAEFFB3ADAEFFB3ADAEFFB3ADAEFFB3AD
          AEFFB3ADAEFF92888BFF92888BFF92888BFF92888BFF92888BFF92888BFFABA4
          A6FFD9D9D9FFD9D9D9FFD9D9D9FFE9BD90FFFC8916FFFC8916FFFC8916FFFC89
          16FFFC8916FFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEBC067FFE5E5
          E5FFE5E5E5FFE5E5E5FFE2E2E2FFD3D1D2FFD2D0D0FFD2D0D0FFD2D0D0FFD2D0
          D0FFD2D0D0FFB6B0B2FFB6B0B2FFB6B0B2FFB6B0B2FFB6B0B2FFB8B2B4FFD3D1
          D2FFD9D9D9FFD9D9D9FFD9D9D9FFE9BD90FFFC8916FFFC8916FFFC8916FFFC89
          16FFFC8916FFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEBC067FFE5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
          D9FFD9D9D9FFD9D9D9FFD9D9D9FFE9BD90FFFC8916FFFC8916FFFC8916FFFC89
          16FFFC8916FFEFA91BFFEFA91BFFEFA91BFFEAA61DFF907342FF7F6F5BFF7E79
          7AFF7E797AFF7E797AFF7E797AFF7E797AFF7E797AFF7E797AFF7E797AFF7E79
          7AFF7E797AFF4F494BFF4F494BFF4F494BFF4F494BFF4F494BFF4F494BFF4F49
          4BFF4F494BFF4F494BFF4F494BFF504746FF5E4A3DFFF18519FFFC8916FFFC89
          16FFFC8916FFEFA91BFFEFA91BFFEFA91BFFDFA022FF615855FF5C5557FF5C55
          57FF5C5557FF5C5557FF5C5557FF5C5557FF5C5557FF5C5557FF5C5557FF5C55
          57FF5C5557FF413A3CFF413A3CFF413A3CFF413A3CFF413A3CFF413A3CFF413A
          3CFF413A3CFF413A3CFF413A3CFF413A3CFF423B3DFFD77B20FFFC8916FFFC89
          16FFFC8916FFEFA91BFFEFA91BFFEFA91BFFEFA91BFFE7A41EFFDD9E23FFDD9E
          23FFDD9E23FFDD9E23FFDD9E23FFDD9E23FFDD9E23FFDD9E23FFDD9E23FFDD9E
          23FFDD9E23FFD37922FFD37922FFD37922FFD37922FFD37922FFD37922FFD379
          22FFD37922FFD37922FFD37922FFD37922FFE9821CFFFC8916FFFC8916FFFC89
          16FFFC8916FFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA9
          1BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA9
          1BFFEFA91BFFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC89
          16FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC89
          16FFFC8916FFEFA91BFFEFA91BFFEFA91BFFF0AC26FFF8D7B4FFFADDC9FFF9DA
          C0FFF2B646FFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA9
          1BFFEFA91BFFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC89
          16FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC89
          16FFFC8916FFEFA91BFFEFA91BFFEFA91BFFF0AE2CFFFADECDFFFBE4E1FFFBE2
          D9FFF2B951FFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA9
          1BFFEFA91BFFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC89
          16FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC89
          16FFFC8916FFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA9
          1BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA9
          1BFFEFA91BFFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC89
          16FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC89
          16FFFC8916FFEFAA1BC5EFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA9
          1BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA9
          1BFFEFA91BFFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC89
          16FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC89
          16FFFA8F17F2EEA91C5CEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA9
          1BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA9
          1BFFEFA91BFFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC89
          16FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC89
          16FFF7951897FFFFFF00C28F2D50B78932FFCB942AFFCB942AFFD8A237FFEDB8
          4DFFEDB84DFFEDB84DFFEDB84DFFEDB84DFFEDB84DFFEDB84DFFEDB84DFFEDB8
          4DFFEDB84DFFF89423FFF89423FFF89423FFF89423FFF89423FFF89423FFF894
          23FFF89423FFF89423FFF89423FFF4901FFFEE8A19FFEE8A19FFDD851DFFD886
          1E76FFFFFF00FFFFFF00605858205C5557FF5C5557FF5C5557FF908B8CFFE5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
          D9FFD9D9D9FFD9D9D9FFD9D9D9FFA19E9FFF413A3CFF413A3CFF413A3CFF4038
          4020FFFFFF00FFFFFF00605858205C5557FF5C5557FF5C5557FF908B8CFFE5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
          D9FFD9D9D9FFD9D9D9FFD9D9D9FFA19E9FFF413A3CFF413A3CFF413A3CFF4038
          4020FFFFFF00FFFFFF005D515D165C5557FF5C5557FF5C5557FF908B8CFFE5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
          D9FFD9D9D9FFD9D9D9FFD9D9D9FFA19E9FFF413A3CFF413A3CFF413A3CFF463A
          3A16FFFFFF00FFFFFF00FFFFFF005D5557BE5C5557FF5C5557FF908B8CFFE5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFD9D9D9FFD9D9D9FFD9D9D9FF9BC3E6FF7EB9ECFF7EB9ECFF7EB9
          ECFF7EB9ECFF7EB9ECFF7DB7E9FF777A83FF413A3CFF413A3CFF403A3CBEFFFF
          FF00FFFFFF00FFFFFF00FFFFFF005D5559425C5557E15C5557FF908B8CFFE5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFD9D9D9FFD9D9D9FFC9D3DCFF2499FEFF2399FEFF2399FEFF2399
          FEFF2399FEFF2399FDFF355F87FF413A3CFF413A3CFF413A3CE1423A3E42FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080025D565647B1ADAF9CE5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFD9D9D9FFD9D9D9FFC2D1DEFF2399FEFF2399FEFF2399FEFF2399
          FEFF2399FEFE2D75B69D403A3D60403A3D6041393D4780000002FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4E4E460E5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFD9D9D9FFD9D9D9FFC2D1DEFF2399FEFF2399FEFF2399FEFF2399
          FEFE229AFF62FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4E4E460E5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFD9D9D9FFD9D9D9FFC2D1DEFF2399FEFF2399FEFF2399FEFE229A
          FF62FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4E4E460E5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFD9D9D9FFD9D9D9FFC2D1DEFF2399FEFF2399FEFE229AFF62FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4E4E460E5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFD9D9D9FFD9D9D9FFC2D1DEFF2399FEFF229AFF62FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E3E32DE5E5
          E5EEE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFD9D9D9FFD9D9D9FFC4D1DDFF41A3F875FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00}
        Caption = 'Imprimir'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        ParentColor = False
        Color = clWindow
        TabOrder = 15
      end
    end
  end
  object UniLabel4: TUniLabel
    Left = 656
    Top = 32
    Width = 76
    Height = 13
    Hint = ''
    Caption = 'Total Asignadas'
    TabOrder = 1
  end
  object Total: TUniEdit
    Left = 656
    Top = 52
    Width = 76
    Hint = ''
    Text = ''
    ParentFont = False
    Font.Color = clMaroon
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 2
    ReadOnly = True
  end
  object UniLabel5: TUniLabel
    Left = 752
    Top = 32
    Width = 80
    Height = 13
    Hint = ''
    Caption = 'Total Disponibles'
    TabOrder = 3
  end
  object Disponibles: TUniEdit
    Left = 752
    Top = 52
    Width = 80
    Hint = ''
    Text = ''
    ParentFont = False
    Font.Color = clMaroon
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 4
    ReadOnly = True
  end
  object DataSource: TDataSource
    DataSet = UniMainModule.QueryReporte
    Left = 556
    Top = 233
  end
end
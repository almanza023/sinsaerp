object FComplementoHistorias: TFComplementoHistorias
  Left = 0
  Top = 0
  ClientHeight = 744
  ClientWidth = 525
  Caption = 'Complemento Historias'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPageControl1: TUniPageControl
    Left = 0
    Top = 0
    Width = 525
    Height = 744
    Hint = ''
    ActivePage = UniTabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 120
    ExplicitTop = 272
    ExplicitWidth = 289
    ExplicitHeight = 193
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Antecedentes del Paciente'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 515
      ExplicitHeight = 704
      object UniLabel1: TUniLabel
        Left = 16
        Top = 16
        Width = 154
        Height = 14
        Hint = ''
        Caption = 'Antecedentes Personales'
        ParentFont = False
        Font.Height = -12
        Font.Style = [fsBold]
        TabOrder = 0
      end
      object UniCheckBox1: TUniCheckBox
        Left = 16
        Top = 36
        Width = 97
        Height = 17
        Hint = ''
        Caption = 'Diabetes'
        TabOrder = 1
      end
      object UniCheckBox2: TUniCheckBox
        Left = 136
        Top = 36
        Width = 161
        Height = 17
        Hint = ''
        Caption = 'Tratamiento para Diabetes'
        TabOrder = 2
      end
      object UniCheckBox3: TUniCheckBox
        Left = 328
        Top = 36
        Width = 161
        Height = 17
        Hint = ''
        Caption = 'Alteraciones Cardiacas'
        TabOrder = 3
      end
      object UniCheckBox4: TUniCheckBox
        Left = 16
        Top = 59
        Width = 97
        Height = 17
        Hint = ''
        Caption = 'Hipertensi'#243'n'
        TabOrder = 4
      end
      object UniCheckBox5: TUniCheckBox
        Left = 136
        Top = 59
        Width = 161
        Height = 17
        Hint = ''
        Caption = 'Tratamiento para Hipertensi'#243'n'
        TabOrder = 5
      end
      object UniCheckBox6: TUniCheckBox
        Left = 328
        Top = 59
        Width = 161
        Height = 17
        Hint = ''
        Caption = 'Tratamiento para Hipertensi'#243'n'
        TabOrder = 6
      end
      object UniLabel2: TUniLabel
        Left = 16
        Top = 96
        Width = 69
        Height = 14
        Hint = ''
        Caption = 'Quir'#250'rgicos'
        ParentFont = False
        Font.Height = -12
        Font.Style = [fsBold]
        TabOrder = 7
      end
      object UniMemo1: TUniMemo
        Left = 16
        Top = 116
        Width = 473
        Height = 61
        Hint = ''
        Lines.Strings = (
          'UniMemo1')
        TabOrder = 8
      end
      object UniLabel3: TUniLabel
        Left = 16
        Top = 183
        Width = 88
        Height = 14
        Hint = ''
        Caption = 'Medicamentos'
        ParentFont = False
        Font.Height = -12
        Font.Style = [fsBold]
        TabOrder = 9
      end
      object UniMemo2: TUniMemo
        Left = 16
        Top = 203
        Width = 473
        Height = 61
        Hint = ''
        Lines.Strings = (
          'UniMemo1')
        TabOrder = 10
      end
      object UniLabel4: TUniLabel
        Left = 16
        Top = 270
        Width = 192
        Height = 14
        Hint = ''
        Caption = 'Otros Antecedentes Personales'
        ParentFont = False
        Font.Height = -12
        Font.Style = [fsBold]
        TabOrder = 11
      end
      object UniMemo3: TUniMemo
        Left = 16
        Top = 290
        Width = 473
        Height = 159
        Hint = ''
        Lines.Strings = (
          'UniMemo1')
        TabOrder = 12
      end
      object UniLabel5: TUniLabel
        Left = 16
        Top = 462
        Width = 120
        Height = 14
        Hint = ''
        Caption = 'Familiares Generales'
        ParentFont = False
        Font.Height = -12
        Font.Style = [fsBold]
        TabOrder = 13
      end
      object UniMemo4: TUniMemo
        Left = 16
        Top = 482
        Width = 473
        Height = 159
        Hint = ''
        Lines.Strings = (
          'UniMemo1')
        TabOrder = 14
      end
    end
  end
  object btnGuardar: TUniSpeedButton
    Left = 172
    Top = 680
    Width = 129
    Height = 33
    Hint = ''
    Caption = 'Guardar y Cerrar'
    ParentFont = False
    Font.Height = -12
    Font.Style = [fsBold]
    ParentColor = False
    Color = clWindow
    TabOrder = 1
  end
end

object citasF: TcitasF
  Left = 0
  Top = 0
  ClientHeight = 865
  ClientWidth = 1211
  Caption = 'Modulo de Citas'
  OnShow = UniFormShow
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPageControl1: TUniPageControl
    Left = 0
    Top = 89
    Width = 1211
    Height = 776
    Hint = ''
    ActivePage = UniTabSheet5
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1194
    ExplicitHeight = 660
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Citas medicas'
      ExplicitWidth = 1186
      ExplicitHeight = 632
      object educativo: TUniComboBox
        Left = 610
        Top = 125
        Width = 202
        Hint = ''
        Text = ''
        Items.Strings = (
          'B'#225'sica Primaria '#9
          'B'#225'sica Secundaria'#9
          'Media Acad'#233'mica o Cl'#225'sica'#9
          'Media T'#233'cnica (Bachillerato T'#233'cnico) '#9
          'Normalista '#9
          'T'#233'cnica Profesional '#9
          'Tecnol'#243'gica '#9
          'Profesional '#9
          'Especializaci'#243'n '#9
          'Maestr'#237'a '#9
          'Doctorado '#9
          'Ninguno')
        TabOrder = 0
        CharCase = ecUpperCase
        IconItems = <>
      end
      object UniLabel24: TUniLabel
        Left = 156
        Top = 344
        Width = 92
        Height = 13
        Hint = ''
        Caption = 'Servicio  / Consulta'
        TabOrder = 1
      end
      object UniLabel25: TUniLabel
        Left = 467
        Top = 344
        Width = 43
        Height = 13
        Hint = ''
        Caption = 'Cantidad'
        TabOrder = 2
      end
      object UniLabel26: TUniLabel
        Left = 524
        Top = 344
        Width = 124
        Height = 13
        Hint = ''
        Caption = 'Diagnostico de la consulta'
        TabOrder = 3
      end
      object dcprincipal: TUniEdit
        Left = 524
        Top = 363
        Width = 390
        Hint = ''
        Text = ''
        TabOrder = 4
        ReadOnly = True
        OnDblClick = dcprincipalDblClick
      end
      object uiGuardar: TUniButton
        Left = 1010
        Top = 360
        Width = 71
        Height = 25
        Hint = ''
        Caption = 'Guardar'
        TabOrder = 5
      end
      object ATAfiliado: TUniEdit
        Left = 467
        Top = 62
        Width = 51
        Hint = ''
        Text = ''
        TabOrder = 6
        ReadOnly = True
      end
      object Autorizacion: TUniEdit
        Left = 524
        Top = 276
        Width = 189
        Hint = ''
        Text = ''
        TabOrder = 7
      end
      object autorizada: TUniEdit
        Left = 719
        Top = 276
        Width = 210
        Hint = ''
        Text = ''
        TabOrder = 8
      end
      object btnBuscarP: TUniButton
        Left = 156
        Top = 59
        Width = 42
        Height = 25
        Hint = ''
        Caption = ''
        TabOrder = 9
        OnClick = btnBuscarPClick
      end
      object cantidad_servicios: TUniEdit
        Left = 467
        Top = 363
        Width = 51
        Hint = ''
        Text = ''
        TabOrder = 10
      end
      object CEPS: TUniEdit
        Left = 660
        Top = 62
        Width = 98
        Hint = ''
        Text = ''
        TabOrder = 11
        ReadOnly = True
      end
      object codigoConsulta: TUniEdit
        Left = 13
        Top = 363
        Width = 90
        Hint = ''
        Text = ''
        TabOrder = 12
      end
      object Contrato: TUniEdit
        Left = 935
        Top = 62
        Width = 136
        Hint = ''
        Text = ''
        TabOrder = 13
        ReadOnly = True
      end
      object DatosIngreso: TUniEdit
        Left = 61
        Top = 625
        Width = 939
        Height = 41
        Hint = ''
        Text = ''
        TabOrder = 14
      end
      object DireccionU: TUniEdit
        Left = 13
        Top = 125
        Width = 327
        Hint = ''
        Text = ''
        TabOrder = 15
      end
      object DXP: TUniEdit
        Left = 920
        Top = 363
        Width = 49
        Hint = ''
        Text = ''
        TabOrder = 16
        ReadOnly = True
      end
      object email: TUniEdit
        Left = 346
        Top = 125
        Width = 258
        Hint = ''
        Text = ''
        TabOrder = 17
      end
      object fecha_deseada: TUniDateTimePicker
        Left = 199
        Top = 274
        Width = 84
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DateTime = 44334.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        ReadOnly = True
        TabOrder = 18
      end
      object fechaAsignacion: TUniDateTimePicker
        Left = 289
        Top = 274
        Width = 85
        Hint = ''
        DateTime = 44334.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        TabOrder = 19
      end
      object FechaN: TUniEdit
        Left = 524
        Top = 62
        Width = 118
        Hint = ''
        Text = ''
        TabOrder = 20
        ReadOnly = True
      end
      object IdentificacionA: TUniEdit
        Left = 13
        Top = 62
        Width = 137
        Hint = ''
        Text = ''
        TabOrder = 21
      end
      object Medico: TUniEdit
        Left = 12
        Top = 274
        Width = 137
        Hint = ''
        Text = ''
        TabOrder = 22
      end
      object NombreC: TUniEdit
        Left = 252
        Top = 62
        Width = 209
        Hint = ''
        Text = ''
        TabOrder = 23
        ReadOnly = True
      end
      object Telefono: TUniEdit
        Left = 770
        Top = 62
        Width = 153
        Hint = ''
        Text = ''
        TabOrder = 24
      end
      object tipoCita: TUniRadioGroup
        Left = 121
        Top = 174
        Width = 691
        Height = 50
        Hint = ''
        Items.Strings = (
          'Citas'
          'Autorizaciones'
          'Paquetes Integrales')
        ItemIndex = 0
        Caption = 'Opciones'
        TabOrder = 25
        Columns = 3
      end
      object TipoConsulta: TUniEdit
        Left = 152
        Top = 363
        Width = 309
        Hint = ''
        Text = ''
        TabOrder = 26
        ReadOnly = True
        OnDblClick = TipoConsultaDblClick
      end
      object ubAgenda: TUniButton
        Left = 184
        Top = 678
        Width = 134
        Height = 57
        Hint = ''
        Caption = 'Agenda del Mes'
        TabOrder = 27
      end
      object ubBuscarCodigo: TUniButton
        Left = 104
        Top = 363
        Width = 42
        Height = 25
        Hint = ''
        Caption = ''
        TabOrder = 28
        OnClick = ubBuscarCodigoClick
      end
      object ubBuscarDiagnostico: TUniButton
        Left = 975
        Top = 360
        Width = 42
        Height = 25
        Hint = ''
        Caption = ''
        TabOrder = 29
      end
      object ubCancelarCita: TUniButton
        Left = 993
        Top = 678
        Width = 134
        Height = 57
        Hint = ''
        Caption = 'Cancelar Cita'
        TabOrder = 30
      end
      object ubCitas: TUniButton
        Left = 511
        Top = 678
        Width = 134
        Height = 57
        Hint = ''
        Caption = 'Ver Citas'
        TabOrder = 31
      end
      object ubGuardarObs: TUniButton
        Left = 1006
        Top = 625
        Width = 119
        Height = 41
        Hint = ''
        Caption = 'Guardar Observaci'#243'n'
        TabOrder = 32
      end
      object ubImprimir: TUniButton
        Left = 835
        Top = 678
        Width = 134
        Height = 57
        Hint = ''
        Caption = 'Imprimir'
        TabOrder = 33
      end
      object ubNuevo: TUniButton
        Left = 24
        Top = 678
        Width = 134
        Height = 57
        Hint = ''
        Caption = 'Nuevo'
        TabOrder = 34
      end
      object ubProgramas: TUniButton
        Left = 349
        Top = 678
        Width = 134
        Height = 57
        Hint = ''
        Caption = 'Programas PyP'
        TabOrder = 35
      end
      object ubQuitar: TUniButton
        Left = 1079
        Top = 360
        Width = 42
        Height = 25
        Hint = ''
        Caption = ''
        TabOrder = 36
      end
      object ubReprogramar: TUniButton
        Left = 672
        Top = 678
        Width = 134
        Height = 57
        Hint = ''
        Caption = 'Reprogramar'
        TabOrder = 37
      end
      object ubValor: TUniButton
        Left = 1077
        Top = 273
        Width = 42
        Height = 25
        Hint = ''
        Caption = ''
        TabOrder = 38
      end
      object uiBuscarContrato: TUniButton
        Left = 1077
        Top = 62
        Width = 42
        Height = 22
        Hint = ''
        Caption = ''
        TabOrder = 39
        OnClick = uiBuscarContratoClick
      end
      object uiBuscarMedico: TUniButton
        Left = 151
        Top = 273
        Width = 42
        Height = 25
        Hint = ''
        Caption = ''
        TabOrder = 40
        OnClick = uiBuscarMedicoClick
      end
      object uiCrearP: TUniButton
        Left = 204
        Top = 59
        Width = 42
        Height = 25
        Hint = ''
        Caption = ''
        TabOrder = 41
        OnClick = uiCrearPClick
      end
      object uiHoras: TUniSpeedButton
        Left = 462
        Top = 274
        Width = 51
        Height = 22
        Hint = ''
        Caption = 'Horas'
        ParentColor = False
        Color = clWindow
        TabOrder = 42
        OnClick = uiHorasClick
      end
      object UniLabel10: TUniLabel
        Left = 770
        Top = 43
        Width = 42
        Height = 13
        Hint = ''
        Caption = 'Tel'#233'fono'
        TabOrder = 43
      end
      object UniLabel11: TUniLabel
        Left = 13
        Top = 106
        Width = 43
        Height = 13
        Hint = ''
        Caption = 'Direcci'#243'n'
        TabOrder = 44
      end
      object UniLabel12: TUniLabel
        Left = 943
        Top = 43
        Width = 43
        Height = 13
        Hint = ''
        Caption = 'Contrato'
        TabOrder = 45
      end
      object UniLabel13: TUniLabel
        Left = 346
        Top = 106
        Width = 88
        Height = 13
        Hint = ''
        Caption = 'Correo Electr'#243'nico'
        TabOrder = 46
      end
      object UniLabel14: TUniLabel
        Left = 610
        Top = 106
        Width = 73
        Height = 13
        Hint = ''
        Caption = 'Nivel Educativo'
        TabOrder = 47
      end
      object UniLabel15: TUniLabel
        Left = 13
        Top = 174
        Width = 76
        Height = 13
        Hint = ''
        Caption = 'Datos de la Cita'
        TabOrder = 48
      end
      object UniLabel16: TUniLabel
        Left = 12
        Top = 255
        Width = 90
        Height = 13
        Hint = ''
        Caption = 'Prestador / Medico'
        TabOrder = 49
      end
      object UniLabel17: TUniLabel
        Left = 199
        Top = 255
        Width = 74
        Height = 13
        Hint = ''
        Caption = 'Fecha Deseada'
        TabOrder = 50
      end
      object UniLabel18: TUniLabel
        Left = 287
        Top = 255
        Width = 76
        Height = 13
        Hint = ''
        Caption = 'Fecha Asignada'
        TabOrder = 51
      end
      object UniLabel19: TUniLabel
        Left = 380
        Top = 255
        Width = 45
        Height = 13
        Hint = ''
        Caption = 'Hora Cita'
        TabOrder = 52
      end
      object UniLabel2: TUniLabel
        Left = 3
        Top = 16
        Width = 118
        Height = 13
        Hint = ''
        Caption = 'Informaci'#243'n del Paciente'
        TabOrder = 53
      end
      object UniLabel20: TUniLabel
        Left = 519
        Top = 257
        Width = 59
        Height = 13
        Hint = ''
        Caption = 'Autorizaci'#243'n'
        TabOrder = 54
      end
      object UniLabel21: TUniLabel
        Left = 719
        Top = 257
        Width = 83
        Height = 13
        Hint = ''
        Caption = 'Fecha Expedici'#243'n'
        TabOrder = 55
      end
      object UniLabel22: TUniLabel
        Left = 935
        Top = 257
        Width = 65
        Height = 13
        Hint = ''
        Caption = 'Valor Cancela'
        TabOrder = 56
      end
      object UniLabel23: TUniLabel
        Left = 13
        Top = 344
        Width = 33
        Height = 13
        Hint = ''
        Caption = 'Codigo'
        TabOrder = 57
      end
      object UniLabel27: TUniLabel
        Left = 18
        Top = 634
        Width = 37
        Height = 13
        Hint = ''
        Caption = 'Ingreso'
        TabOrder = 58
      end
      object UniLabel3: TUniLabel
        Left = 13
        Top = 43
        Width = 64
        Height = 13
        Hint = ''
        Caption = 'Identificaci'#243'n'
        TabOrder = 59
      end
      object UniLabel4: TUniLabel
        Left = 252
        Top = 43
        Width = 42
        Height = 13
        Hint = ''
        Caption = 'Nombres'
        TabOrder = 60
      end
      object UniLabel5: TUniLabel
        Left = 467
        Top = 43
        Width = 17
        Height = 13
        Hint = ''
        Caption = 'T.C'
        TabOrder = 61
      end
      object UniLabel6: TUniLabel
        Left = 524
        Top = 43
        Width = 42
        Height = 13
        Hint = ''
        Caption = 'F de Nac'
        TabOrder = 62
      end
      object UniLabel7: TUniLabel
        Left = 660
        Top = 43
        Width = 18
        Height = 13
        Hint = ''
        Caption = 'EPS'
        TabOrder = 63
      end
      object UniPageControl2: TUniPageControl
        Left = 13
        Top = 394
        Width = 1111
        Height = 207
        Hint = ''
        ActivePage = UniTabSheet2
        TabOrder = 64
        object UniTabSheet2: TUniTabSheet
          Hint = ''
          Caption = 'Horas Disponibles'
        end
        object UniTabSheet3: TUniTabSheet
          Hint = ''
          Caption = 'Servicios del Paciente'
        end
      end
      object ValorModeradora: TUniEdit
        Left = 935
        Top = 276
        Width = 136
        Hint = ''
        Text = ''
        TabOrder = 65
      end
      object HoraAsignacion: TUniDateTimePicker
        Left = 380
        Top = 274
        Width = 76
        Hint = ''
        DateTime = 0.500000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        Kind = tUniTime
        FirstDayOfWeek = dowLocaleDefault
        TabOrder = 66
        Color = clWhite
      end
    end
    object UniTabSheet4: TUniTabSheet
      Hint = ''
      Caption = 'Reportes'
      ExplicitWidth = 1186
      ExplicitHeight = 632
    end
    object TabAgenda: TUniTabSheet
      Hint = ''
      Caption = 'Agenda y Medicos'
      ExplicitWidth = 1186
      ExplicitHeight = 632
      object UniLabel28: TUniLabel
        Left = 24
        Top = 24
        Width = 79
        Height = 13
        Hint = ''
        Caption = 'Datos de Medico'
        TabOrder = 0
      end
      object codigoM: TUniEdit
        Left = 18
        Top = 71
        Width = 84
        Hint = ''
        Text = ''
        TabOrder = 1
      end
      object UniLabel29: TUniLabel
        Left = 24
        Top = 52
        Width = 33
        Height = 13
        Hint = ''
        Caption = 'Codigo'
        TabOrder = 2
      end
      object ubBuscarMedico: TUniSpeedButton
        Left = 97
        Top = 71
        Width = 38
        Height = 22
        Hint = ''
        Caption = ''
        ParentColor = False
        Color = clWindow
        TabOrder = 3
        OnClick = ubBuscarMedicoClick
      end
      object UniLabel30: TUniLabel
        Left = 141
        Top = 52
        Width = 64
        Height = 13
        Hint = ''
        Caption = 'Identificaci'#243'n'
        TabOrder = 4
      end
      object IDMedico: TUniEdit
        Left = 141
        Top = 71
        Width = 119
        Hint = ''
        Text = ''
        TabOrder = 5
      end
      object UniLabel31: TUniLabel
        Left = 267
        Top = 52
        Width = 37
        Height = 13
        Hint = ''
        Caption = 'Nombre'
        TabOrder = 6
      end
      object NombreM: TUniEdit
        Left = 266
        Top = 71
        Width = 163
        Hint = ''
        Text = ''
        TabOrder = 7
      end
      object UniLabel32: TUniLabel
        Left = 435
        Top = 52
        Width = 43
        Height = 13
        Hint = ''
        Caption = 'Direcci'#243'n'
        TabOrder = 8
      end
      object DireccionM: TUniEdit
        Left = 435
        Top = 71
        Width = 143
        Hint = ''
        Text = ''
        TabOrder = 9
      end
      object UniLabel33: TUniLabel
        Left = 585
        Top = 52
        Width = 15
        Height = 13
        Hint = ''
        Caption = 'RM'
        TabOrder = 10
      end
      object RM: TUniEdit
        Left = 584
        Top = 71
        Width = 76
        Hint = ''
        Text = ''
        TabOrder = 11
      end
      object UniLabel34: TUniLabel
        Left = 666
        Top = 52
        Width = 36
        Height = 13
        Hint = ''
        Caption = 'Usuario'
        TabOrder = 12
      end
      object UsuarioM: TUniEdit
        Left = 666
        Top = 71
        Width = 121
        Hint = ''
        Text = ''
        TabOrder = 13
      end
      object UniLabel35: TUniLabel
        Left = 793
        Top = 52
        Width = 27
        Height = 13
        Hint = ''
        Caption = 'Clave'
        TabOrder = 14
      end
      object ClaveM: TUniEdit
        Left = 793
        Top = 71
        Width = 121
        Hint = ''
        CharEOL = '*'
        Text = ''
        TabOrder = 15
      end
      object UniLabel37: TUniLabel
        Left = 1001
        Top = 52
        Width = 48
        Height = 13
        Hint = ''
        Caption = 'Intervarlo'
        TabOrder = 16
      end
      object IntervaloM: TUniEdit
        Left = 1001
        Top = 71
        Width = 65
        Hint = ''
        Text = ''
        TabOrder = 17
      end
      object ubGuardar: TUniSpeedButton
        Left = 1072
        Top = 59
        Width = 92
        Height = 41
        Hint = ''
        Caption = 'Guardar'
        ParentColor = False
        Color = clWindow
        TabOrder = 18
        OnClick = ubGuardarClick
      end
      object UniLabel38: TUniLabel
        Left = 24
        Top = 125
        Width = 67
        Height = 13
        Hint = ''
        Caption = 'Crear Agenda'
        TabOrder = 19
      end
      object UniLabel39: TUniLabel
        Left = 265
        Top = 155
        Width = 38
        Height = 13
        Hint = ''
        Caption = 'Ma'#241'ana'
        TabOrder = 20
      end
      object UniLabel40: TUniLabel
        Left = 267
        Top = 174
        Width = 27
        Height = 13
        Hint = ''
        Caption = 'Inicial'
        TabOrder = 21
      end
      object UniLabel41: TUniLabel
        Left = 353
        Top = 174
        Width = 35
        Height = 13
        Hint = ''
        Caption = 'Finaliza'
        TabOrder = 22
      end
      object UniLabel42: TUniLabel
        Left = 462
        Top = 174
        Width = 33
        Height = 13
        Hint = ''
        Caption = 'Turnos'
        TabOrder = 23
      end
      object Turnos: TUniEdit
        Left = 460
        Top = 193
        Width = 67
        Hint = ''
        Text = ''
        TabOrder = 24
      end
      object UniLabel43: TUniLabel
        Left = 533
        Top = 174
        Width = 58
        Height = 13
        Hint = ''
        Caption = 'Turnos Web'
        TabOrder = 25
      end
      object TurnosMW: TUniEdit
        Left = 533
        Top = 193
        Width = 67
        Hint = ''
        Text = ''
        TabOrder = 26
        OnKeyPress = TurnosMWKeyPress
      end
      object UniLabel44: TUniLabel
        Left = 625
        Top = 155
        Width = 28
        Height = 13
        Hint = ''
        Caption = 'Tarde'
        TabOrder = 27
      end
      object UniLabel45: TUniLabel
        Left = 625
        Top = 174
        Width = 27
        Height = 13
        Hint = ''
        Caption = 'Inicial'
        TabOrder = 28
      end
      object UniLabel46: TUniLabel
        Left = 718
        Top = 174
        Width = 35
        Height = 13
        Hint = ''
        Caption = 'Finaliza'
        TabOrder = 29
      end
      object ubCrear: TUniSpeedButton
        Left = 967
        Top = 174
        Width = 99
        Height = 41
        Hint = ''
        Caption = 'Crear'
        ParentColor = False
        Color = clWindow
        TabOrder = 30
        OnClick = ubCrearClick
      end
      object ubEliminar: TUniSpeedButton
        Left = 1072
        Top = 174
        Width = 92
        Height = 43
        Hint = ''
        Caption = 'Eliminar'
        ParentColor = False
        Color = clWindow
        TabOrder = 31
        OnClick = ubEliminarClick
      end
      object HoraI: TUniDateTimePicker
        Left = 265
        Top = 193
        Width = 87
        Hint = ''
        DateTime = 0.333333333333333300
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        Kind = tUniTime
        FirstDayOfWeek = dowLocaleDefault
        TabOrder = 32
        Color = clWhite
      end
      object HoraF: TUniDateTimePicker
        Left = 358
        Top = 193
        Width = 87
        Hint = ''
        DateTime = 0.500000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        Kind = tUniTime
        FirstDayOfWeek = dowLocaleDefault
        TabOrder = 33
        Color = clWhite
      end
      object HoraT1: TUniDateTimePicker
        Left = 625
        Top = 193
        Width = 87
        Hint = ''
        DateTime = 0.583333333333333400
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        Kind = tUniTime
        FirstDayOfWeek = dowLocaleDefault
        TabOrder = 34
        Color = clWhite
      end
      object HoraT2: TUniDateTimePicker
        Left = 718
        Top = 193
        Width = 87
        Hint = ''
        DateTime = 0.750000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        Kind = tUniTime
        FirstDayOfWeek = dowLocaleDefault
        TabOrder = 35
        Color = clWhite
      end
      object Calendar1: TUniCalendar
        Left = 3
        Top = 153
        Width = 258
        Height = 289
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Date = 40699.000000000000000000
        FirstDayOfWeek = dowMonday
        TabStop = False
        TabOrder = 36
        OnClick = Calendar1Click
      end
      object UniLabel8: TUniLabel
        Left = 811
        Top = 174
        Width = 33
        Height = 13
        Hint = ''
        Caption = 'Turnos'
        TabOrder = 37
      end
      object TurnosT2: TUniEdit
        Left = 809
        Top = 193
        Width = 67
        Hint = ''
        Text = ''
        TabOrder = 38
      end
      object TurnosTW: TUniEdit
        Left = 882
        Top = 193
        Width = 67
        Hint = ''
        Text = ''
        TabOrder = 39
      end
      object UniLabel9: TUniLabel
        Left = 882
        Top = 174
        Width = 58
        Height = 13
        Hint = ''
        Caption = 'Turnos Web'
        TabOrder = 40
      end
      object UniDBGrid1: TUniDBGrid
        Left = 267
        Top = 221
        Width = 897
        Height = 223
        Hint = ''
        DataSource = DataSource
        LoadMask.Message = 'Loading data...'
        TabOrder = 41
        Columns = <
          item
            FieldName = 'Fecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 139
            Expanded = True
            Sortable = True
          end
          item
            FieldName = 'HoraI'
            Title.Alignment = taCenter
            Title.Caption = 'Hora Inicial'
            Width = 126
          end
          item
            FieldName = 'HoraF'
            Title.Caption = 'Hora Final'
            Width = 73
          end
          item
            FieldName = 'Turnos1'
            Title.Alignment = taCenter
            Title.Caption = 'Turnos Ma'#241'ana'
            Width = 81
          end
          item
            FieldName = 'webm'
            Title.Caption = 'Turnos Web'
            Width = 78
          end
          item
            FieldName = 'HoraTI'
            Title.Alignment = taCenter
            Title.Caption = 'Hora Inicial'
            Width = 110
          end
          item
            FieldName = 'HoraTF'
            Title.Alignment = taCenter
            Title.Caption = 'Hora Final'
            Width = 110
          end
          item
            FieldName = 'Turnos2'
            Title.Caption = 'Turnos Tarde'
            Width = 78
          end
          item
            FieldName = 'webt'
            Title.Caption = 'Turnos Web'
            Width = 94
          end>
      end
      object UniLabel36: TUniLabel
        Left = 920
        Top = 52
        Width = 37
        Height = 13
        Hint = ''
        Caption = 'Agenda'
        TabOrder = 42
      end
      object MAgenda: TUniComboBox
        Left = 920
        Top = 71
        Width = 75
        Hint = ''
        Text = 'NO'
        Items.Strings = (
          'NO'
          'SI')
        TabOrder = 43
        IconItems = <>
      end
      object ubAsignarHoras: TUniSpeedButton
        Left = 267
        Top = 464
        Width = 142
        Height = 49
        Hint = ''
        Caption = 'Asignar Horas Web'
        ParentColor = False
        Color = clWindow
        TabOrder = 44
        OnClick = ubAsignarHorasClick
      end
      object ubVerHoras: TUniSpeedButton
        Left = 462
        Top = 464
        Width = 156
        Height = 49
        Hint = ''
        Caption = 'Ver Horas'
        ParentColor = False
        Color = clWindow
        TabOrder = 45
        OnClick = ubVerHorasClick
      end
    end
    object UniTabSheet5: TUniTabSheet
      Hint = ''
      Caption = 'Citas Web'
      ExplicitWidth = 1186
      ExplicitHeight = 632
      object UniLabel48: TUniLabel
        Left = 25
        Top = 43
        Width = 59
        Height = 13
        Hint = ''
        Caption = 'Fecha Inicial'
        TabOrder = 0
      end
      object FechaIncial: TUniDateTimePicker
        Left = 24
        Top = 62
        Width = 153
        Hint = ''
        DateTime = 44362.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        TabOrder = 1
      end
      object UniLabel49: TUniLabel
        Left = 196
        Top = 43
        Width = 54
        Height = 13
        Hint = ''
        Caption = 'Fecha Final'
        TabOrder = 2
      end
      object fechaFinal: TUniDateTimePicker
        Left = 196
        Top = 62
        Width = 153
        Hint = ''
        DateTime = 44362.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        TabOrder = 3
      end
      object ubConsultar: TUniSpeedButton
        Left = 355
        Top = 52
        Width = 124
        Height = 33
        Hint = ''
        Caption = 'Consultar'
        ParentColor = False
        Color = clWindow
        TabOrder = 4
        OnClick = ubConsultarClick
      end
      object UniDBGrid2: TUniDBGrid
        Left = 24
        Top = 106
        Width = 1161
        Height = 430
        Hint = ''
        DataSource = DataSource1
        LoadMask.Message = 'Loading data...'
        TabOrder = 5
        OnDblClick = UniDBGrid2DblClick
        Columns = <
          item
            FieldName = 'nombrec'
            Title.Caption = 'Paciente'
            Width = 249
          end
          item
            FieldName = 'tipidafil'
            Title.Caption = 'T.Doc'
            Width = 44
          end
          item
            FieldName = 'afcodigo'
            Title.Caption = 'Documento'
            Width = 74
          end
          item
            FieldName = 'eps'
            Title.Caption = 'EPS'
            Width = 180
          end
          item
            FieldName = 'fechaCita'
            Title.Caption = 'Fecha Cita'
            Width = 75
          end
          item
            FieldName = 'hora'
            Title.Caption = 'Hora'
            Width = 64
          end
          item
            FieldName = 'medico'
            Title.Caption = 'M'#233'dico'
            Width = 176
          end
          item
            FieldName = 'descripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 285
          end>
      end
      object Filtrar: TUniEdit
        Left = 572
        Top = 62
        Width = 613
        Hint = ''
        Text = ''
        TabOrder = 6
        Triggers = <
          item
            ButtonId = 0
          end>
        OnKeyPress = FiltrarKeyPress
      end
      object UniLabel50: TUniLabel
        Left = 572
        Top = 43
        Width = 28
        Height = 13
        Hint = ''
        Caption = 'Filtrar'
        TabOrder = 7
      end
    end
  end
  object UniToolBar1: TUniToolBar
    Left = 0
    Top = 0
    Width = 1211
    Height = 89
    Hint = ''
    TabOrder = 1
    ParentColor = False
    Color = 11169097
    ExplicitWidth = 1194
    object UniImage1: TUniImage
      Left = 3
      Top = 3
      Width = 73
      Height = 73
      Hint = ''
      ParentRTL = False
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000800000
        00800806000000C33E61CB0000000473424954080808087C0864880000000970
        485973000002E1000002E101E403D9690000001974455874536F667477617265
        007777772E696E6B73636170652E6F72679BEE3C1A00001EB34944415478DAED
        5D097C53451AFFCF4BD2F4A4400B94B3DCA794A61541441057453C7757D96557
        65A11464A12965175C779515C563050169AB22B615055DD71B7511753D400529
        D296FB3ECA514A6929F44E93BCD99997A3499BB6499AE4A5B5FFDF2FCDBCD7E4
        658EFF7CF37DDFCC7C43D00A31277E411FA3914E62C95120742808FA83A233BB
        0E61AF20F6BAC25E15EC7511204709C14140DC7155ADDAF1DE8ED5D572E7DF9F
        40E4CE80B3488C4B192652713A019DCA2E07B8F9981A0A6C1508DDA833047EB4
        61EF0B9572974B6EF83B0148626CF2140AFA7796D3F11E7D3245397BE66BECD9
        2BB372D30BE42EA85CF05B02CC8A4DBA0184AC61C97847FF8FEC4011DD4D4464
        3845641845683010A0A4500880AE96A0D64071A542407119C185CB04F9170974
        0687C5D5B1D74BB42A6869D691E5E57297DBD7F03B02CC884DE928405C45089D
        513F7F3D2245C4F61731BC8F88B020EAD27345F6F1B3C502F69D5460DF690135
        B50D3E52C074056D464EDA8772D7812FE15704488C4B8EA794FE0736633C6B14
        0CEA2162628C11BD18013C01A311D8972F60EB5E252E9737A8820D0A413777DD
        EE755572D7872FE03704488C4B7A905292C99201967B3D3A8BB87B8C51EAF9DE
        0027C28F8794D8B64F01BDA1EE3E1316BB028CFABBD6EE5D5B2477BD781B7E41
        8084386D0AA15865C98FC0FEFE4A63C0B8E14629ED6D945610BCFFBD12E7D810
        618363C4482767EC4D3F2577FD7813B2132051A34D663D6E8DE53A948DEDD326
        1AD0BB8B777A7D6310D9CF6DD9ADC4CEC30ADBDBA7999570435BB6126425006B
        FC3FB0C6DFC89252D7EBCCB4F9E9B7E8D129D43505CF93D87E50812F7394A0D4
        5A41FB0C5431617DDE8B57E4AC2B6F4136022468B4A3D88FFFC49281FC9A377A
        E2ED7A4902C88DEC230AFC375B697B6B53666EDA6F20A9076D0BB2102061C823
        6124B8FA67961CCCAF79A3F3C697B3E7D7C7377B94CC4AB0190E08FD4B664EFA
        6AB9F3E569C84280444D522A05D14A196039E062BF7F946FC7FCE6C08780FF6C
        53E1D019AB62A8A3466154D6DE3547E4CE9B27E17302CC1AA5D5B0117F174B4A
        DDEBA61803268D32CA5D0F0E51AD2378E5B3005C357B041827BEC8CA4DBB5DEE
        7C7912BE278046FB2D7BBB89A7BB8653FCF9AE5A0842CB9EE94D7009F0CE5695
        F59A507267465EEA66B9F3E529F8940066FFFE0F96EB99B7D6A26F94FF8CFB8D
        61E3372A1C3B6F65E90EA6108E933B4F9E826F09A0D17EC2DEEEE6E97E6CCC9F
        71AB5EEEF23B8582128257375B1D944C0AD0491979E9DFC99D2F4FC067049813
        9FD2DD281ACFC23CF64FBFA51603BAFB5FEFE7DEC0D2726044B46837346DF85A
        85E305D61B1B9814982E775E3D019F1160566CF222D67556F03437F716FCBA56
        B200FC05354C187DB15B89DCE30AC902183BCC8829D7D64D10D4D3052AD4B5C6
        EE2F1F78B942EE7CB714BE238046BB9DBD5DCFD3FEA6F9F39EFDC94F4A5CADAC
        AB8E91FD44DC3FBE6E88E213472B3E08902C030E4AC86FB372523F923BEF2D85
        4F086076FC94B0A4D485B8E61FD5497EF15F7059C0FF72153851606F86F48CA4
        9836418F0E21F679FCE04725F69EB43A87D2D930A095BB0C2D854F08302B2EF9
        7626573FE7E96035F0C8549DACE2FFEC2582ED87949258A7366DCCC7FC89238D
        9830D2E0701632870D0F9B76585DC4071801AE91AF149E816F2440AC76316BF0
        E53C3DA497883F4EF2BDF6AFD313EC3D45F0F351250A4B1B167B40771193E38D
        E8D6A9718F64F15582B44FACD680A1AC3622E4BD034B6BD18AE11302246A9233
        28E82C9E1E3FC2885BE30C2D7DA453A862E3F5E1B382F4E262DEE0A06DBB76A4
        B85563C0E05ECDBBA2F9B2B2656FABA5A963A9F288627846CE8B877C52182FC1
        474380F61B50F075FCB867AC01F183BCA300EA986039532420BF88B09702E798
        A8171B5135F8DC035F7032B087E8D270C4250097041228EECACC4BFBAF2FEAD0
        5BF00D01345A3EF327ADEE9D36518F617D5A36F163148964AB5FAE2028BA4270
        A144C00526D6F9FA3EDA846E191AC8B57B233403C426457D53C8D8A2623A8459
        69A4F481CCBCF4B77D5187DE82AF08C067D0A4A95F5B07109F642928161AF452
        9112D4B2DE5CCD46D75A3676F315BC65ECB3153504E55584A51BEFD98D810F3B
        9E586266E71022989B9993F6AA2FEAD05BF01501F2D95B1F9E4E98AC47745711
        15D54CA1DA142039603C89E000A6C885D722446DC481F3A15689C0F70CDC3BCE
        806BA25B267DB833C83A454C690A93006B5AF44099211B018E9C13F0F6B72AB7
        9FA910283A041AD029448FF0602322C36A11D5A19689F93A05F3686130BE3D14
        6195167CACBF7EA811BF62D240E9E60CE43BDF31F3F1ACC917C004D5C2AC9CB4
        177D5187DE826C04D8774AC0FB3F9808A062ADD1A56B207B376547C9AED56A01
        C1C14A9626D8BDFB32F4362A7C37D6D0B7C75C62BDBDF9DE9C5F12882FF747C2
        60AC2B2ADF5574CF58968F6EAE3BA3DA09E0061C1160F73185E47EE5183E2C1C
        7F5930B4D1EFE79FADC42B6B8FA1B84467BD17C444FD84C157D0BF6BF3FB372E
        57A8180922505A652F71B8327A0B330139219C453B01DC802302EC38ACC0965D
        260268623B61FEDCC14D3EA3A2D2808CACE3D87FE0AADDFD5E9D75183FB8149D
        829B5626F44C02FC74BC230E1484DA590A7C5818DACB88EB4788887662297A3B
        01DC8023026CDDA7C0377926028C1D1389C499CDEFF8A6ACE5B66E2BC2071F9D
        45754D9D2F81108A41DDAAA1E95386CEA14D13E1625900B61DEE8CE28A86FA07
        5FA1740D331363FA898D2E506D27801B704480AF7295F861BFA92227DED8150F
        3DD0CFE9E75D2ED561E3DBA7B1779FFD527D5E98E82ED5888B2E677A82AED1EF
        730970A22818BB4E85E34A95D2E16722D8B0D0B79B887EECD52382A25318954C
        C87602B8014704D89CADC4CE23A68ABCEDD6EEF8DD7D7D5C7EEEBEFD57F0C187
        6771AEA0A11ED03D5C87C1519518C024835AE958B4F33ECE897090998B05A5EA
        2617FDF389A2883011553A019535E6EFB713C0393822C0C7DB95C83D6122C03D
        77F562AF9E6E3D9BB2B6DDFED3257CB6F93C2E1537ECF5DC5C8C8EA891C8D09B
        BD2B05C7CD5C56CD7A7641084E1707E172A573E6693B019C842302BCBB4D8503
        F926637C2AEBFD93991468094426D773734BF1C597053879DA71E4171E3CA27B
        788DA438F6EA5C8D48A62F389A07A8D02971EEB21AE74B0351C474064E0E479E
        C776023809470458FF950AA70A4D0498FE603F4C18DFD563BF77EA54057EDC51
        8CEC9F8B5155D5F8C4131F1A22C3F49213A94B68AD94EE106490A4862D286BE9
        B26A054A9964C83EDD0125E5A629E1760238094600BE18B4174F7302A894A649
        15A3B96D16FF6518860CEEE0F1DFE5CEA33D7B4A91C32403D7176C2D87A62A24
        38D088F0400342D97B002309274AA04A94D2DCBDCCA582E9C3AD7FBB98570990
        183BFF564A846759F25ACB3DAE5DF3FDF89639F5CE9D03F0AFA7639992E55D2E
        1AF4228E1E2FC7D163E53872B40CA7D930A137B46C5E80E5B89A0D0D5922148F
        B7D6DDC35EAB75F3BE7FDE3B1AF5BA0B6C005EA01D8211C3C37D5E70DEF89C04
        9C0CE7CE57A3B090BD8AAA19515C770FB36F1CA64AE36DAFEF7AF9ACCF0BD242
        78850089B149375142BE86B9F1096BE840B5602782BB44AA25DB9FBB81FD055C
        912C29A995C85052A24359B91EE5E506E9BDBADA94775DAD5122C9E5D25AF63F
        3BA7D3F765030B27BDF7DE7BFEB3DCD909788500B64BC0BB750DC4BC8707A35B
        B7409C38592E555AE78840F4EB1302E2C77B029B83C864FFE75F5CC0479BEA3A
        3DA1E4D71979A99BE4CE9B2BF038016669E647B38E7FDA72FDC46323D1BB77B0
        DCE5F41A5ECD388E5D3F97486942F16E465EDAEFE5CE932BF03801CC8ADF973C
        DDB54B209E5D364AEE327A153979A57879ED51CBE5C1CCDCB41172E7C915789C
        0009B1DA07D890CFE3FE60D08030FC6DF170B9CBE8559C385181E7561CB05C9E
        650470DDA72D233C4F004DD2140222ED9FE726DEF267357297D1ABD8995D8CD7
        B24E582EF73002C4CA9D2757E07102CC8D99DB55AF50155A9EBD3079A82C669E
        AFB062D521C994E4A094AECBCA4B7F58EE3CB9026F5901FF636FBFE2E9A8A820
        3CCA8681D010650B9FEA7FD8F67D11DE7CAB2E8E2415C9CD597B52BF953B5FAE
        C03B04304502F9DEF2FC2E4C199CF5A7FE1838304CEEF27A043535223301CF63
        F3960BD2221533BE63E27F92DC7973155EF30432123CCD48F098EDBDC84835EE
        BCBD276E1CDF45EE72BB85EA6A03B2DE38890307AEA2566FE746BE0888633273
        5FCA973B8FAEC29B0E789218A77D9A7590BFDBFE0E5FE5BB6A793C8283152D78
        B43CD8BCA5001F7E5CCFDB4BE9499190BB5FCF4D3B2877FEDC81D76703CDC3C1
        932C79B3E5F7E6CE1E886BE323E42EBBCB78FA5FFBA5F903332EB1C65F572B06
        3ED79A8F9EF15D849038EDEBA098C1D3378CEB8299D3FBCB5D76975056A6C75F
        1FCD91562071B0B711ADB5D7DBC287318292A63249F02E4F8785A9B0EAF9B856
        3517F0E3F64B78FDCD9396CB334CE18B963B4F9E800FA384CD09378AEA4B3087
        8979FCD16BD0B76F88DCE5771AAFBE760CBB765F365D10F272664EEA7CB9F3E4
        09F834504BA246FB1D339A26F2F46F7FDD1B77DCDE43EEF23B052EF6172EDE2D
        6D4E31DD68FD71012CF029011262939E20842CE5E96B468423453BB4854FF40D
        CE9EABC2934FEFB35C1A6A0210F1D6CEB432B9F3E509F8560298168A489E32BE
        4064F5CA786963A8BFE3CBFF15E2DDF7AD267E361BFFC7C89D274FC1A7049871
        D38C40C595B022F6AB924BF0E1D983303ABEB3DC75D02C963DB35FDAA02A81D2
        6732F3D21F973B4F9E82EFA385DB988331233B2279FE10B9EBA0499C3B5F85A5
        CBACE2BF4D0486B285CF099018977433A5D27A41C90C5CFA580C7AF60C92BB1E
        1A0537FDB80968C6CF4CFC8F963B4F9E841CE11A09B3067E66D6401CBFE01E41
        EE19F4471416D6E09F4FED95D6FF49680341A1EA43A62363B4F7B32A7D4FCA00
        2158B470A8573686B414A92F1DC5DE7DA596CB6365030B87B5B655BFCD411602
        2CC552E1ACA6241BE6D0717CE5F0134B462240E53F16C1F69F8A91B5DEBAD287
        C72098969193FE1FB9F3E569C816B17766FCFC3841143809A469C11B6FE88A3F
        3DE47C8C006F82EF325EF6EC3EEBBE424F9D159418A3ED250AE42902712263D4
        790AFA5C566EFAE7729655DE8323E3B4CB29C562CBF5B4DF45E3969BA3E4CC12
        2A2B0D786EC541697388048A72AA52C666ED5A7DB225CF4DD0686F6195FD6F96
        8CB4B96D602DF0DBCC9CB44FE52AAFAC0498133F476514D5DC22B8915FF3AD62
        33A6F7C7B8EB235BF864F7C057FAAC493B8C6327CA2DB728CBD2FD2D3C529E24
        C625FF8352CAA7C41D2D82604A86A8916B3189EC6776CC183D2F4A6150F0A1A0
        B79421A6063CF447CF6E1777067CC7D29AF423389D6F33B5DF42A7CF8CD8948E
        0A627C13E673923802D404774C5763CBC61AD4545B3FBA4321E826AEDBBDCEE7
        61D4652780A9A292072908DDCA92D62811936EEA86DFDF1F2DAD20F23678A3AF
        CB388EA24B35363523CDF825C1CDE362CD47E37EC092D6E8575D7A2830FB8960
        F4ECAFC0AE6F6AB1FE399BD036942CCFCC4BFD9BD70B5B0F7E41008EC4B89461
        A086AF288835564CDFE8104C7FA01FFAF4F1CEB431B7EFBFF8EA02367D7A0E06
        835D3BBF92999BC6A77BDD6DFCE94C90AD655FB67AB862AE57E1A14782111C5A
        57E56FADAEC2F6CDD6E306983A44EFF4B552E83704E048D024F52020FC1C9EEB
        2CF778DC002E0DEE98DC03E1E1EE8796AD8F3D7B4BF1FE876770A1B0C6F6B611
        842E7637E88376A0565D1D465E640D39B72EFFC05D338270DB3475837034B5AC
        ED572495A3E094D5B570492108D7AEDBBDE68CB7EBDA02BF2200C7D4EB170685
        551B56B0CA9A679B3FA58A60DCD82E5248B9683725824E67C4CEEC126CFDBE08
        F9671A2CE33BCB7A6C0233F7FEE7CEB3E7C42FE8631445EEDCB29237349C20E1
        B1100CD134BE27A2F08C88E5F3CBA0B3F09020574174E3993ED07C08540FC0EF
        08608179EAF82D966CB06A84C716E0D14507F40F43341B262223D40E9FC1E311
        1415D5E0F8F1721C387455DAC1A3D339880A42C94685A2268955FA55B801F386
        58EE22B69A2F7D872A90F8CF1074EAD2BC736BD7D74C1FF8575D7B9B77194F83
        0F8EABF75B0270CCD224BFCFEAE0BEE63EC7D714848629A5B586BC4035ACE1F9
        EB6A99734A359336D73353EF2737B2E8D0C49B708F1AF7CD0D6252CBFEC31557
        44E46CD363508C12DDFBDA5B841FBF568DAFDEAD0B73C79EB9342B2FFD496FD7
        71AB21C0B0E11D50CB7AEFC993154D9E0AD21C4242141835AA237272AE482491
        2AC10D0270134F80B881107A97E51E37F1FE901284EB6E0968F0F9E3FB0CC85C
        5685B25251FADC821742252961018F99B47649250E64DB90D6070752B41A02DC
        7D4F0F4C9CD00557AED6E2F0A1729C385989FCD395282DAD6D9210016A015151
        811830201403F96B6028140A82279F3A80F232D31A3F5709303B362556244696
        37C7265E7DFCC834FDFFA455C16873565608D30F16AD0943D79E7543445505C5
        AA940A5CC8B72A853CC8FDB48CDCB4F7BD55C7AD8E00F5C1833D955CAA95166C
        72258F9B7381810A04AA15E8D849D5A8E5E02E0166C526FF89F5FA579A33F138
        6AD8B0BE71652572B7391E8ABAF65230128422A443DDF74A2F8958C948505A64
        D555744C13B8CF5B8B505B3D01DC85AB04E0265E651896B30A4BB6DCE326DE94
        070331E58140877B1C32963568FC7C42C87A36BEFF13E6BAEF374281E4E743A5
        61C1824B05468904E5A556D1C645C29CCCDCB42C4FD7713B01D03C01F89C8541
        547FCA2A6BB2E59E3326DE8AE4729C3E6415E7F97A9518FF66F64B2509B1DA7F
        B0DF7CC6F28FE1A39578F8C9503BA531FF8811E98F5648C382199499077FF574
        60CA7602A07902CC8A4DFA234C26A9843E834C265E4454D3265E3633EFDEA833
        EF44A34063D7EF4E971618266A925FB17518C54D0CC0CC7F04DB1D597FE13423
        C1DF2B70A5B84EC9E14128CAF5915A4F9D58DA4E00344F80044DF27304F4519E
        EE354081C569610D4C3C47E01B4A9E9B5B8EF3759EBE4F9818BF97274C8B628A
        19A9C834CB3FC74D51E38F0B83EC3C867C3848FF5B258A0B6DFD17749BCA6898
        BA76EFDAA296D683DF11E0A19845216A856E0A951A9EF05934C9EDD7273A1893
        6F8BC2E0C1A1D2323277515161C0AEECCBF8E2CB8B4C61B49C018BFD04E41D62
        34BEF7DA9E978ED6FF4E625CD28394920DD247D94FCF64A23F7EA2736EE93D3F
        EAB16E699DD791421C9795FBD20E9E96A6C3A9FA2376F34ECBFF47FF2A00D317
        334960634C70D3F1D5272A6D87138EB34C1CFC21332FFDC796D4B75F1080EF1B
        3418D57709BCD109B9DD56C3AE0FEE05BC26261CC3877740342385E0041978A3
        1F3E5C8E8307AFB25759FD899FFAD8C308F69E2D19CCEB16F8E9A731FC5A1D44
        24EDBD473FE7621CBCB0A002A70E5A6C40BA2D33377DA2E57FDCF51D5E63F8DC
        B2658E835B15094B82A152D595CDC074C97FAFA9C24F5FD8497EFED06565030B
        9F7177ADA26C04987EDDFC08955EB8D724E2098F27E4D89FAB60956C745C3695
        4A90D61376EDA64658981241CCFC139404BA1A5172F21417EB70F1620DAE5C69
        C423D8C4B3CDB092815F8844F8D9B2A985DBEF8BD3C31A987E8E7024D780D447
        2A6CABFD96CCDCD4AF2D5709431E092321D59B2CE72B730CBB5689D94F84421D
        68FFAC6F3FD4E1E38C6A891075A0DB44A5F8A03BB18A7DBB3368F4BC28A541F1
        1BC6763EAE73C63B56A14319FBAFBB068A71A3A0D40C85F1F069E83FDD0A43F6
        3EB87C66ACA342770E87EA8EF1504DBE01B48A55E60F79306CCF8578E25C535F
        DB036E93DB4CF65C334685B94F3917F296138013C10CBEBD6C2C6C7CFDD2AEA9
        AB617CFBBC75F148DF610AFC7959A86471D822FFA811EB9FAD44D179BB798DCB
        4C7A3E909993BAC5A5BA68716D36033E4B66A0E26F89C81A9D601C1A891E4EC2
        99193436064AD6E88A98C1A6DE590F6271298CD9FB61D8B90FC6FDC7B917C8E9
        7C08919DA0183D02CA3123A118D5C8F32F5C72960C56DC393D10773C14D8ECE7
        B859B7425B6EF55A3A8A2B3C75EA544587135119969D531C91CCD298F76C28BA
        F5B6AF36EE647A37BD0A3BBFB21B1274A2208E7B7DF74B39CED68B570830275E
        3BC02882AFFDBF8F98CE0A70F83B424438146347991A7DC400D8D940CD801A8C
        A0670A21E617403C7711B4B29AF5E61A362A1A40825983040741E8180AA15F4F
        903E3DA4DF7205CE9281F7FE879F0CC1C8B1CD2B855C91DBBBDD2ABB2F324577
        A952A8CDB45D0A665E32CFCF234EB2DCE36EE33F3F192A398DEA83CF24BEC374
        039BE5657C31CB3C67CBE949029084B8E45F0B942E600D3FA1B167936E11505E
        6F6EF4217D811668F4BE427364E04A219FDC891EDCB452C8CD416E1652FB19E9
        1384D0A5BD7222DF668D6FFDCFACD8E4454C4C3C0FB3C40C646AF1D237C211D6
        C9BEBEF8B3B8AFE0708E591A12ACCFCC499BE96CD93C52FBB347CD1F210AC26B
        3087886FF023BDBA41C51B9C35BC62406F4FFCA46CB092E1C71C8827CF5BEFF3
        8659941A2689ECA6F0FD673A7CF84AB5B41AC8BE92B09FE9374B9859C7870569
        A0A83F1DFEF86B610DA691376FA8C17FDFAC5BD5C4A4CABD59B9E99F385B9E16
        13204193344B0049AB6FBA09D1DDA1BC4123F574A14FCB4E04F35718730EA17A
        D93AAB25214DEEBC182A89ECA6C03D7B5BDEAAC1F62D3ABB194233B2595D3E46
        28E50E0FBE1C5D7A18F70FCC78D43EEC3E9F3A7E6549A58D44211F30EB622A5C
        5848D22202D4F7697370452E60EA6D1006B5AAA0D96E43FFF54EE852DF8645BB
        1B3B598D871639B7DBB9F88288CFDEA8C1CFDFD6D61F16383835242BA9673F46
        AC34FB09A312F6DDE793CA515966D12A718456068DCE3AB2BCDCA91F87E56B6E
        22312E790EA5D4BA588174EA80C09407A0D00CF35A65FB23F41F7F035DD6C7D6
        EBD137B39EFA77D70EC8E0F3FF9B37E890BBADE1DA063EF63FF25218B302EA44
        BF5E4FB12AB912678E5BC54705E3CF1877C2D6B94500F3BEBE9D30335460637C
        E053F32453EB9784FA8DCF17852C5C1582F008F736B99E3E6CC4E71B6BB07FA7
        C928E0FAF1AC25C1D0DC68BFC268E3CA2AECD852A744B464E3AACB04906CD5E3
        51BB59523A0A84447644D08ABFBA6C66B576386AFC9495A1E818D972BDFA689E
        411A1686C4A91ACC39F07D047C3F811584ACC9CC494D71F7B75CCEADDDD4A840
        10F48C96D9F0FE19E0C15BD06FFA16BACC8FACD7DC2DBCE085308F347E533877
        C28895C9E5B616C48EB2DA889B5A3235EC728E1335DADD96E81ECA49A311B8F0
        21AF16DADFE0CD9EDF14B8B2F7FCFC7294D44D0B1732932F9E997C052D79AE4B
        B94E8859308428C4C396EB90971F936CFC5F0ADC697CEEA97B7F6D0D7AF51798
        1917D2C091E30CB885F0F2E31538B8CBAAF4F189EC5B98D2B7B5A565722937B3
        E292168292553CCD1D3A41AB17BBF2F5560D771AFFA72F74D8B8AADA6AE24574
        1730EFE95044F5714D49E48E1EEEF0B180FDE2A28CDCB4959E28978B04A80BF1
        A6BA7712D4B37EE3893CF83D3CD1F816048711CC591A226D0E710607B20D7865
        4985F5396CF87D3F2B37ED77F0D0AE219708601BEB97373E27415B472D53F86A
        6D143E371B9F4799E636B2F425BE9CECC145C192CFA029D477F6F0338A511574
        9DABCE9EA6E09A04D06877C17C1278E02333A01C1FE7A97CF8253CD1F804F4BC
        810A9304011A42E91BBCEAA4FBEC117C1A992F2B77341FE649674F5370910049
        B9EC2BD2B978418FCD8662CC488F57BABFC01D53CF41CF2F244471B325B2E8CC
        F805630451E4933D56CD992F2AF9D3DF82A5A1C116F59D3DACDEA767E6A66EF0
        7439DB09E000DE687C0B78A430AAA09F5AEA91A3535701B3FF1982E82126772F
        DF4AF6F66ABBE821AB33F352FFE28DB2B613A01E3C29F6D7E7A51E73F479D322
        D8C08DF537964E5B1084A8680556A754484380048A1F140ADDCDDE8A1FD44E00
        1BF8A2F16D40984EC58FD55B0A9BADE57CF2C766758F479C3D4D66C2950FB765
        027853EC370573208C7760A31798E131674F536827007CDEF31B60E6E879BD05
        8382CFAFDC68BEA5E3FB4F3272D3FEEDEDB2FFE2092077E3DB6276EC82D15410
        7B0B2460DBBADD2B8B7D51FE5F3401E412FBFE845F2C01DA1BDF845F2401DA1B
        BF0EBF3802B437BE3DDC260082D40EB757F93D2AEA3C6CCE287CDC1DCB976079
        5AE1F317B83A19C4B748C7CB9D694FC099C6E71331CBE757B4D9C63795C90524
        6A92965090A7E4CE744BE1EC32AE7A11BDAF1A2919DD961A9FC3E5F549B347CD
        1F4C158A30B933EE2C58EF4D01A10F5AAE5D59C3C79769F31DBDA607A13C332F
        2D1C3E08DFEA4BF8FFCECC162051A3FD2B6BAD172CD7CE343E8FDC5D78C6B4D5
        4BAF03DE5C51A733280421DA9791BC7D81364B00DBF58B1CCE343EEFF12B1794
        4B615B1D829029AE0660F077B44902CC894FE96E148DBCA74A0BEF9C15FB7CE7
        EE3B6BAA1BFD3F05BD3F2B37FD03B9CBE749B4490298165DC01A2FC7D1B66A47
        D8FD5D2DB29EA9B2544C351B3EF8F22BBED393C72FDA6E0C2F9FB3FEBBF535CD
        3EA815A14D12802341A3BDC80A279D3CA57D3E1443E31CAFC23D7FD288A27322
        3A741670E9BC111B5EB08EF9A73273D3FACB5D0E6FA3CD12609646BB99BD4DE1
        E97B138370DBEF1B0621E31EBEB756553B1EF34D5ABFFF9D67EB61B465022C63
        6FD2916F9A092A242EB13F66A6B175FB36A0BD732394B6615BDA22DA2C0112E2
        927F4328950E7CE4B1A7BAF55148317EF94BAF073665DA35FE15F6E2DA1F5F95
        236DDBA1947C9695977AB73BBFDD9AD06609307DD4C29E2AC1C02D8126F761D9
        BA7779445051AFEE6650D14E95FD2F1E6C6B27853B2E7F1B46A226E9510AC283
        3C3B0C5ED0167DFBAEA24D13C052C68498058389608C0721F1ACC0F1CCBC1BC1
        DECF182899F64B6E7C8EFF036D5576441D8B5D080000000049454E44AE426082}
      Proportional = True
      Align = alCustom
    end
    object UniLabel1: TUniLabel
      Left = 95
      Top = 11
      Width = 258
      Height = 25
      Hint = ''
      Alignment = taCenter
      Caption = 'Mod'#250'lo de Citas Medicas'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -21
      Font.Style = [fsBold]
      TabOrder = 2
    end
  end
  object DataSource: TDataSource
    DataSet = UniMainModule.Query
    Left = 1076
    Top = 657
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://localhost/citas/api/citas'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 280
    Top = 120
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        Name = 'fecha1'
        Value = '2021-06-15'
      end
      item
        Name = 'fecha2'
        Value = '2021-06-15'
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 360
    Top = 120
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 440
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = UniMainModule.Query
    Left = 516
    Top = 121
  end
end

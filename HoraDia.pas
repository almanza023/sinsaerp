unit HoraDia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniBasicGrid, uniDBGrid, uniGUIBaseClasses,
  uniToolBar, uniLabel, Data.DB, uniButton, uniBitBtn, uniSpeedButton;

type
  THorasAsignada = class(TUniForm)
    UniToolBar1: TUniToolBar;
    UniDBGrid1: TUniDBGrid;
    DataSource1: TDataSource;
    UniLabel1: TUniLabel;
    ubConfirmarHoras: TUniSpeedButton;

    procedure ubConfirmarHorasClick(Sender: TObject);
  private
    { Private declarations }
  public
    HorasAsignada: TDateTime;
    FechaAsignacion: TDateTime;
    CodigoMedico: string;
    X: Integer;
    color1, color2, color3, color4, color5: TColor;
    TurnosM, TurnosT: Integer;
  end;

function HorasAsignada: THorasAsignada;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function HorasAsignada: THorasAsignada;
begin
  Result := THorasAsignada(UniMainModule.GetFormInstance(THorasAsignada));
end;

procedure THorasAsignada.ubConfirmarHorasClick(Sender: TObject);
var
  consulta: string;
  total: Integer;
begin
  UniMainModule.QueryAgenda.Next;
  // verificar si estan sincronizadas en la API

  UniMainModule.Query.SQL.Clear;
  consulta := 'select medico, fecha, hora  from AgendaTemp where medico=''' +
    CodigoMedico + ''' and fecha=''' + FormatDateTime('yyyymmdd',
    FechaAsignacion) +
    ''' and hora between ''06:00'' and ''12:00'' and web=''true'' ';
  UniMainModule.Query.SQL.Add(consulta);
  UniMainModule.Query.Open();
  total := UniMainModule.Query.RecordCount;
  if total > TurnosM then
  begin
    ShowMessage
      ('La cantidad de turnos seleccionados es superior a los turnos habilitados');
  end
  else
  begin

    UniMainModule.Query.SQL.Clear;
    consulta := 'delete from asignacionhorasweb where medico=''' + CodigoMedico
      + ''' and fecha=''' + FormatDateTime('yyyymmdd', FechaAsignacion)
      + '''  ';
    UniMainModule.Query.SQL.Add(consulta);
    UniMainModule.Query.ExecSQL;

    UniMainModule.Query.SQL.Clear;
    consulta :=
      'insert into asignacionhorasweb (medico, fecha, hora) select medico, fecha, hora  from AgendaTemp where medico='''
      + CodigoMedico + ''' and fecha=''' + FormatDateTime('yyyymmdd',
      FechaAsignacion) +
      ''' and hora between ''06:00'' and ''12:00'' and web=''true'' ';
    UniMainModule.Query.SQL.Add(consulta);
    UniMainModule.Query.ExecSQL;
    ShowMessage('Horas Registradas Exitosamente');
    UniMainModule.Query.Close;
    Close;

  end;

end;

end.

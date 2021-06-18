{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  Project1;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  Login in 'Login.pas' {UniLoginForm1: TUniLoginForm},
  Pacientes in 'Pacientes.pas' {pacientesf: TUniForm},
  Busqueda in 'Busqueda.pas' {busquedaf: TUniForm},
  Citas in 'Citas.pas' {citasF: TUniForm},
  HoraDia in 'HoraDia.pas' {HorasAsignada: TUniForm},
  Eps in 'Eps.pas' {epsForm: TUniForm},
  Especialidades in 'Especialidades.pas' {especialidadesForm: TUniForm},
  TipoConsultas in 'TipoConsultas.pas' {tipoconsultaForm: TUniForm},
  Medicos in 'Medicos.pas' {medicosForm: TUniForm},
  Sincronizar in 'Sincronizar.pas' {sincronizarForm: TUniForm},
  HorasAsignadasWeb in 'HorasAsignadasWeb.pas' {HorasWebAsignadas: TUniForm},
  DetalleCita2 in 'DetalleCita2.pas' {DetalleCitaForm: TUniForm},
  HistorialCitas in 'HistorialCitas.pas' {HistorialCitasF: TUniForm};

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$endif}
end.
unit MostrarCitas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, uniButton, uniBitBtn, uniSpeedButton,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniToolBar, uniLabel;

type
  TcitaPacienteF = class(TUniForm)
    UniToolBar1: TUniToolBar;
    UniDBGrid1: TUniDBGrid;
    ubVerCita: TUniSpeedButton;
    DataSource1: TDataSource;
    UniLabel1: TUniLabel;
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    paciente: string;
  end;

function citaPacienteF: TcitaPacienteF;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function citaPacienteF: TcitaPacienteF;
begin
  Result := TcitaPacienteF(UniMainModule.GetFormInstance(TcitaPacienteF));
end;

procedure TcitaPacienteF.UniFormShow(Sender: TObject);
begin
  UniMainModule.Query.SQL.Clear;
  UniMainModule.Query.SQL.Add('select m.Nombre, c.Rips, c.Servicio, c.Fecha, CONVERT(VARCHAR(5), c.hora, 108) as hora from CitasServicios as c, medicos as m where c.Medico=m.Codigo and c.paciente=:Paciente order by fecha desc');
  UniMainModule.Query.Params.ParamByName('Paciente').Value:=paciente;
  UniMainModule.Query.Open();

end;

end.
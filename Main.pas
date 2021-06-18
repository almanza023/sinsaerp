unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniTreeView,
  uniTreeMenu, Vcl.StdCtrls, Vcl.Imaging.pngimage, uniImage, uniLabel,
  uniToolBar, Vcl.Menus, uniMainMenu, uniMemo;

type
  TMainForm = class(TUniForm)
    UniToolBar1: TUniToolBar;
    UniImage1: TUniImage;
    UniLabel1: TUniLabel;
    UniImage2: TUniImage;
    UniLabel2: TUniLabel;
    UniMainMenu1: TUniMainMenu;
    Admisiones1: TUniMenuItem;
    Actualizar1: TUniMenuItem;
    Pacientes1: TUniMenuItem;
    Ejecutar1: TUniMenuItem;
    opCitas: TUniMenuItem;
    Configuraciones1: TUniMenuItem;
    EPS1: TUniMenuItem;
    Especialidades1: TUniMenuItem;
    Medicos1: TUniMenuItem;
    ipoConsultas1: TUniMenuItem;
    Sincronizar1: TUniMenuItem;

    procedure Actualizar1Click(Sender: TObject);
    procedure Pacientes1Click(Sender: TObject);
    procedure opCitasClick(Sender: TObject);
    procedure EPS1Click(Sender: TObject);
    procedure Especialidades1Click(Sender: TObject);
    procedure ipoConsultas1Click(Sender: TObject);
    procedure Medicos1Click(Sender: TObject);
    procedure Sincronizar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

   procedure ShowCallback(Sender:TComponent; Asresult: Integer);

  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Busqueda, Pacientes, Citas, Eps,
  Especialidades, TipoConsultas, Medicos, Sincronizar;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.Actualizar1Click(Sender: TObject);
begin
  UniMainModule.i:=0;
 busquedaf.ShowModal(ShowCallback);



end;


procedure TMainForm.EPS1Click(Sender: TObject);
begin
Eps.epsForm.ShowModal();
end;

procedure TMainForm.Especialidades1Click(Sender: TObject);
begin
Especialidades.especialidadesForm.ShowModal();
end;

procedure TMainForm.ipoConsultas1Click(Sender: TObject);
begin
      TipoConsultas.tipoconsultaForm.ShowModal();
end;

procedure TMainForm.Medicos1Click(Sender: TObject);
begin
Medicos.medicosForm.ShowModal();
end;

procedure TMainForm.opCitasClick(Sender: TObject);
begin
   Citas.citasf.ShowModal();
end;

procedure TMainForm.Pacientes1Click(Sender: TObject);
begin
    Pacientes.pacientesf.ShowModal();
end;

procedure TMainForm.ShowCallback(Sender:TComponent; Asresult: Integer);
 begin
    if not(UniMainModule.Query.IsEmpty)then
      ShowMessage(UniMainModule.Query.FieldByName('codigo').AsString);
 end;

procedure TMainForm.Sincronizar1Click(Sender: TObject);
begin
    Sincronizar.sincronizarForm.ShowModal();
end;

initialization
  RegisterAppFormClass(TMainForm);

end.

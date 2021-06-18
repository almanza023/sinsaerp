unit Medicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Vcl.Imaging.pngimage, uniImage, uniToolBar,
  uniRadioGroup, uniButton, uniBitBtn, uniSpeedButton, uniEdit, uniLabel,
  uniGUIBaseClasses, uniPanel, uniMultiItem, uniComboBox;

type
  TmedicosForm = class(TUniForm)
    UniPanel1: TUniPanel;
    UniLabel2: TUniLabel;
    Codigo: TUniEdit;
    ubBuscar: TUniSpeedButton;
    Nombre: TUniEdit;
    UniLabel3: TUniLabel;
    Estado: TUniRadioGroup;
    ubNuevo: TUniSpeedButton;
    ubActualizar: TUniSpeedButton;
    ubCancelar: TUniSpeedButton;
    UniToolBar1: TUniToolBar;
    UniImage1: TUniImage;
    UniLabel1: TUniLabel;
    UniLabel4: TUniLabel;
    Telefono: TUniEdit;
    UniLabel5: TUniLabel;
    Direccion: TUniEdit;
    UniLabel36: TUniLabel;
    Agenda: TUniComboBox;
    UniLabel6: TUniLabel;
    RM: TUniEdit;
    UniLabel7: TUniLabel;
    Usuario: TUniEdit;
    UniLabel8: TUniLabel;
    Especialidad: TUniEdit;
    BuscarEspecialidad: TUniSpeedButton;
    procedure ubBuscarClick(Sender: TObject);
     procedure Limpiar();
    procedure ShowCallback(Sender: TComponent; Asresult: Integer);
    procedure ubActualizarClick(Sender: TObject);
    procedure ubNuevoClick(Sender: TObject);
    procedure ubCancelarClick(Sender: TObject);
    procedure BuscarEspecialidadClick(Sender: TObject);
  private
    { Private declarations }
  public
    codigoEspecialidad: string;
    { Public declarations }
  end;

function medicosForm: TmedicosForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Busqueda;

function medicosForm: TmedicosForm;
begin
  Result := TmedicosForm(UniMainModule.GetFormInstance(TmedicosForm));
end;

procedure TmedicosForm.BuscarEspecialidadClick(Sender: TObject);
begin
  UniMainModule.i := 9;
  busquedaf.ShowModal(ShowCallback);
end;

procedure TmedicosForm.Limpiar;
begin
codigoEspecialidad:='';
Codigo.Text:='';
Especialidad.Text:='';
Nombre.Text:='';
Direccion.Text:='';
Telefono.Text:='';
Usuario.Text:='';
RM.Text:='';
Agenda.ItemIndex:=0;
Estado.ItemIndex:=0;
end;

procedure TmedicosForm.ShowCallback(Sender: TComponent; Asresult: Integer);

begin
if not(UniMainModule.Query.IsEmpty) and (UniMainModule.i = 2) then
  begin
    Codigo.Text := (UniMainModule.Query.FieldByName('Codigo').AsString);
    Nombre.Text := (UniMainModule.Query.FieldByName('Descripcion').AsString);
    Direccion.Text := (UniMainModule.Query.FieldByName('direccion').AsString);
    RM.Text := (UniMainModule.Query.FieldByName('rm').AsString);
    Usuario.Text := (UniMainModule.Query.FieldByName('usuario').AsString);
    Agenda.Text := UniMainModule.Query.FieldByName('Agenda').AsString;
    Estado.ItemIndex := UniMainModule.Query.FieldByName('web').AsInteger;
  end;

  if not(UniMainModule.Query.IsEmpty) and (UniMainModule.i = 9) then
  begin
    codigoEspecialidad := (UniMainModule.Query.FieldByName('Codigo').AsString);
    Especialidad.Text := (UniMainModule.Query.FieldByName('Descripcion').AsString);
  end;
end;

procedure TmedicosForm.ubActualizarClick(Sender: TObject);
var
consulta: string;
begin
if Codigo.Text = '' then
   begin
    ShowMessage('Debe seleccionar un m�dico');
    Exit
  end;
  UniMainModule.Query.SQL.Clear;
  consulta := 'SELECT * from medicos where codigo=:Codigo';
  UniMainModule.Query.SQL.Text := consulta;
  UniMainModule.Query.Params.ParamByName('Codigo').Value := Codigo.Text;
  UniMainModule.Query.Open;
  if (UniMainModule.Query.IsEmpty) then
  begin
    ShowMessage('No existen registro para el codigo de m�dico seleccionado');
  end
  else
  begin
    // Actualizar
    consulta :=
    'UPDATE medicos SET  web=:Web WHERE codigo=:Codigo';
    UniMainModule.Query.SQL.Text := consulta;
    UniMainModule.Query.Params.ParamByName('Web').Value := Estado.ItemIndex;
    UniMainModule.Query.ExecSQL;
    Limpiar();
    ShowMessage('Datos Actualizados exitosamente');
  end;
end;

procedure TmedicosForm.ubBuscarClick(Sender: TObject);
begin
  UniMainModule.i := 2;
  if  codigoEspecialidad.IsEmpty then
  begin
     ShowMessage('Debe seleccionar una especialidad');
     Exit;
  end;
  busquedaf.especialidad:=codigoEspecialidad;
  busquedaf.ShowModal(ShowCallback);
end;

procedure TmedicosForm.ubCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TmedicosForm.ubNuevoClick(Sender: TObject);
begin
Limpiar();
end;

end.

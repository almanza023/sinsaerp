unit Eps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniSpeedButton, uniEdit,
  uniLabel, Vcl.Imaging.pngimage, uniImage, uniToolBar, uniGUIBaseClasses,
  uniPanel, Vcl.Buttons, uniRadioGroup;

type
  TepsForm = class(TUniForm)
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
    Nit: TUniEdit;
    UniLabel5: TUniLabel;
    DigitoVer: TUniEdit;
    UniLabel6: TUniLabel;
    Telefono: TUniEdit;
    UniLabel7: TUniLabel;
    Direccion: TUniEdit;
    Correo: TUniEdit;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    Municipio: TUniEdit;
    ubBuscarMunicipio: TUniSpeedButton;
    procedure ubBuscarClick(Sender: TObject);
    procedure Limpiar();
    procedure ShowCallback(Sender: TComponent; Asresult: Integer);
    procedure ubActualizarClick(Sender: TObject);
    procedure ubBuscarMunicipioClick(Sender: TObject);
    procedure ubNuevoClick(Sender: TObject);
    procedure ubCancelarClick(Sender: TObject);
  private
    { Private declarations }
    departamento: string;
  public
    { Public declarations }
  end;

function epsForm: TepsForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Busqueda;

function epsForm: TepsForm;
begin
  Result := TepsForm(UniMainModule.GetFormInstance(TepsForm));
end;

procedure TepsForm.Limpiar;
begin
Codigo.Text:='';
Nombre.Text:='';
DigitoVer.Text:='';
Direccion.Text:='';
Telefono.Text:='';
Correo.Text:='';
Nit.Text:='';
Municipio.Text:='';
departamento:='';
Estado.ItemIndex:=0;
end;

procedure TepsForm.ShowCallback(Sender: TComponent; Asresult: Integer);
begin
if not(UniMainModule.Query.IsEmpty) and (UniMainModule.i = 8) then
  begin
    Codigo.Text := (UniMainModule.Query.FieldByName('Codigo').AsString);
    Nombre.Text := UniMainModule.Query.FieldByName('descripcion').AsString;
    Telefono.Text := UniMainModule.Query.FieldByName('telefonoe').AsString;
    DigitoVer.Text := UniMainModule.Query.FieldByName('digitover').AsString;
    Direccion.Text := UniMainModule.Query.FieldByName('direccione').AsString;
    Correo.Text := UniMainModule.Query.FieldByName('email').AsString;
    Nit.Text := UniMainModule.Query.FieldByName('nit').AsString;
    Municipio.Text := UniMainModule.Query.FieldByName('municipio').AsString;
    departamento := UniMainModule.Query.FieldByName('municipio').AsString;
    Estado.ItemIndex := UniMainModule.Query.FieldByName('web').AsInteger;
  end;
  if not(UniMainModule.Query.IsEmpty) and (UniMainModule.i = 4) then
  begin
    Municipio.Text := (UniMainModule.Query.Fieldbyname('Codigo').AsString);
    departamento := (UniMainModule.Query.Fieldbyname('departamento').AsString);
  end;
end;

procedure TepsForm.ubActualizarClick(Sender: TObject);
var
consulta: string;
begin
if Codigo.Text = '' then
  begin
    ShowMessage('Debe seleccionar una EPS');
    Exit
  end;
  UniMainModule.Query.SQL.Clear;
  consulta := 'SELECT * from epssi where codigoEps=:Codigo';
  UniMainModule.Query.SQL.Text := consulta;
  UniMainModule.Query.Params.ParamByName('Codigo').Value := (Codigo.Text);
  UniMainModule.Query.Open;
  if (UniMainModule.Query.IsEmpty) then
  begin
    ShowMessage('No existen registro para el codigo EPS seleccionada');
  end
  else
  begin
    // Actualizar
    if (Nombre.Text='') then
    begin
      ShowMessage('Campo nombre esta vacio');
      Exit
    end;
    if (Nit.Text='') then
    begin
      ShowMessage('Campo Nit esta vaci�');
      Exit
    end;
    if (DigitoVer.Text='') then
    begin
      ShowMessage('Campo nombre  Digito Verificaci�n esta vacio');
      Exit
    end;
     if (Telefono.Text='') then
    begin
      ShowMessage('Campo tel�fono esta  vacio');
      Exit
    end;
    if (Direccion.Text='') then
    begin
      ShowMessage('Campo direcci�n esta  vacio');
      Exit
    end;
    if (Correo.Text='') then
    begin
      ShowMessage('Campo Correo esta  vacio');
      Exit
    end;
    if (Municipio.Text='') then
    begin
      ShowMessage('Campo Municipio esta  vacio');
      Exit
    end;
    consulta :=
      'UPDATE epssi SET nombre=:Nombre, nit=:Nit, digitover=:Digito, direccione=:Direccion, departamento=:Departamento, municipio=:Municipio,'+
      'telefonoe=:Telefono,  email=:Email, web=:Web WHERE codigoEps=:Codigo';
    UniMainModule.Query.SQL.Text := consulta;
    UniMainModule.Query.Params.ParamByName('Nombre').Value := Nombre.Text;
    UniMainModule.Query.Params.ParamByName('Nit').Value := Nit.Text;
    UniMainModule.Query.Params.ParamByName('Digito').Value := DigitoVer.Text;
    UniMainModule.Query.Params.ParamByName('Direccion').Value := Direccion.Text;
    UniMainModule.Query.Params.ParamByName('Departamento').Value := departamento;
    UniMainModule.Query.Params.ParamByName('Municipio').Value := Municipio.Text;
    UniMainModule.Query.Params.ParamByName('Telefono').Value := Telefono.Text;
    UniMainModule.Query.Params.ParamByName('Email').Value := Correo.Text;
    UniMainModule.Query.Params.ParamByName('Web').Value := Estado.ItemIndex;
    UniMainModule.Query.Params.ParamByName('Codigo').Value := (Codigo.Text);
    UniMainModule.Query.ExecSQL;
    Limpiar();
    ShowMessage('Datos Actualizados exitosamente');
  end;
end;

procedure TepsForm.ubBuscarClick(Sender: TObject);
begin
  UniMainModule.i := 8;
  busquedaf.ShowModal(ShowCallback);
end;

procedure TepsForm.ubBuscarMunicipioClick(Sender: TObject);
begin
UniMainModule.i := 4;
  busquedaf.ShowModal(ShowCallback);
end;

procedure TepsForm.ubCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TepsForm.ubNuevoClick(Sender: TObject);
begin
Limpiar;
end;

end.

unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniEdit, uniLabel, uniImage,
  uniGUIBaseClasses, uniPanel, uniButton, uniBitBtn, uniSpeedButton,
  Vcl.Imaging.pngimage;

type
  TUniLoginForm1 = class(TUniLoginForm)
    UniPanel1: TUniPanel;
    UniImage1: TUniImage;
    UniLabel1: TUniLabel;
    ueUsuario: TUniEdit;
    UniPanel2: TUniPanel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    ueClave: TUniEdit;
    UniPanel3: TUniPanel;
    ubIngresar: TUniSpeedButton;
    procedure ubIngresarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniLoginForm1: TUniLoginForm1;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function UniLoginForm1: TUniLoginForm1;
begin
  Result := TUniLoginForm1(UniMainModule.GetFormInstance(TUniLoginForm1));
end;

procedure TUniLoginForm1.ubIngresarClick(Sender: TObject);
var
usuario, clave : string;
begin
    usuario:=ueUsuario.Text;
    clave:=ueClave.Text;
    if usuario ='' then
    begin
      ShowMessage('Campo usuario sin valor');
      exit;
    end;
    if clave ='' then
    begin
      ShowMessage('Campo Clave sin valor');
      exit;
    end;
    UniMainModule.Query.Close;
    UniMainModule.Query.SQL.Text:= 'SELECT * FROM citador where usuario=:Usuario and clavex=:Clave';
    UniMainModule.Query.Params.ParamByName('Usuario').Value:=usuario;
    UniMainModule.Query.Params.ParamByName('Clave').Value:=clave;
    UniMainModule.Query.Open;


    if UniMainModule.Query.RecordCount >0 then
    begin
      usuario:=UniMainModule.Query.ParamByName('usuario').AsString;
      UniMainModule.citador:=UniMainModule.Query.FieldByName('codigo').AsString;
      UniMainModule.usuario:=UniMainModule.Query.FieldByName('usuario').AsString;
      UniMainModule.NombreCompleto:=UniMainModule.Query.FieldByName('nombrec').AsString;
      ModalResult:=mrOk;
      Close;
    end
    else
    begin
      ShowMessage('No Existe usuario registrado en el sistema');
      exit;
    end;






end;

initialization
  RegisterAppFormClass(TUniLoginForm1);

end.

unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniDateTimePicker, uniCheckBox,
  uniBasicGrid, uniDBGrid, uniButton, uniBitBtn, uniSpeedButton, uniEdit,
  uniMemo, uniMultiItem, uniComboBox, uniLabel, uniPanel, uniPageControl,
  uniGUIBaseClasses, uniImage, Vcl.Imaging.jpeg, uniImageList;

type
  TMainForm = class(TUniForm)
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniPanel1: TUniPanel;
    UniLabel5: TUniLabel;
    enfermedadactual: TUniMemo;
    UniLabel6: TUniLabel;
    antecedentes: TUniMemo;
    UniLabel7: TUniLabel;
    sistolica: TUniEdit;
    UniLabel8: TUniLabel;
    distolica: TUniEdit;
    UniLabel9: TUniLabel;
    fr: TUniEdit;
    UniLabel10: TUniLabel;
    fc: TUniEdit;
    UniLabel11: TUniLabel;
    temp: TUniEdit;
    UniLabel12: TUniLabel;
    peso: TUniEdit;
    UniLabel13: TUniLabel;
    cintura: TUniEdit;
    UniLabel14: TUniLabel;
    talla: TUniEdit;
    UniLabel15: TUniLabel;
    imc: TUniEdit;
    UniLabel16: TUniLabel;
    dxnutricional: TUniEdit;
    UniLabel17: TUniLabel;
    UniMemo4: TUniMemo;
    UniLabel18: TUniLabel;
    descdxp: TUniEdit;
    btnAgregarDx: TUniSpeedButton;
    UniLabel19: TUniLabel;
    revisionSistema: TUniMemo;
    Btnguardar: TUniSpeedButton;
    UniSpeedButton2: TUniSpeedButton;
    UniLabel42: TUniLabel;
    UniLabel43: TUniLabel;
    nombreAcom: TUniEdit;
    UniLabel44: TUniLabel;
    UniLabel45: TUniLabel;
    cParentesco: TUniComboBox;
    btnMostrarComplemento: TUniSpeedButton;
    UniLabel46: TUniLabel;
    planConducta: TUniMemo;
    UniLabel47: TUniLabel;
    CFinalidad: TUniComboBox;
    UniLabel48: TUniLabel;
    cCausa: TUniComboBox;
    UniLabel49: TUniLabel;
    cImpresionDiag: TUniComboBox;
    dxp: TUniEdit;
    UniPanel2: TUniPanel;
    DbGridEvoluciones: TUniDBGrid;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    UniMemo8: TUniMemo;
    UniLabel22: TUniLabel;
    UniCheckBox1: TUniCheckBox;
    UniSpeedButton3: TUniSpeedButton;
    UniSpeedButton4: TUniSpeedButton;
    UniSpeedButton5: TUniSpeedButton;
    UniPanel3: TUniPanel;
    UniLabel23: TUniLabel;
    identificacionMedico: TUniLabel;
    UniLabel25: TUniLabel;
    nombreMedico: TUniLabel;
    UniLabel27: TUniLabel;
    lblfechanacpac: TUniLabel;
    UniLabel29: TUniLabel;
    lblidenpac: TUniLabel;
    UniLabel31: TUniLabel;
    lblnombrepac: TUniLabel;
    UniLabel33: TUniLabel;
    lblsexopac: TUniLabel;
    UniLabel35: TUniLabel;
    lbledadpac: TUniLabel;
    UniLabel37: TUniLabel;
    lblmuncipiopac: TUniLabel;
    UniLabel39: TUniLabel;
    lblepspac: TUniLabel;
    UniLabel41: TUniLabel;
    fechaAsignacion: TUniDateTimePicker;
    UniSpeedButton6: TUniSpeedButton;
    imagenPerfil: TUniImage;
    diagnosticos: TUniMemo;
    UniLabel24: TUniLabel;
    lblContrato: TUniLabel;
    masDx: TUniMemo;
    UniLabel1: TUniLabel;
    lblRips: TUniLabel;
    telefonoAcom: TUniNumberEdit;
    procedure UniSpeedButton6Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure ShowCallback(Sender: TComponent; Asresult: Integer);
    procedure btnMostrarComplementoClick(Sender: TObject);
    procedure habilitarHistoriaInicial();
  private
    { Private declarations }
    consulta: string;
    rips: string;
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, MedicosCita, ComplementoHistorias;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.btnMostrarComplementoClick(Sender: TObject);
begin
  FComplementoHistorias.rips := rips;
  FComplementoHistorias.ShowModal(ShowCallback);
end;

procedure TMainForm.habilitarHistoriaInicial;
begin
  UniPanel1.Visible:=true;
  nombreAcom.Enabled := true;
end;

procedure TMainForm.ShowCallback(Sender: TComponent; Asresult: Integer);

begin
  if not UniMainModule.QueryGrid.IsEmpty then
  begin
    lblnombrepac.Text := UniMainModule.QueryGrid.FieldByName
      ('nombrecompleto').AsString;
    lblidenpac.Text := UniMainModule.QueryGrid.FieldByName('afcodigo').AsString;
    lblfechanacpac.Text := UniMainModule.QueryGrid.FieldByName
      ('fecha_nacimiento').AsString;
    lbledadpac.Text := UniMainModule.QueryGrid.FieldByName('e1').AsString;
    lblsexopac.Text := UniMainModule.QueryGrid.FieldByName('sexo').AsString;
    lblmuncipiopac.Text := UniMainModule.QueryGrid.FieldByName
      ('municipio').AsString;
    lblepspac.Text := UniMainModule.QueryGrid.FieldByName('nombre_eps')
      .AsString;
    lblRips.Text := UniMainModule.QueryGrid.FieldByName('consecutivo').AsString;
    lblContrato.Text := UniMainModule.QueryGrid.FieldByName
      ('tcontrato').AsString;
    rips := UniMainModule.QueryGrid.FieldByName('consecutivo').AsString;
    if not rips.IsEmpty then
    begin
      UniMainModule.Query.SQL.Clear;
      consulta := 'select * from evoluciones where rips=''' + rips + '''';
      UniMainModule.Query.SQL.Add(consulta);
      UniMainModule.Query.Open();

      if UniMainModule.Query.IsEmpty then
      begin
        ShowMessage('Paciente viene por primera vez');
        habilitarHistoriaInicial;
      end
      else
      begin

      end;

    end;
  end;

end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin
  identificacionMedico.Text := UniMainModule.identificacion;
  nombreMedico.Text := UniMainModule.NombreCompleto;
  if not UniMainModule.Query.FieldByName('foto').AsString.IsEmpty then
  begin
    imagenPerfil.Picture.Assign
      (UniMainModule.GetFieldToJPG(UniMainModule.Query, 'foto'));
  end;
  fechaAsignacion.DateTime := Now;
  UniMainModule.Query.Close;
  UniPanel1.Visible := false;
  UniPanel2.Visible := false;

end;

procedure TMainForm.UniSpeedButton6Click(Sender: TObject);
var
  consulta: string;
begin
  FMedicosCita.fechaAsignacion.DateTime := fechaAsignacion.DateTime;
  FMedicosCita.ShowModal(ShowCallback);

end;

initialization

RegisterAppFormClass(TMainForm);

end.

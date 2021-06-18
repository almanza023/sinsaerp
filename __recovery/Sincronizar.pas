unit Sincronizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, REST.Types, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, uniLabel, Vcl.Imaging.pngimage, uniImage, uniToolBar,
  uniButton, uniBitBtn, uniSpeedButton, uniGUIBaseClasses, uniPanel,
  System.JSON, uniDateTimePicker, Vcl.StdCtrls;

type
  TsincronizarForm = class(TUniForm)
    UniPanel1: TUniPanel;
    ubEps: TUniSpeedButton;
    ubActualizar: TUniSpeedButton;
    ubCancelar: TUniSpeedButton;
    UniToolBar1: TUniToolBar;
    UniImage1: TUniImage;
    UniLabel1: TUniLabel;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    ubMedicos: TUniSpeedButton;
    UniPanel2: TUniPanel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniSpeedButton1: TUniSpeedButton;
    FechaInicial: TUniDateTimePicker;
    FechaFinal: TUniDateTimePicker;
    RESTClient2: TRESTClient;
    RESTRequest2: TRESTRequest;
    RESTResponse2: TRESTResponse;
    procedure ubEpsClick(Sender: TObject);
    procedure ubCancelarClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure ubActualizarClick(Sender: TObject);
    procedure ubMedicosClick(Sender: TObject);
    procedure UniSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    URL: string;
  end;

function sincronizarForm: TsincronizarForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function sincronizarForm: TsincronizarForm;
begin
  Result := TsincronizarForm(UniMainModule.GetFormInstance(TsincronizarForm));
end;

procedure TsincronizarForm.ubActualizarClick(Sender: TObject);
var
  cadena, status: string;
  i: Integer;
  doc, obj: TJSONObject;
begin
  i := 0;
  cadena := 'select tipomedico, descripcion from tipoconsulta where web=1';
  UniMainModule.Query.SQL.Clear;
  UniMainModule.Query.SQL.Add(cadena);
  UniMainModule.Query.Open;
  RESTClient1.BaseURL := URL + 'tipos-consultas';
  while not UniMainModule.Query.Eof do
  begin
    RESTRequest1.Params[0].value := UniMainModule.Query.FieldByName
      ('tipomedico').AsString;
    RESTRequest1.Params[1].value := UniMainModule.Query.FieldByName
      ('descripcion').AsString;
    RESTRequest1.Execute;
    if RESTResponse1.StatusCode = 200 then
    begin
      doc := RESTResponse1.JSONValue as TJSONObject;
      status := doc.GetValue('status').value;
      if status = 'success' then
      begin
        i := i + 1;
      end;
    end;
    UniMainModule.Query.Next;
  end;

  ShowMessage('Total Tipo de Consultas Enviadas a la Web ' + i.ToString);
  UniMainModule.Query.Close;

end;

procedure TsincronizarForm.ubCancelarClick(Sender: TObject);
var
  cadena, status: string;
  i: Integer;
  doc, obj: TJSONObject;
begin
  i := 0;
  cadena := 'select codigo, especialidad from especialidad where web=1';
  UniMainModule.Query.SQL.Clear;
  UniMainModule.Query.SQL.Add(cadena);
  UniMainModule.Query.Open;
  RESTClient1.BaseURL := URL + 'especialidades';
  while not UniMainModule.Query.Eof do
  begin
    RESTRequest1.Params[0].value := UniMainModule.Query.FieldByName
      ('codigo').AsString;
    RESTRequest1.Params[1].value := UniMainModule.Query.FieldByName
      ('especialidad').AsString;
    RESTRequest1.Execute;
    if RESTResponse1.StatusCode = 200 then
    begin
      doc := RESTResponse1.JSONValue as TJSONObject;
      status := doc.GetValue('status').value;
      if status = 'success' then
      begin
        i := i + 1;
      end;
    end;
    UniMainModule.Query.Next;
  end;

  ShowMessage('Total Especialidades Enviados a la Web ' + i.ToString);
  UniMainModule.Query.Close;
end;

procedure TsincronizarForm.ubEpsClick(Sender: TObject);
var
  cadena, status: string;
  i: Integer;
  doc, obj: TJSONObject;
begin
  i := 0;
  cadena := 'select nombre, codigoeps from epssi where web=1';
  UniMainModule.Query.SQL.Clear;
  UniMainModule.Query.SQL.Add(cadena);
  UniMainModule.Query.Open;
  RESTClient1.BaseURL := URL + 'eps';
  while not UniMainModule.Query.Eof do
  begin
    RESTRequest1.Params[0].value := UniMainModule.Query.FieldByName
      ('codigoeps').AsString;
    RESTRequest1.Params[1].value := UniMainModule.Query.FieldByName
      ('nombre').AsString;
    RESTRequest1.Execute;
    if RESTResponse1.StatusCode = 200 then
    begin
      doc := RESTResponse1.JSONValue as TJSONObject;
      status := doc.GetValue('status').value;
      if status = 'success' then
      begin
        i := i + 1;
      end;
    end;
    UniMainModule.Query.Next;
  end;

  ShowMessage('Total de Datos enviados a la web ' + i.ToString);
  UniMainModule.Query.Close;

end;

procedure TsincronizarForm.ubMedicosClick(Sender: TObject);
var
  cadena, status: string;
  i: Integer;
  doc, obj: TJSONObject;
begin
  i := 0;
  cadena := 'select codigo, especialidad, nombre from medicos where web=1';
  UniMainModule.Query.SQL.Clear;
  UniMainModule.Query.SQL.Add(cadena);
  UniMainModule.Query.Open;
  RESTClient1.BaseURL := URL + 'medicos';
  while not UniMainModule.Query.Eof do
  begin
    RESTRequest1.Params[0].value := UniMainModule.Query.FieldByName
      ('especialidad').AsString;
    RESTRequest1.Params[1].value := UniMainModule.Query.FieldByName
      ('nombre').AsString;
    RESTRequest1.Params[2].value := UniMainModule.Query.FieldByName
      ('codigo').AsString;
    RESTRequest1.Execute;
    if RESTResponse1.StatusCode = 200 then
    begin
      doc := RESTResponse1.JSONValue as TJSONObject;
      status := doc.GetValue('status').value;
      if status = 'success' then
      begin
        i := i + 1;
      end;
    end;
    UniMainModule.Query.Next;
  end;

  ShowMessage('Total Medicos Enviados a la Web ' + i.ToString);
  UniMainModule.Query.Close;
end;

procedure TsincronizarForm.UniFormShow(Sender: TObject);
begin
  URL := 'http://localhost/citas/api/';
  FechaInicial.DateTime := Now;
  FechaFinal.DateTime := Now;

end;

procedure TsincronizarForm.UniSpeedButton1Click(Sender: TObject);
var
  cadena, status: string;
  i: Integer;
  doc, obj: TJSONObject;
begin
  i := 0;
  UniMainModule.Query.SQL.Clear;
  cadena := 'select id, medico, CONVERT(varchar, fecha, 23) AS fecha, convert(varchar(5), hora, 108) as hora  from asignacionhorasweb where  fecha between '''
    + FormatDateTime('yyyymmdd', FechaInicial.DateTime) + ''' and ''' +
    FormatDateTime('yyyymmdd', FechaFinal.DateTime) + ''' and estado is null';
  UniMainModule.Query.SQL.Add(cadena);
  UniMainModule.Query.Open;
  // ShowMessage(cadena);
  RESTClient2.BaseURL := URL + 'horario';
  while not UniMainModule.Query.Eof do
  begin
    RESTRequest2.Params[0].value := UniMainModule.Query.FieldByName
      ('medico').AsString;
    RESTRequest2.Params[1].value := UniMainModule.Query.FieldByName
      ('fecha').AsString;
    RESTRequest2.Params[2].value := UniMainModule.Query.FieldByName
      ('hora').AsString;
    RESTRequest2.Execute;
    if RESTResponse2.StatusCode = 200 then
    begin
      doc := RESTResponse2.JSONValue as TJSONObject;
      status := doc.GetValue('status').value;
      if status = 'success' then
      begin
      UniMainModule.QueryAgenda.SQL.Clear;
      UniMainModule.QueryAgenda.SQL.Text:=('Update AsignacionHorasWeb set estado=1 where id=:Id');
      UniMainModule.QueryAgenda.ParamByName('Id').Value:= UniMainModule.Query.FieldByName
      ('id').AsString;
      UniMainModule.QueryAgenda.ExecSQL;
      i := i + 1;
      end;
    end;
    UniMainModule.Query.Next;
  end;
  ShowMessage('Total Datos Enviados a la Web ' + i.ToString);
  UniMainModule.Query.Close;

end;

end.

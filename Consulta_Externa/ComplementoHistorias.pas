unit ComplementoHistorias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniSpeedButton, uniMemo,
  uniCheckBox, uniLabel, uniPanel, uniPageControl, uniGUIBaseClasses;

type
  TFComplementoHistorias = class(TUniForm)
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniLabel1: TUniLabel;
    UniCheckBox1: TUniCheckBox;
    UniCheckBox2: TUniCheckBox;
    UniCheckBox3: TUniCheckBox;
    UniCheckBox4: TUniCheckBox;
    UniCheckBox5: TUniCheckBox;
    UniCheckBox6: TUniCheckBox;
    UniLabel2: TUniLabel;
    UniMemo1: TUniMemo;
    UniLabel3: TUniLabel;
    UniMemo2: TUniMemo;
    UniLabel4: TUniLabel;
    UniMemo3: TUniMemo;
    UniLabel5: TUniLabel;
    UniMemo4: TUniMemo;
    btnGuardar: TUniSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
    rips: string;
  end;

function FComplementoHistorias: TFComplementoHistorias;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function FComplementoHistorias: TFComplementoHistorias;
begin
  Result := TFComplementoHistorias(UniMainModule.GetFormInstance(TFComplementoHistorias));
end;

end.

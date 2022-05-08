program Consulta;

uses
  Vcl.Forms,
  uConsulta in 'uConsulta.pas' {FConsulta},
  uDataM in 'uDataM.pas' {DataM: TDataModule},
  uConsultaLote in 'uConsultaLote.pas' {FConsultalote},
  uLogin in 'uLogin.pas' {FAcesso};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFConsulta, FConsulta);
  Application.CreateForm(TDataM, DataM);
  Application.CreateForm(TFConsultalote, FConsultalote);
  Application.CreateForm(TFAcesso, FAcesso);
  Application.Run;
end.

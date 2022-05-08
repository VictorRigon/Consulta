unit uConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask;

type
  TFConsulta = class(TForm)
    GBConsulta: TGroupBox;
    lblCampoparabusca: TLabel;
    CBFiltro: TComboBox;
    lblAlterarcampobusca: TLabel;
    CBBuscaParcial: TCheckBox;
    CBBuscatodosprodutos: TCheckBox;
    CBTodososcampos: TCheckBox;
    CBSaircomesc: TCheckBox;
    CBManterfoco: TCheckBox;
    CBMostrarfoto: TCheckBox;
    btnAcessorestrito: TButton;
    edtBusca: TEdit;
    DbDadosconsulta: TDBGrid;
    lblInfo: TLabel;
    gbDetalhes: TGroupBox;
    lblDescricaoproduto: TLabel;
    lblproduto: TLabel;
    lblPrecovenda: TLabel;
    lblPrecoRevenda: TLabel;
    lblQtdedisponivel: TLabel;
    lblQuantidadereservada: TLabel;
    dbedtDescricaoproduto: TDBEdit;
    dbedtPrecovenda: TDBEdit;
    dbedtPrecorevenda: TDBEdit;
    dbedtQuantidadedisponivel: TDBEdit;
    dbedtQuantidadeReservada: TDBEdit;
    btnConsultaestoque: TButton;
    btnGravaralteracao: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure btnConsultaestoqueClick(Sender: TObject);
    procedure CBTodososcamposClick(Sender: TObject);
    procedure btnAcessorestritoClick(Sender: TObject);
    procedure btnGravaralteracaoClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsulta: TFConsulta;

implementation

{$R *.dfm}

uses uDataM, uConsultaLote, uLogin;








procedure TFConsulta.btnAcessorestritoClick(Sender: TObject);
begin
FAcesso := TFAcesso.Create(FAcesso);
FAcesso.ShowModal;
end;

procedure TFConsulta.btnConsultaestoqueClick(Sender: TObject);
begin
FConsultaLote := TFConsultaLote.Create(FConsultaLote);
FConsultaLote.ShowModal;
end;

procedure TFConsulta.btnGravaralteracaoClick(Sender: TObject);
begin
 with  datam do
   begin
     ADQCONSULTA.Open('SELECT * FROM TESTOQUE');
     ADQCONSULTA.Edit;
     ADQCONSULTAPRECOVENDA.AsFloat := (strtofloat( FCONSULTA.dbedtprecovenda.Text));
     ADQCONSULTAQTDE.AsFloat := (strtofloat( FCONSULTA.dbedtQuantidadedisponivel.Text));
     ADQCONSULTAPRECOREVENDA.AsFloat := (strtofloat ( FCONSULTA.dbedtprecorevenda.Text));

   end;
   btnGravaralteracao.Visible := false;
   btnAcessorestrito.Enabled := true;

   datam.ADQConsulta.Post;
end;

procedure TFConsulta.CBTodososcamposClick(Sender: TObject);
begin
if cbtodososcampos.Checked = true then
begin
       cbfiltro.Text := 'TODOS';
       cbfiltro.Enabled := false;
end;
if cbtodososcampos.Checked = false then
begin
  cbfiltro.Text := 'CONTROLE';
  CBFILTRO.Enabled := true;
end;


end;

procedure TFConsulta.edtBuscaKeyPress(Sender: TObject; var Key: Char);
begin
if cbmanterfoco.Checked = true then
begin
  edtbusca.SetFocus;
end;
if (char(key) = #13) then
begin
  datam.ADQConsulta.Open('select * from testoque');
if edtbusca.Text = '' then
begin
  abort
end;

   datam.ADQConsulta.SQL.Clear;
   datam.ADQConsulta.SQL.Add('Select ');
   if cbbuscatodosprodutos.Checked = false then
   begin
     datam.ADQConsulta.sql.Add('first 100 ');
   end;
   if cbbuscaparcial.Checked = true then
      begin

      datam.ADQConsulta.sql.Add(' * from testoque where ' + cbfiltro.Text + ' like ' + quotedstr('%' + edtbusca.Text + '%'));

      end;
      if cbbuscaparcial.Checked = false then
      begin
        datam.ADQConsulta.Open(' select * from testoque where ' + cbfiltro.Text + ' = ' + quotedstr(edtbusca.Text));
      end;
       if cbtodososcampos.Checked = true then
      begin
        datam.ADQConsulta.Open('select * from testoque where controle' + ' like ' + quotedstr('%' + edtbusca.text + '%') +
        ' or  produto like' + quotedstr('%' + edtbusca.text + '%') + ' or codbarras like' + quotedstr('%' + edtbusca.text + '%') + ' or referencia like' + quotedstr('%' + edtbusca.text + '%') + ' or codbarrasinterno like' + quotedstr('%' + edtbusca.text + '%') + ' or  ncm like' + quotedstr('%' + edtbusca.text + '%') +
        ' or  unidade like' + quotedstr('%' + edtbusca.text + '%') + ' or cest like' + quotedstr('%' + edtbusca.text + '%') + ' or  precocusto like' + quotedstr('%' + edtbusca.text + '%') + ' or precovenda like' + quotedstr('%' + edtbusca.text + '%') + ' or qtde like' + quotedstr('%' + edtbusca.text + '%') + ' or  csosn like' + quotedstr('%' + edtbusca.text + '%') +
        ' or  descricaocsosn like' + quotedstr('%' + edtbusca.text + '%') + ' or  aliquotaicmsecf' + quotedstr('%' + edtbusca.text + '%') + ' or  cfop like' + quotedstr('%' + edtbusca.text + '%') + ' or  codtributacaoipi like' + quotedstr('%' + edtbusca.text + '%') + ' or  percipi' + quotedstr('%' + edtbusca.text + '%') + ' or  codtributacaopis like' + quotedstr('%' + edtbusca.text + '%') +
        ' or  percpis like' + quotedstr('%' + edtbusca.text + '%') + ' or  codtributacaocofins like' + quotedstr('%' + edtbusca.text + '%') + ' or  perccofins like' + quotedstr('%' + edtbusca.text + '%') + ' or  descricaocomplementar like' + quotedstr('%' + edtbusca.text + '%') + ' or  localizacao like' + quotedstr('%' + edtbusca.text + '%'));


      end;
 datam.ADQConsulta.Open;
end;

end;




procedure TFConsulta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (char(key) = #113) and cbfiltro.Enabled = true then
begin
   cbfiltro.SetFocus;
end;

if (char(key) = #114) then
begin
  edtbusca.SetFocus;
end;
if (ssAlt in Shift) AND ( key = 81) then
begin
  Application.MessageBox('Função atualmente indisponível','Consulta de Lote', MB_OK);
end;
   if (char (key) = #116 ) and btnacessorestrito.Enabled = true then
   begin
       FAcesso := TFAcesso.Create(FAcesso);
       FAcesso.ShowModal;
   end;
  if (char(key) = #119) and btngravaralteracao.Visible = true then
  begin
    btnGravaralteracao.Visible := false;
    btnAcessorestrito.Enabled := true;
  end;
end;

procedure TFConsulta.FormKeyPress(Sender: TObject; var Key: Char);
begin
if cbsaircomesc.Checked = true then
begin
  if (key = #27) then
   begin
     Fconsulta.Close;
   end;

end;

end;

procedure TFConsulta.FormShow(Sender: TObject);
var i : Integer;

begin
    for I := 0 to DataM.ADQConsulta.FieldCount - 1 do
     BEGIN
       CBFiltro.Items.Add(Datam.ADQConsulta.Fields[i].DisplayName);
     END;
     if cbfiltro.Text = '' then
     begin
       cbfiltro.Text := 'CONTROLE';
     end;
end;



end.

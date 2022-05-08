unit uConsultaLote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls;

type
  TFConsultalote = class(TForm)
    gbConsultaLote: TGroupBox;
    dbgBuscaLote: TDBGrid;
    lblCampoLote: TLabel;
    lblFiltroLote: TLabel;
    lblBuscaLote: TLabel;
    edtBuscaLote: TEdit;
    btnSair: TButton;
    cbfiltrolote: TComboBox;
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtBuscaLoteKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultalote: TFConsultalote;

implementation

{$R *.dfm}

uses uDataM;

procedure TFConsultalote.btnSairClick(Sender: TObject);
begin
FConsultaLote.Close;
end;

procedure TFConsultalote.edtBuscaLoteKeyPress(Sender: TObject; var Key: Char);
begin
if (char (key) = #13) then
 begin
   datam.ADQLote.Open('select * from tvalidadeestoque');
   if edtbuscalote.Text = '' then
   begin
     abort
   end;

    datam.ADQLote.Open('SELECT  * from tVALIDADEESTOQUE where ' + cbfiltrolote.Text + ' like ' + quotedstr('%' + edtbuscalote.Text + '%'));

 end;



end;

procedure TFConsultalote.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (char(key) = #113) then
begin
  cbfiltrolote.SetFocus;
end;
if (char(key) = #114 )then
begin
  edtbuscalote.SetFocus;
end;
if (char (key) = #119 )then
begin
  Fconsultalote.Close;
end;

end;

procedure TFConsultalote.FormShow(Sender: TObject);
begin
var i : Integer;
     if cbfiltrolote.Text = '' then
     begin
       cbfiltrolote.Text := 'CONTROLE';
     end;
begin
    for I := 0 to DataM.ADQLote.FieldCount - 1 do
     BEGIN
       cbfiltrolote.Items.Add(Datam.adqlote.Fields[i].DisplayName);
     END;
end;
end;

end.

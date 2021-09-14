unit uCONPESQUISA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TfrmPesquisa = class(TForm)
    pnlBotoes: TPanel;
    btnPrimeiro: TSpeedButton;
    btnAnterior: TSpeedButton;
    btnProximo: TSpeedButton;
    btnUltimo: TSpeedButton;
    btnVisualiza: TSpeedButton;
    btnFiltro: TSpeedButton;
    btnExporta: TSpeedButton;
    btnAdiciona: TSpeedButton;
    btnAltera: TSpeedButton;
    btnExclui: TSpeedButton;
    btnSair: TSpeedButton;
    pnlOrdem: TPanel;
    edtOrdem: TEdit;
    edtIndice: TEdit;
    grditens_pesquisa: TDBGrid;
    dsClientes: TDataSource;
    procedure btnAdicionaClick(Sender: TObject);
    procedure btnAlteraClick(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnVisualizaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure grditens_pesquisaTitleClick(Column: TColumn);
    procedure edtOrdemChange(Sender: TObject);
    procedure grditens_pesquisaDblClick(Sender: TObject);
    procedure grditens_pesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExportaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    
  private
    { Private declarations }
  public
     ordem_final : String;
     ordem_ant   : String;
     carac_pesq  : String;
     function on_change(texto,indice,ordem_final : String): Boolean;
  end;

var
  frmPesquisa: TfrmPesquisa;

implementation

uses DTMPRINCIPAL, uPRINCIPAL, uLOGIN, uMNTCHECKLIST, uMNTPESQUISA;

{$R *.dfm}

procedure TfrmPesquisa.btnAdicionaClick(Sender: TObject);
var sequencia_incluir : integer;
begin
     dmPrincipal.qrycliente_perguntas_pesquisa.Close;
     dmPrincipal.qrycliente_perguntas_pesquisa.SQL.Text := 'select * from cliente_perguntas_pesquisa '+
                                                           ' order by sequencia ';
     dmPrincipal.qrycliente_perguntas_pesquisa.Open;
     dmPrincipal.cdscliente_perguntas_pesquisa.Close;
     dmPrincipal.cdscliente_perguntas_pesquisa.Open;
     dmPrincipal.cdscliente_perguntas_pesquisa.last;

     if dmPrincipal.cdscliente_perguntas_pesquisa.isempty = true then
          sequencia_incluir := 100
     else
          sequencia_incluir := dmPrincipal.cdscliente_perguntas_pesquisasequencia.asinteger + 100;

     dmPrincipal.cdscliente_perguntas_pesquisa.Insert;

     dmPrincipal.cdscliente_perguntas_pesquisasequencia.asinteger := sequencia_incluir;

     if not Assigned(frmCadChecklist) then
          frmCadPesquisa := TfrmCadPesquisa.Create(Self);
     try
          frmCadPesquisa.ShowModal;
     finally
          begin
               frmCadPesquisa.Free;
          end;
     end;
     frmCadPesquisa := nil;
     grditens_pesquisa.SetFocus;
end;

procedure TfrmPesquisa.btnAlteraClick(Sender: TObject);
begin
     if not Assigned(frmCadPesquisa) then
          frmCadPesquisa := TfrmCadPesquisa.Create(Self);
     try
     begin
          dmPrincipal.cdscliente_perguntas_pesquisa.Edit;
               frmCadPesquisa.ShowModal;
     end;
     finally
          begin
               frmCadPesquisa.Free;
          end;
     end;
     frmCadPesquisa := nil;
     grditens_pesquisa.SetFocus
end;

procedure TfrmPesquisa.btnExcluiClick(Sender: TObject);
begin
     if (MessageDlg('Deseja excluir o item selecionado ?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     begin
          dmPrincipal.cdscliente_perguntas_pesquisa.Delete;
          dmPrincipal.cdscliente_perguntas_pesquisa.ApplyUpdates(0);
     end;
end;

procedure TfrmPesquisa.btnSairClick(Sender: TObject);
begin
     if chamou_zoom = true then
          cancelou_zoom := true;
     Close;
end;

procedure TfrmPesquisa.btnVisualizaClick(Sender: TObject);
begin
     dmPrincipal.qrycliente_perguntas_pesquisa.Close;
     dmPrincipal.qrycliente_perguntas_pesquisa.SQL.Text := 'select * from cliente_perguntas_pesquisa order by '+ edtIndice.Text;
     dmPrincipal.qrycliente_perguntas_pesquisa.Open;
     dmPrincipal.cdscliente_perguntas_pesquisa.Close;
     dmPrincipal.cdscliente_perguntas_pesquisa.Open;
end;

procedure TfrmPesquisa.FormShow(Sender: TObject);
begin
     {if definicao = 'USUARIO' then
     begin
          btnAdiciona.Enabled := False;
          btnExclui.Enabled   := False;
     end;}

     ActiveControl:=edtOrdem;
     dmPrincipal.qrycliente_perguntas_pesquisa.Close;
     dmPrincipal.qrycliente_perguntas_pesquisa.SQL.Text := 'select * from cliente_perguntas_pesquisa order by sequencia';
     dmPrincipal.qrycliente_perguntas_pesquisa.Open;
     dmPrincipal.cdscliente_perguntas_pesquisa.Close;
     dmPrincipal.cdscliente_perguntas_pesquisa.Open;
end;

procedure TfrmPesquisa.btnPrimeiroClick(Sender: TObject);
begin
     dmPrincipal.cdscliente_perguntas_pesquisa.First;
end;

procedure TfrmPesquisa.btnAnteriorClick(Sender: TObject);
begin
     dmPrincipal.cdscliente_perguntas_pesquisa.Prior;
end;

procedure TfrmPesquisa.btnProximoClick(Sender: TObject);
begin
     dmPrincipal.cdscliente_perguntas_pesquisa.Next;
end;

procedure TfrmPesquisa.btnUltimoClick(Sender: TObject);
begin
     dmPrincipal.cdscliente_perguntas_pesquisa.Last;
end;

function TfrmPesquisa.on_change(texto, indice,
  ordem_final: String): Boolean;
begin
     texto := StringReplace(texto,'*','%',[rfReplaceAll]);
     indice := AnsiLowerCase(indice);

     if texto <> '' then
     begin
           dmPrincipal.qrycliente_perguntas_pesquisa.Close;
           dmPrincipal.qrycliente_perguntas_pesquisa.SQL.Text := 'select * from cliente_perguntas_pesquisa where cast(' + indice +' as TEXT)'+
           ' like '+ '''' + texto + '''' +
           ' order by ' + ansilowercase(ordem_final);

           dmPrincipal.qrycliente_perguntas_pesquisa.Open;

           dmPrincipal.cdscliente_perguntas_pesquisa.Close;
           dmPrincipal.cdscliente_perguntas_pesquisa.Open;
     end;
end;

procedure TfrmPesquisa.grditens_pesquisaTitleClick(Column: TColumn);
var
     i : integer;
begin
     i := column.Index + 1;
     if ordem_ant <> Column.FieldName then
     begin
          ordem_final := Column.FieldName;                               
          edtIndice.Text := Column.FieldName;
          ordem_final := '';
          dmPrincipal.qrycliente_perguntas_pesquisa.close;
          dmPrincipal.qrycliente_perguntas_pesquisa.SQL.Text := 'select * from cliente_perguntas_pesquisa order by '+ edtIndice.Text;
          dmPrincipal.qrycliente_perguntas_pesquisa.open;
          dmPrincipal.cdscliente_perguntas_pesquisa.close;
          dmPrincipal.cdscliente_perguntas_pesquisa.Open;
          edtOrdem.Clear;
     end;
     with TStringGrid(grditens_pesquisa) do
     begin
          Row := 1;
          Col := i;
          SetFocus;
     end;
          edtOrdem.setfocus;

end;

procedure TfrmPesquisa.edtOrdemChange(Sender: TObject);
var result : boolean;
begin
     if edtOrdem.Text <> '' then
     begin
          ordem_final := edtIndice.text;
          if (edtIndice.text <> '') then
               result := on_change(edtOrdem.Text,edtIndice.Text,ordem_final)
          else
               MessageDlg('Selecione a coluna do grid abaixo a qual deseja pesquisar ',
                                        mtError, [mbOk], 0);
     end;

end;

procedure TfrmPesquisa.grditens_pesquisaDblClick(Sender: TObject);
begin
     btnAltera.Click;
end;

procedure TfrmPesquisa.grditens_pesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if (Key = 4100)       or
        (Key = 4101)       or
        (Key = VK_RETURN) or
        (Key = vk_RETURN)  or
        (Key = 13)         then
        btnAltera.Click;
end;

procedure TfrmPesquisa.btnExportaClick(Sender: TObject);
begin
     if chamou_zoom = true then
          Close;
end;

procedure TfrmPesquisa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key = VK_ESCAPE then
          btnSair.Click();
     if(key = VK_F2) or
        (Key = vk_F2)  or
        (Key = 113)    then
          btnAdiciona.Click();
     if btnExporta.Enabled = true then
     begin
          if(key = VK_F3) or
          (Key = vk_F3)  or
          (Key = 114 )    then
               btnExporta.Click();
     end;
     if(key = VK_F6) or
        (Key = vk_F6)  or
        (Key = 117)    then
          btnAltera.Click();
     if(key = VK_F5) or
        (Key = vk_F5)  or
        (Key = 116)    then
          btnVisualiza.Click();
end;

end.

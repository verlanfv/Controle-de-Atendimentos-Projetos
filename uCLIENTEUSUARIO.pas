unit uCLIENTEUSUARIO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TfrmClienteUsuario = class(TForm)
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
    grdRegistro: TDBGrid;
    dsRegistro: TDataSource;
    procedure btnSairClick(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure btnAlteraClick(Sender: TObject);
    procedure btnAdicionaClick(Sender: TObject);
    procedure btnVisualizaClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdRegistroDblClick(Sender: TObject);
    procedure grdRegistroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdRegistroTitleClick(Column: TColumn);
    procedure edtOrdemChange(Sender: TObject);
    procedure btnExportaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
     ordem_final : String;
     ordem_ant   : String;
     function on_change(texto, indice, ordem_final: String): Boolean;
  end;

var
  frmClienteUsuario: TfrmClienteUsuario;

implementation

uses uPRINCIPAL, DTMPRINCIPAL, uMNTTELAS, uMNTCLIENTEUSUARIO, uMNTCHAMADOS,
  Mask;

{$R *.dfm}

procedure TfrmClienteUsuario.btnSairClick(Sender: TObject);
begin
     if chamou_zoom = true then
          cancelou_zoom := true;     
     Close;
end;

procedure TfrmClienteUsuario.btnExcluiClick(Sender: TObject);
begin
     if (MessageDlg('Deseja excluir o registro selecionado ?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     begin
          dmPrincipal.cdsCliente_usuario.Delete;
          dmPrincipal.cdsCliente_usuario.ApplyUpdates(0);
     end;
end;

procedure TfrmClienteUsuario.btnAlteraClick(Sender: TObject);
begin
     if not Assigned(frmMntClienteUsuario) then
          frmMntClienteUsuario := TfrmMntClienteUsuario.Create(Self);
     try
     begin
          dmPrincipal.cdsCliente_usuario.Edit;
          frmMntClienteUsuario.ShowModal;
     end;
     finally
          frmMntClienteUsuario.Free;
     end;
     frmMntClienteUsuario := nil;
     grdRegistro.SetFocus;
end;

procedure TfrmClienteUsuario.btnAdicionaClick(Sender: TObject);
begin
     dmPrincipal.qryCliente_usuario.Close;
     dmPrincipal.qryCliente_usuario.SQL.Text := 'select * from cliente_usuario where '+
                                           ' cod_usuario   ='+ '-1'+
                                           ' order by cod_usuario desc limit 1';
     dmPrincipal.qryCliente_usuario.Open;
     dmPrincipal.cdsCliente_usuario.Close;
     dmPrincipal.cdsCliente_usuario.Open;
     dmPrincipal.cdsCliente_usuario.Insert;
     if not Assigned(frmMntClienteUsuario) then
          frmMntClienteUsuario := TfrmMntClienteUsuario.Create(Self);
     try
          frmMntClienteUsuario.ShowModal;
     finally
          frmMntClienteUsuario.Free;
     end;
     frmMntClienteUsuario := nil;
     grdRegistro.SetFocus;
end;

procedure TfrmClienteUsuario.btnVisualizaClick(Sender: TObject);
begin

     if btnExporta.Enabled = true then
     begin
          ActiveControl:=edtOrdem;
          dmPrincipal.qryCliente_usuario.Close;
          dmPrincipal.qryCliente_usuario.SQL.Text := 'select * from cliente_usuario where cod_cliente = '+frmCadChamados.edtCodCliente.Text +
                                                     ' and ativo = ''S'''+
                                                     'order by ' + edtIndice.Text +', cod_usuario';
          dmPrincipal.qryCliente_usuario.Open;
          dmPrincipal.cdsCliente_usuario.Close;
          dmPrincipal.cdsCliente_usuario.Open;
     end
     else
     begin
          dmPrincipal.qryCliente_usuario.Close;
          dmPrincipal.qryCliente_usuario.SQL.Text := 'select * from cliente_usuario order by '+ edtIndice.Text +', cod_usuario';
          dmPrincipal.qryCliente_usuario.Open;
          dmPrincipal.cdsCliente_usuario.Close;
          dmPrincipal.cdsCliente_usuario.Open;
     end;


end;

procedure TfrmClienteUsuario.btnUltimoClick(Sender: TObject);
begin
     dmPrincipal.cdsCliente_usuario.Last;
end;

procedure TfrmClienteUsuario.btnProximoClick(Sender: TObject);
begin
     dmPrincipal.cdsCliente_usuario.Next;
end;

procedure TfrmClienteUsuario.btnAnteriorClick(Sender: TObject);
begin
     dmPrincipal.cdsCliente_usuario.Prior;
end;

procedure TfrmClienteUsuario.btnPrimeiroClick(Sender: TObject);
begin
     dmPrincipal.cdsCliente_usuario.First;
end;

procedure TfrmClienteUsuario.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmClienteUsuario.grdRegistroDblClick(Sender: TObject);
begin
     btnAltera.Click;
end;

procedure TfrmClienteUsuario.grdRegistroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (Key = 4100)       or
        (Key = 4101)       or
        (Key = VK_RETURN) or
        (Key = vk_RETURN)  or
        (Key = 13)         then
     if btnAltera.Enabled then
        btnAltera.Click;
end;

procedure TfrmClienteUsuario.grdRegistroTitleClick(Column: TColumn);
begin
     if btnExporta.Enabled = true then
     begin
          if ordem_ant <> Column.FieldName then
          begin
               ordem_final    := Column.FieldName;
               edtIndice.Text := Column.FieldName;
               ordem_final    := '';
               dmPrincipal.qryCliente_usuario.close;
               dmPrincipal.qryCliente_usuario.SQL.Text := 'select * from cliente_usuario where cod_cliente = '+frmCadChamados.edtCodCliente.Text +
                                                          ' and ativo = ''S'''+
                                                          ' order by '+ edtIndice.Text+', cod_usuario';
               dmPrincipal.qryCliente_usuario.open;
               dmPrincipal.cdsCliente_usuario.close;
               dmPrincipal.cdsCliente_usuario.Open;
               edtOrdem.Clear;
               edtOrdem.setfocus;
          end;
     end
     else
     begin
          if ordem_ant <> Column.FieldName then
          begin
               ordem_final    := Column.FieldName;
               edtIndice.Text := Column.FieldName;
               ordem_final    := '';
               dmPrincipal.qryCliente_usuario.close;
               dmPrincipal.qryCliente_usuario.SQL.Text := 'select * from cliente_usuario order by '+ edtIndice.Text+', cod_usuario';
               dmPrincipal.qryCliente_usuario.open;
               dmPrincipal.cdsCliente_usuario.close;
               dmPrincipal.cdsCliente_usuario.Open;
               edtOrdem.Clear;
               edtOrdem.setfocus;
          end;
     end;


end;

procedure TfrmClienteUsuario.edtOrdemChange(Sender: TObject);
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

function TfrmClienteUsuario.on_change(texto, indice,
  ordem_final: String): Boolean;
begin
     texto := StringReplace(texto,'*','%',[rfReplaceAll]);
     indice := AnsiLowerCase(indice);

     if btnExporta.Enabled = true then
     begin
          dmPrincipal.qryCliente_usuario.Close;
          dmPrincipal.qryCliente_usuario.SQL.Text := 'select * from cliente_usuario where cod_cliente = '+frmCadChamados.edtCodCliente.Text +
                                                     ' and ativo = ''S'''+
                                                     ' and cast(' + indice +' as TEXT)'+''''+texto+''''+
                                                     'order by ' + ansilowercase(ordem_final)+', cod_usuario';
          dmPrincipal.qryCliente_usuario.Open;
          dmPrincipal.cdsCliente_usuario.Close;
          dmPrincipal.cdsCliente_usuario.Open;
     end
     else
     begin
          if texto <> '' then
          begin
                dmPrincipal.qryCliente_usuario.Close;
                dmPrincipal.qryCliente_usuario.SQL.Text := 'select * from cliente_usuario where cast(' + indice +' as TEXT)'+
                                                            ' like '+ '''' + texto + '''' +
                                                              ' order by ' + ansilowercase(ordem_final)+', cod_usuario';

                dmPrincipal.qryCliente_usuario.Open;

                dmPrincipal.cdsCliente_usuario.Close;
                dmPrincipal.cdsCliente_usuario.Open;
          end;
     end;




end;

procedure TfrmClienteUsuario.btnExportaClick(Sender: TObject);
begin
     if chamou_zoom = true then
          Close;
end;

procedure TfrmClienteUsuario.FormShow(Sender: TObject);
begin
     if btnExporta.Enabled = true then
     begin
          ActiveControl:=edtOrdem;
          dmPrincipal.qryCliente_usuario.Close;
          dmPrincipal.qryCliente_usuario.SQL.Text := 'select * from cliente_usuario where cod_cliente = '+frmCadChamados.edtCodCliente.Text +
                                                     ' and ativo = ''S'''+
                                                     ' order by cod_cliente, cod_usuario';
          dmPrincipal.qryCliente_usuario.Open;
          dmPrincipal.cdsCliente_usuario.Close;
          dmPrincipal.cdsCliente_usuario.Open;
     end
     else
     begin
          ActiveControl:=edtOrdem;
          dmPrincipal.qryCliente_usuario.Close;
          dmPrincipal.qryCliente_usuario.SQL.Text := 'select * from cliente_usuario order by cod_cliente, cod_usuario';
          dmPrincipal.qryCliente_usuario.Open;
          dmPrincipal.cdsCliente_usuario.Close;
          dmPrincipal.cdsCliente_usuario.Open;
     end;

     if cod_cliUsuario_zoom <> 0 then
     begin
          dmPrincipal.cdsCliente_usuario.IndexName := 'COD_USUARIO';
          dmPrincipal.cdsCliente_usuario.FindKey([cod_cliUsuario_zoom ]);
          dmPrincipal.cdsCliente_usuario.IndexName := '';
          grdRegistro.SetFocus;
     end;

end;

end.

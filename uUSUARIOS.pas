unit uUSUARIOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DB;

type
  TfrmConUsuarios = class(TForm)
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
    grdUsuario: TDBGrid;
    dsUsuario: TDataSource;
    procedure btnAdicionaClick(Sender: TObject);
    procedure btnAlteraClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure btnVisualizaClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdUsuarioTitleClick(Column: TColumn);
    procedure edtOrdemChange(Sender: TObject);
    procedure grdUsuarioDblClick(Sender: TObject);
    procedure grdUsuarioKeyDown(Sender: TObject; var Key: Word;
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
  frmConUsuarios: TfrmConUsuarios;

implementation

uses DTMPRINCIPAL, uMNTUSUARIO, uPRINCIPAL, Math, uLOGIN;

{$R *.dfm}

procedure TfrmConUsuarios.btnAdicionaClick(Sender: TObject);
begin
     dmPrincipal.qryUsuarios.Close;
     dmPrincipal.qryUsuarios.SQL.Text := 'select * from usuario where '+
                                         ' cod_usuario    ='+ '-1'+
                                         ' order by cod_usuario desc limit 1';
     dmPrincipal.qryUsuarios.Open;
     dmPrincipal.cdsUsuario.Close;
     dmPrincipal.cdsUsuario.Open;
     dmPrincipal.cdsUsuario.Insert;
     if not Assigned(frmCadUsuario) then
          frmCadUsuario := TfrmCadUsuario.Create(Application);
     try
          frmCadUsuario.ShowModal;
     finally
          frmCadUsuario.Free;
     end;
     frmCadUsuario := nil;
     grdUsuario.SetFocus;
end;

procedure TfrmConUsuarios.btnAlteraClick(Sender: TObject);
begin
     if not Assigned(frmCadUsuario) then
          frmCadUsuario := TfrmCadUsuario.Create(Application);
     try
     begin
          dmPrincipal.cdsUsuario.Edit;
          frmCadUsuario.ShowModal;
     end;
     finally
          frmCadUsuario.Free;
     end;
     frmCadUsuario := nil;
     grdUsuario.SetFocus;
end;

procedure TfrmConUsuarios.btnSairClick(Sender: TObject);
begin
     if chamou_zoom = True then
          cancelou_zoom := True;
     Close;
end;

procedure TfrmConUsuarios.btnExcluiClick(Sender: TObject);
begin
     if (MessageDlg('Deseja excluir o usu?rio selecionado ?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     begin
          dmPrincipal.cdsUsuario.Delete;
          dmPrincipal.cdsUsuario.ApplyUpdates(0);
     end;
end;

procedure TfrmConUsuarios.btnVisualizaClick(Sender: TObject);
begin
     dmPrincipal.qryUsuarios.Close;
     dmPrincipal.qryUsuarios.SQL.Text := 'select * from usuario order by '+ edtIndice.Text;
     dmPrincipal.qryUsuarios.Open;
     dmPrincipal.cdsUsuario.Close;
     dmPrincipal.cdsUsuario.Open;
end;

procedure TfrmConUsuarios.btnPrimeiroClick(Sender: TObject);
begin
     dmPrincipal.cdsUsuario.First;
end;

procedure TfrmConUsuarios.btnAnteriorClick(Sender: TObject);
begin
     dmPrincipal.cdsUsuario.Prior;
end;

procedure TfrmConUsuarios.btnProximoClick(Sender: TObject);
begin
     dmPrincipal.cdsUsuario.Next;
end;

procedure TfrmConUsuarios.btnUltimoClick(Sender: TObject);
begin
     dmPrincipal.cdsUsuario.Last;
end;

procedure TfrmConUsuarios.FormShow(Sender: TObject);
begin
     if definicao = 'ADMINISTRADOR' then
     begin
          btnAdiciona.Enabled := True;
          btnExclui.Enabled   := true;
     end;
     ActiveControl := edtOrdem;
     dmPrincipal.qryUsuarios.Close;
     dmPrincipal.qryUsuarios.SQL.Text := 'select * from usuario order by cod_usuario';
     dmPrincipal.qryUsuarios.Open;
     dmPrincipal.cdsUsuario.Close;
     dmPrincipal.cdsUsuario.Open;

     if cod_usuario_zoom <> 0 then
     begin
          dmPrincipal.cdsUsuario.IndexName := 'COD_USUARIO';
          dmPrincipal.cdsUsuario.FindKey([cod_usuario_zoom ]);
          dmPrincipal.cdsUsuario.IndexName := '';
          grdUsuario.SetFocus;
     end;

end;

function TfrmConUsuarios.on_change(texto, indice,
  ordem_final: String): Boolean;
begin
     texto  := StringReplace(texto,'*','%',[rfReplaceAll]);
     indice := AnsiLowerCase(indice);

     if texto <> '' then
     begin
           dmPrincipal.qryUsuarios.Close;
           dmPrincipal.qryUsuarios.SQL.Text := 'select * from usuario where cast(' + indice +' as TEXT)'+
           ' like '+ '''' + texto + '''' +
           ' order by ' + ansilowercase(ordem_final);

           dmPrincipal.qryUsuarios.Open;

           dmPrincipal.cdsUsuario.Close;
           dmPrincipal.cdsUsuario.Open;
     end;
end;

procedure TfrmConUsuarios.grdUsuarioTitleClick(Column: TColumn);
begin
     if ordem_ant <> Column.FieldName then
     begin
          ordem_final    := Column.FieldName;
          edtIndice.Text := Column.FieldName;
          ordem_final    := '';
          dmPrincipal.qryUsuarios.close;
          dmPrincipal.qryUsuarios.SQL.Text := 'select * from usuario order by '+ edtIndice.Text;
          dmPrincipal.qryUsuarios.open;
          dmPrincipal.cdsUsuario.close;
          dmPrincipal.cdsUsuario.Open;
          edtOrdem.Clear;
          edtOrdem.setfocus;
     end;
end;

procedure TfrmConUsuarios.edtOrdemChange(Sender: TObject);
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

procedure TfrmConUsuarios.grdUsuarioDblClick(Sender: TObject);
begin
     if btnAltera.Enabled then
          btnAltera.Click;
end;

procedure TfrmConUsuarios.grdUsuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (Key = 4100)       or
        (Key = 4101)       or
        (Key = VK_RETURN)  or
        (Key = vk_RETURN)  or
        (Key = 13)         then
     if btnAltera.Enabled then
        btnAltera.Click;
end;

procedure TfrmConUsuarios.btnExportaClick(Sender: TObject);
begin
     if chamou_zoom = true then
          Close;
end;

procedure TfrmConUsuarios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key = VK_ESCAPE then
          btnSair.Click();
     if(key = VK_F2)   or
        (Key = vk_F2)  or
        (Key = 113)    then
          btnAdiciona.Click();
     if btnExporta.Enabled = true then
     begin
          if(key = VK_F3) or
          (Key = vk_F3)   or
          (Key = 114 )    then
               btnExporta.Click();
     end;
     if(key = VK_F6)   or
        (Key = vk_F6)  or
        (Key = 117)    then
          btnAltera.Click();
     if(key = VK_F5)   or
        (Key = vk_F5)  or
        (Key = 116)    then
          btnVisualiza.Click();
end;

end.

unit uMNTDESENV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, ComCtrls, Mask, Buttons;

type
  TfrmManutencaoDesenv = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    edtBuscarCli: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    btnbuscarTela: TSpeedButton;
    btnbuscarCategoria: TSpeedButton;
    edtCodDesenv: TEdit;
    edtCodCliente: TDBEdit;
    edtNomeCliente: TEdit;
    edtData: TDateTimePicker;
    mmoDescAlteracao: TDBMemo;
    edtNomeUser: TEdit;
    edtTempo: TDBEdit;
    edtUsuario: TEdit;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    dsRegistro: TDataSource;
    edtCodTela: TDBEdit;
    edtNomeTela: TEdit;
    edtCodCategoria: TDBEdit;
    edtNomeCategoria: TEdit;
    Label8: TLabel;
    btnChamado: TSpeedButton;
    Label9: TLabel;
    edtDtChamado: TDBEdit;
    edtChamado: TDBEdit;
    cbxModulo: TComboBox;
    edttempoCobranca: TDBEdit;
    Label10: TLabel;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edtBuscarCliClick(Sender: TObject);
    procedure btnbuscarCategoriaClick(Sender: TObject);
    procedure edtCodClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodClienteExit(Sender: TObject);
    procedure edtCodTelaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodCategoriaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodTelaExit(Sender: TObject);
    procedure edtCodCategoriaExit(Sender: TObject);
    procedure btnbuscarTelaClick(Sender: TObject);
    procedure btnChamadoClick(Sender: TObject);
    procedure edtChamadoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManutencaoDesenv: TfrmManutencaoDesenv;

implementation

uses DTMPRINCIPAL, uCONCLIENTES, uPRINCIPAL, uLOGIN, uCONCATEGORIA,
  uCONTELAS, uCONCHAMADOS;

{$R *.dfm}

procedure TfrmManutencaoDesenv.btnSalvarClick(Sender: TObject);
var
     cod_registro :Integer;
begin


     edtCodCliente.OnExit(Self);
     edtCodTela.OnExit(Self);
     edtCodCategoria.OnExit(Self);

     if edtNomeCliente.Text = '' then
     begin
          ShowMessage('Cliente inv?lido. Verifique o cliente informado! ');
          edtCodCliente.SetFocus;
          Abort;
     end;



     if edtNomeCategoria.Text = '' then
     begin
          ShowMessage('Categoria inv?lida. Verifique a categoria informada! ');
          edtCodCategoria.SetFocus;
          Abort;
     end;

     if edtTempo.Text = '' then
     begin
          ShowMessage('A tempo gasto n?o pode ser nulo! ');
          edtTempo.SetFocus;
          Abort;
     end;


     if mmoDescAlteracao.Text = '' then
     begin
          ShowMessage('A descri??o da altera??o nao pode ser nula! ');
          mmoDescAlteracao.SetFocus;
          Abort;
     end;


     if dsRegistro.State in [dsInsert] then
     begin
          dmPrincipal.qryTemp.close;
          dmPrincipal.qryTemp.SQL.Clear;
          dmPrincipal.qryTemp.SQL.Add('select max(cod_desenvolvimento) as codigo from desenvolvimento');
          dmPrincipal.qryTemp.open;
          cod_registro := dmPrincipal.qryTemp.FieldByName('codigo').AsInteger;

          dmPrincipal.cdsDesenvcod_desenvolvimento.AsInteger := cod_registro + 1;
     end;

     dmPrincipal.cdsDesenvcod_usuario.AsString      := edtUsuario.Text;
     dmPrincipal.cdsDesenvdata_alteracao.AsDateTime := edtData.Date;
     dmPrincipal.cdsDesenvnome_tela.AsString        := edtNomeTela.Text;

     if cbxModulo.Text = '1-GERAL' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 1

     else if cbxModulo.Text = '2-VIAGENS' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 2

     else if cbxModulo.Text = '3-CONTAS A PAGAR' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 3

     else if cbxModulo.Text = '4-CONTAS A RECEBER' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 4

     else if cbxModulo.Text = '5-ESTOQUE' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 5

     else if cbxModulo.Text = '6-ECF' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 6
    //
    else if cbxModulo.Text = '7-PEDIDOS DE VENDA' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 7

    else if cbxModulo.Text = '8-PEDIDOS DE COMPRA' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 8

     else if cbxModulo.Text = '9-CONTABIL' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 9

     else if cbxModulo.Text = '10-ORCAMENTO' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 10

     else if cbxModulo.Text = '11-FATURAMENTO' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 11

     //
     else if cbxModulo.Text = '12-GERENCIAL' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 12

     else if cbxModulo.Text = '13-FINANCEIRO' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 13

     else if cbxModulo.Text = '14-FISCAL' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 14

     else if cbxModulo.Text = '15-SERVICOS' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 15

     else if cbxModulo.Text = '16-INDUSTRIAL' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 16

     //
     else if cbxModulo.Text = '17-PREVISAO DE VENDA' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 17

     else if cbxModulo.Text = '18-SUGESTAO DE COMPRA' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 18

     else if cbxModulo.Text = '19-ESPECIFICOS' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 19

     else if cbxModulo.Text = '20-LIBERACAO DEPARTAMENTAL' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 20

     else if cbxModulo.Text = '21-COMISSOES' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 21

     //
     else if cbxModulo.Text = '22-SUGESTAO DE PRODUCAO' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 22

     else if cbxModulo.Text = '23-MANUTENCAO INDUSTRIAL' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 23

     else if cbxModulo.Text = '24-GRAOS' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 24

     else if cbxModulo.Text = '25-FLEX' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 25

     else if cbxModulo.Text = '26-ENGENHARIA' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 26

     //
     else if cbxModulo.Text = '27-PLANEJAMENTO DE RECURSOS E MATERIAIS' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 27

     else if cbxModulo.Text = '28-APLICACOES E EMPRESTIMOS' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 28

     else if cbxModulo.Text = '29-RECURSOS HUMANOS' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 29

     else if cbxModulo.Text = '30-CONTROLE VEICULAR' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 30

     else if cbxModulo.Text = '31-CONHECIMENTO DE TRANSPORTE ELETRONICA' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 31

     else if cbxModulo.Text = '32-ACOMPANHAMENTO DE METAS' then
          dmPrincipal.cdsDesenvcod_modulo.AsInteger := 32;

     dmPrincipal.cdsDesenv.Post;
     dmPrincipal.cdsDesenv.ApplyUpdates(0);

     close;
end;


procedure TfrmManutencaoDesenv.btnCancelarClick(Sender: TObject);
begin
     if dsRegistro.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsDesenv.CancelUpdates;
     Close;
end;

procedure TfrmManutencaoDesenv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if dsRegistro.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsRegAlteracao.CancelUpdates;
end;

procedure TfrmManutencaoDesenv.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (Key = 4100)       or
        (Key = 4101)       or
        (Key = VK_RETURN) or
        (Key = vk_RETURN)  or
        (Key = 13)         then
          SelectNext(ActiveControl, True, True );
     if (Key = 4145)   or
        (key = VK_F2) or
        (Key = vk_F2)  or
        (Key = 113)    then
          btnSalvar.Click();
     if (Key = 4096)       or
        (key = VK_ESCAPE) or
        (key = vk_ESCAPE)  or
        (Key = 27)         then
          btnCancelar.Click();
end;

procedure TfrmManutencaoDesenv.FormShow(Sender: TObject);
begin
     cod_categoria_zoom := 0;
     cod_tela_zoom      := 0;
     cod_chamado_zoom   := 0;
     cod_cliente_zoom   := 0;
     if dsRegistro.State in [dsInsert] then
     begin
          edtData.Date := Date;
          edtUsuario.Text  := IntToStr(cod_usuario_login);
          edtNomeUser.Text := nome_usuario_login;
     end;


     if dsRegistro.State in [dsEdit] then
     begin
          dmPrincipal.qryUsuarios.Close();
          dmPrincipal.qryUsuarios.sql.text := 'select * from usuario order by cod_usuario';
          dmPrincipal.qryUsuarios.Open();
          if dmPrincipal.qryUsuarios.Locate('cod_usuario',dmPrincipal.cdsDesenvcod_usuario.AsInteger,[]) then
               edtNomeUser.Text   := dmPrincipal.qryUsuariosnome_usuario.AsString;

          edtUsuario.Text    := IntToStr(dmPrincipal.cdsDesenvcod_usuario.AsInteger);
          edtCodDesenv.Text  := IntToStr(dmPrincipal.cdsDesenvcod_desenvolvimento.AsInteger);
          edtData.Date       := dmPrincipal.cdsDesenvdata_alteracao.AsDateTime;

          if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 1 then
               cbxModulo.Text := '1-GERAL'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 2 then
               cbxModulo.Text := '2-VIAGENS'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 3 then
               cbxModulo.Text := '3-CONTAS A PAGAR'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 4 then
               cbxModulo.Text := '4-CONTAS A RECEBER'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 5 then
               cbxModulo.Text := '5-ESTOQUE'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 6 then
               cbxModulo.Text := '6-ECF'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 7 then
               cbxModulo.Text := '7-PEDIDOS DE VENDA'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 8 then
               cbxModulo.Text := '8-PEDIDOS DE COMPRA'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 9 then
               cbxModulo.Text := '9-CONTABIL'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 10 then
               cbxModulo.Text := '10-ORCAMENTO'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 11 then
               cbxModulo.Text := '11-FATURAMENTO'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 12 then
               cbxModulo.Text := '12-GERENCIAL'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 13 then
               cbxModulo.Text := '13-FINANCEIRO'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 14 then
               cbxModulo.Text := '14-FISCAL'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 15 then
               cbxModulo.Text := '15-SERVICOS'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 16 then
               cbxModulo.Text := '16-INDUSTRIAL'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 17 then
               cbxModulo.Text := '17-PREVISAO DE VENDA'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 18 then
               cbxModulo.Text := '18-SUGESTAO DE COMPRA'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 19 then
              cbxModulo.Text := '19-ESPECIFICOS'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 20 then
               cbxModulo.Text := '20-LIBERACAO DEPARTAMENTAL'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 21 then
               cbxModulo.Text := '21-COMISSOES'

     //
          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 22 then
               cbxModulo.Text := '22-SUGESTAO DE PRODUCAO'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 23 then
               cbxModulo.Text := '23-MANUTENCAO INDUSTRIAL'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 24 then
               cbxModulo.Text := '24-GRAOS'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 25 then
               cbxModulo.Text := '25-FLEX'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 26 then
               cbxModulo.Text := '26-ENGENHARIA'

     //
          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 27 then
               cbxModulo.Text := '27-PLANEJAMENTO DE RECURSOS E MATERIAIS'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 28 then
               cbxModulo.Text := '28-APLICACOES E EMPRESTIMOS'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 29 then
               cbxModulo.Text := '29-RECURSOS HUMANOS'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 30 then
               cbxModulo.Text := '30-CONTROLE VEICULAR'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 31 then
               cbxModulo.Text := '31-CONHECIMENTO DE TRANSPORTE ELETRONICA'

          else if dmPrincipal.cdsDesenvcod_modulo.AsInteger = 32 then
               cbxModulo.Text := '32-ACOMPANHAMENTO DE METAS';
               
          edtCodCliente.OnExit(Self);
          edtCodTela.OnExit(Self);
          edtCodCategoria.OnExit(Self);
     end;


end;

procedure TfrmManutencaoDesenv.edtBuscarCliClick(Sender: TObject);
var result : boolean;
begin
     if (edtCodCliente.enabled  = false) or
        (edtCodCliente.readonly = true)  then
          Exit;

     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConClientes <> nil then
          frmConClientes := nil;

     if (edtCodCliente.Text <> '') then
          cod_cliente_zoom := strtoint(edtCodCliente.Text);


     frmConClientes := TfrmConClientes.Create(Application);
     try
     begin
          frmConClientes.btnExporta.Enabled := True;
          frmConClientes.ShowModal();
     end
     finally
          frmConClientes.Free();
     end;
     frmConClientes := nil;

     if cancelou_zoom = false then
     begin
          edtCodCliente.Text := dmPrincipal.cdsClientescod_cliente.AsString;
          dmPrincipal.cdsDesenvcod_cliente.AsString := edtCodCliente.Text;
     end;

     edtCodCliente.OnExit(Self);
     edtCodCliente.SetFocus;

end;

procedure TfrmManutencaoDesenv.btnbuscarCategoriaClick(Sender: TObject);
var result : boolean;
begin
     if (edtCodCategoria.enabled  = false) or
        (edtCodCategoria.readonly = true)  then
          Exit;

     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConCategoria <> nil then
          frmConCategoria := nil;

     if (edtCodCategoria.Text <> '') then
          cod_categoria_zoom := strtoint(edtCodCategoria.Text);

     frmConCategoria := TfrmConCategoria.Create(Application);
     try
     begin
          frmConCategoria.btnExporta.Enabled := True;
          frmConCategoria.ShowModal();
     end
     finally
          frmConCategoria.Free();
     end;
     frmConCategoria := nil;

     if cancelou_zoom = false then
     begin
          edtCodCategoria.Text := dmPrincipal.cdsCategoriacod_categoria.AsString;
          dmPrincipal.cdsDesenvcod_categoria.AsString := edtCodCategoria.Text;
     end;

     edtCodCategoria.OnExit(Self);
     edtCodCategoria.SetFocus;

end;

procedure TfrmManutencaoDesenv.edtCodClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
          edtBuscarCli.OnClick(Self);
end;

procedure TfrmManutencaoDesenv.edtCodClienteExit(Sender: TObject);
begin
     if (edtCodCliente.Text <> '')  and
        (edtCodCliente.Text <> '0') then
     begin
          dmPrincipal.qryClientes.Close();
          dmPrincipal.qryClientes.sql.text := 'select * from cliente order by cod_cliente';
          dmPrincipal.qryClientes.Open();
          if dmPrincipal.qryClientes.Locate('cod_cliente',edtCodCliente.Text,[]) then
               edtNomeCliente.Text  := dmPrincipal.qryClientesnome_cliente.AsString
          else
               edtNomeCliente.Text := '';
     end
     else
          edtNomeCliente.Text := '';
end;

procedure TfrmManutencaoDesenv.edtCodTelaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
          btnbuscarTela.OnClick(Self);
end;

procedure TfrmManutencaoDesenv.edtCodCategoriaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
          btnbuscarCategoria.OnClick(Self);
end;

procedure TfrmManutencaoDesenv.edtCodTelaExit(Sender: TObject);
begin
     if (edtCodTela.Text <> '')  and
        (edtCodTela.Text <> '0') then
     begin
          dmPrincipal.qryTelas.Close();
          dmPrincipal.qryTelas.sql.text := 'select * from telas order by cod_tela';
          dmPrincipal.qryTelas.Open();
          if dmPrincipal.qryTelas.Locate('cod_tela',edtCodTela.Text,[]) then
          begin
               edtNomeTela.Text  := dmPrincipal.qryTelasnome.AsString;
               //--------------------------------------------//
               if dmPrincipal.qryTelascod_modulo.AsInteger = 1 then
                    cbxModulo.Text := '1-GERAL'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 2 then
                    cbxModulo.Text := '2-VIAGENS'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 3 then
                    cbxModulo.Text := '3-CONTAS A PAGAR'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 4 then
                    cbxModulo.Text := '4-CONTAS A RECEBER'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 5 then
                    cbxModulo.Text := '5-ESTOQUE'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 6 then
                    cbxModulo.Text := '6-ECF'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 7 then
                    cbxModulo.Text := '7-PEDIDOS DE VENDA'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 8 then
                    cbxModulo.Text := '8-PEDIDOS DE COMPRA'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 9 then
                    cbxModulo.Text := '9-CONTABIL'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 10 then
                    cbxModulo.Text := '10-ORCAMENTO'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 11 then
                    cbxModulo.Text := '11-FATURAMENTO'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 12 then
                    cbxModulo.Text := '12-GERENCIAL'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 13 then
                    cbxModulo.Text := '13-FINANCEIRO'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 14 then
                    cbxModulo.Text := '14-FISCAL'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 15 then
                    cbxModulo.Text := '15-SERVICOS'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 16 then
                    cbxModulo.Text := '16-INDUSTRIAL'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 17 then
                    cbxModulo.Text := '17-PREVISAO DE VENDA'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 18 then
                    cbxModulo.Text := '18-SUGESTAO DE COMPRA'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 19 then
               cbxModulo.Text := '19-ESPECIFICOS'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 20 then
                    cbxModulo.Text := '20-LIBERACAO DEPARTAMENTAL'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 21 then
                    cbxModulo.Text := '21-COMISSOES'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 22 then
                    cbxModulo.Text := '22-SUGESTAO DE PRODUCAO'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 23 then
                    cbxModulo.Text := '23-MANUTENCAO INDUSTRIAL'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 24 then
                    cbxModulo.Text := '24-GRAOS'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 25 then
                    cbxModulo.Text := '25-FLEX'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 26 then
                    cbxModulo.Text := '26-ENGENHARIA'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 27 then
                    cbxModulo.Text := '27-PLANEJAMENTO DE RECURSOS E MATERIAIS'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 28 then
                    cbxModulo.Text := '28-APLICACOES E EMPRESTIMOS'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 29 then
                    cbxModulo.Text := '29-RECURSOS HUMANOS'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 30 then
                    cbxModulo.Text := '30-CONTROLE VEICULAR'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 31 then
                    cbxModulo.Text := '31-CONHECIMENTO DE TRANSPORTE ELETRONICA'

               else if dmPrincipal.qryTelascod_modulo.AsInteger = 32 then
                    cbxModulo.Text := '32-ACOMPANHAMENTO DE METAS';
               //---------------------------------------------------------//

               TabStop := false;
               cbxModulo.Enabled := false;


          end
          else
          
          begin
               edtNomeTela.Text  := '';
               cbxModulo.text    := '';
               TabStop := false;

               cbxModulo.Enabled := false;

          end;
     end
     else
     begin
          edtNomeTela.Text := '';
          TabStop := true;
          cbxModulo.Enabled := true;
          cbxModulo.SetFocus;
     end;
end;

procedure TfrmManutencaoDesenv.edtCodCategoriaExit(Sender: TObject);
begin
     if (edtCodCategoria.Text <> '')  and
        (edtCodCategoria.Text <> '0') then
     begin
          dmPrincipal.qryCategoria.Close();
          dmPrincipal.qryCategoria.sql.text := 'select * from categoria_chamado order by cod_categoria';
          dmPrincipal.qryCategoria.Open();
          if dmPrincipal.qryCategoria.Locate('cod_categoria',edtCodCategoria.Text,[]) then
               edtNomeCategoria.Text  := dmPrincipal.qryCategoriadescricao_categoria.AsString
          else
               edtNomeCategoria.Text := '';
     end
     else
          edtNomeCategoria.Text := '';
end;

procedure TfrmManutencaoDesenv.btnbuscarTelaClick(Sender: TObject);
var result : boolean;
begin
     if (edtCodTela.enabled  = false) or
        (edtCodTela.readonly = true)  then
          Exit;

     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConTelas <> nil then
          frmConTelas := nil;

     if (edtCodTela.Text <> '') then
          cod_tela_zoom := strtoint(edtCodTela.Text);

     frmConTelas := TfrmConTelas.Create(Application);
     try
     begin
          frmConTelas.btnExporta.Enabled := True;
          frmConTelas.ShowModal();
     end
     finally
          frmConTelas.Free();
     end;
     frmConTelas := nil;

     if cancelou_zoom = false then
     begin
          edtCodTela.Text := dmPrincipal.cdsTelascod_tela.AsString;
          dmPrincipal.cdsDesenvcod_tela.AsString := edtCodTela.Text;

          if dmPrincipal.cdsTelascod_modulo.AsInteger = 1 then
               cbxModulo.Text := '1-GERAL'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 2 then
               cbxModulo.Text := '2-VIAGENS'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 3 then
               cbxModulo.Text := '3-CONTAS A PAGAR'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 4 then
               cbxModulo.Text := '4-CONTAS A RECEBER'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 5 then
               cbxModulo.Text := '5-ESTOQUE'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 6 then
               cbxModulo.Text := '6-ECF'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 7 then
               cbxModulo.Text := '7-PEDIDOS DE VENDA'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 8 then
               cbxModulo.Text := '8-PEDIDOS DE COMPRA'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 9 then
               cbxModulo.Text := '9-CONTABIL'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 10 then
               cbxModulo.Text := '10-ORCAMENTO'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 11 then
               cbxModulo.Text := '11-FATURAMENTO'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 12 then
               cbxModulo.Text := '12-GERENCIAL'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 13 then
               cbxModulo.Text := '13-FINANCEIRO'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 14 then
               cbxModulo.Text := '14-FISCAL'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 15 then
               cbxModulo.Text := '15-SERVICOS'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 16 then
               cbxModulo.Text := '16-INDUSTRIAL'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 17 then
               cbxModulo.Text := '17-PREVISAO DE VENDA'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 18 then
               cbxModulo.Text := '18-SUGESTAO DE COMPRA'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 19 then
              cbxModulo.Text := '19-ESPECIFICOS'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 20 then
               cbxModulo.Text := '20-LIBERACAO DEPARTAMENTAL'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 21 then
               cbxModulo.Text := '21-COMISSOES'

     //
          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 22 then
               cbxModulo.Text := '22-SUGESTAO DE PRODUCAO'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 23 then
               cbxModulo.Text := '23-MANUTENCAO INDUSTRIAL'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 24 then
               cbxModulo.Text := '24-GRAOS'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 25 then
               cbxModulo.Text := '25-FLEX'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 26 then
               cbxModulo.Text := '26-ENGENHARIA'

     //
          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 27 then
               cbxModulo.Text := '27-PLANEJAMENTO DE RECURSOS E MATERIAIS'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 28 then
               cbxModulo.Text := '28-APLICACOES E EMPRESTIMOS'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 29 then
               cbxModulo.Text := '29-RECURSOS HUMANOS'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 30 then
               cbxModulo.Text := '30-CONTROLE VEICULAR'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 31 then
               cbxModulo.Text := '31-CONHECIMENTO DE TRANSPORTE ELETRONICA'

          else if dmPrincipal.cdsTelascod_modulo.AsInteger = 32 then
               cbxModulo.Text := '32-ACOMPANHAMENTO DE METAS';
     end;

     edtCodTela.OnExit(Self);
     edtCodTela.SetFocus;

end;

procedure TfrmManutencaoDesenv.btnChamadoClick(Sender: TObject);
begin

     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConChamados <> nil then
          frmConChamados := nil;


     if (edtChamado.Text <> '') then
     begin
          cod_chamado_zoom      := strtoint(edtChamado.Text);
          cod_data_chamado_zoom := StrToDate(edtDtChamado.Text);
     end;

     frmConChamados := TfrmConChamados.Create(Application);
     try
     begin
          frmConChamados.btnExporta.Enabled := True;
          frmConChamados.ShowModal();
     end
     finally
          frmConChamados.Free();

          
     end;
     frmConChamados := nil;

     if cancelou_zoom = false then
     begin
          edtChamado.Text := dmPrincipal.cdsChamadoscod_chamado.AsString;
          dmPrincipal.cdsDesenvnum_chamado.AsString := edtChamado.Text;

          edtDtChamado.Text := DateToStr(dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
          dmPrincipal.cdsDesenvdata_chamado.AsString := edtDtChamado.Text;
     end;
     edtChamado.SetFocus;

end;




procedure TfrmManutencaoDesenv.edtChamadoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
          edtChamado.OnClick(Self);
end;

end.

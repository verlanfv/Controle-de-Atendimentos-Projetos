unit uMNTTELAS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, DB, Buttons, StdCtrls, Mask, ComCtrls;

type
  TfrmTelas = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtCodTela: TDBEdit;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    dsRegistro: TDataSource;
    Label1: TLabel;
    edtTela: TDBEdit;
    edtDesc: TDBEdit;
    edtDescMenu: TDBEdit;
    Label3: TLabel;
    Label6: TLabel;
    edtSubMenu: TDBEdit;
    Label7: TLabel;
    edtMenu: TDBEdit;
    cbxModulo: TComboBox;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelas: TfrmTelas;

implementation

uses DTMPRINCIPAL;

{$R *.dfm}

procedure TfrmTelas.btnCancelarClick(Sender: TObject);
begin
     if dsRegistro.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsTelas.CancelUpdates;
     Close;
end;

procedure TfrmTelas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if dsRegistro.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsTelas.CancelUpdates;
     Close;
end;

procedure TfrmTelas.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmTelas.btnSalvarClick(Sender: TObject);
begin
     if cbxModulo.Text = '' then
     begin
          ShowMessage('O módulo não pode ser nulo! ');
          cbxModulo.SetFocus;
          Abort;
     end;

     if edtCodTela.Text = '' then
     begin
          ShowMessage('O código da tela não pode ser nulo! ');
          edtCodTela.SetFocus;
          Abort;
     end;

     if edtTela.Text = '' then
     begin
          ShowMessage('O nome da tela não pode ser nula! ');
          edtTela.SetFocus;
          Abort;
     end;

     if edtDesc.Text = '' then
     begin
          ShowMessage('A descrição não pode ser nula ');
          edtDesc.SetFocus;
          Abort;
     end;

     if edtDescMenu.Text = '' then
     begin
          ShowMessage('A descrição do menu não pode ser nula! ');
          edtDescMenu.SetFocus;
          Abort;
     end;



     if cbxModulo.Text = '1-GERAL' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 1

     else if cbxModulo.Text = '2-VIAGENS' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 2

     else if cbxModulo.Text = '3-CONTAS A PAGAR' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 3

     else if cbxModulo.Text = '4-CONTAS A RECEBER' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 4

     else if cbxModulo.Text = '5-ESTOQUE' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 5

     else if cbxModulo.Text = '6-ECF' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 6
    //
    else if cbxModulo.Text = '7-PEDIDOS DE VENDA' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 7

    else if cbxModulo.Text = '8-PEDIDOS DE COMPRA' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 8

     else if cbxModulo.Text = '9-CONTABIL' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 9

     else if cbxModulo.Text = '10-ORCAMENTO' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 10

     else if cbxModulo.Text = '11-FATURAMENTO' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 11

     //
     else if cbxModulo.Text = '12-GERENCIAL' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 12

     else if cbxModulo.Text = '13-FINANCEIRO' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 13

     else if cbxModulo.Text = '14-FISCAL' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 14

     else if cbxModulo.Text = '15-SERVICOS' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 15

     else if cbxModulo.Text = '16-INDUSTRIAL' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 16

     //
     else if cbxModulo.Text = '17-PREVISAO DE VENDA' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 17

     else if cbxModulo.Text = '18-SUGESTAO DE COMPRA' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 18

     else if cbxModulo.Text = '19-ESPECIFICOS' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 19

     else if cbxModulo.Text = '20-LIBERACAO DEPARTAMENTAL' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 20

     else if cbxModulo.Text = '21-COMISSOES' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 21

     //
     else if cbxModulo.Text = '22-SUGESTAO DE PRODUCAO' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 22

     else if cbxModulo.Text = '23-MANUTENCAO INDUSTRIAL' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 23

     else if cbxModulo.Text = '24-GRAOS' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 24

     else if cbxModulo.Text = '25-FLEX' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 25

     else if cbxModulo.Text = '26-ENGENHARIA' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 26

     //
     else if cbxModulo.Text = '27-PLANEJAMENTO DE RECURSOS E MATERIAIS' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 27

     else if cbxModulo.Text = '28-APLICACOES E EMPRESTIMOS' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 28

     else if cbxModulo.Text = '29-RECURSOS HUMANOS' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 29

     else if cbxModulo.Text = '30-CONTROLE VEICULAR' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 30

     else if cbxModulo.Text = '31-CONHECIMENTO DE TRANSPORTE ELETRONICA' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 31

     else if cbxModulo.Text = '32-ACOMPANHAMENTO DE METAS' then
          dmPrincipal.cdsTelascod_modulo.AsInteger := 32;



     dmPrincipal.cdsTelas.Post;
     dmPrincipal.cdsTelas.ApplyUpdates(0);

     close;

end;

procedure TfrmTelas.FormShow(Sender: TObject);
begin
     if dsRegistro.State in [dsEdit] then
     begin
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
end;

end.

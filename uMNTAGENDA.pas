unit uMNTAGENDA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, DBCtrls, Mask, ComCtrls, DB;

type
  TfrmMntAgenda = class(TForm)
    GroupBox1: TGroupBox;
    lbldtManha: TLabel;
    edtdtSaida: TDateTimePicker;
    Label2: TLabel;
    edtHrSaida: TMaskEdit;
    mmoObservacao: TDBMemo;
    Label6: TLabel;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    edtdtRetorno: TDateTimePicker;
    edtHrRetorno: TMaskEdit;
    edtUser: TDBEdit;
    Label11: TLabel;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    cbxAtivo: TDBCheckBox;
    dsAgenda: TDataSource;
    edtnomeUsuario: TDBEdit;
    Label1: TLabel;
    edtCodCliente: TDBEdit;
    edtNomeCliente: TEdit;
    btnBuscaCliente: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnBuscaClienteClick(Sender: TObject);
    procedure edtCodClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodClienteExit(Sender: TObject);
    procedure edtdtSaidaExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMntAgenda: TfrmMntAgenda;

implementation

uses DTMPRINCIPAL, uLOGIN, uCONCLIENTES, uPRINCIPAL;

{$R *.dfm}




procedure TfrmMntAgenda.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmMntAgenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if dsAgenda.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsAgenda.CancelUpdates;
end;

procedure TfrmMntAgenda.FormShow(Sender: TObject);
begin
     if dsAgenda.State in [dsEdit] then
     begin
          edtCodCliente.OnExit(Self);
          edtdtSaida.DateTime   := dmPrincipal.cdsAgendadata_saida.AsDateTime;
          edtHrSaida.Text       := FormatDateTime('hh:nn', dmPrincipal.cdsAgendahora_saida.AsDateTime);
          edtdtRetorno.DateTime := dmPrincipal.cdsAgendaprev_data_retorno.AsDateTime;
          edtHrRetorno.Text     := FormatDateTime('hh:nn', dmPrincipal.cdsAgendaprev_hora_retorno.AsDateTime);
     end;
     if dsAgenda.State in [dsInsert] then
     begin
          edtUser.Text := IntToStr(cod_usuario_login);
          dmPrincipal.cdsAgendacod_usuario.AsString := edtUser.Text;
          edtnomeUsuario.Text := nome_usuario_login;
          dmPrincipal.cdsAgendanome_usuario.AsString := edtnomeUsuario.Text;

          dmPrincipal.cdsAgendaativo.AsBoolean := true;
          edtdtSaida.Date            := date;
          edtdtRetorno.Date          := date;
          edtHrSaida.Text            := FormatDateTime('hh:mm',Time);
          edtHrRetorno.Text          := FormatDateTime('hh:mm',Time);
     end;
end;

procedure TfrmMntAgenda.btnCancelarClick(Sender: TObject);
begin
     if dsAgenda.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsAgenda.CancelUpdates;
     close;
end;

procedure TfrmMntAgenda.btnSalvarClick(Sender: TObject);
var
     cod_seq :Integer;
begin

     if mmoObservacao.Text = '' then
     begin
          ShowMessage('O campo observa??o n?o pode ser nulo! ');
          mmoObservacao.SetFocus;
          Abort;
     end;


     if dsAgenda.State in [dsEdit] then
     begin
          dmPrincipal.cdsAgendadata_saida.AsDateTime := edtdtSaida.DateTime;
          dmPrincipal.cdsAgendahora_saida.AsDateTime := StrToTime(edtHrSaida.Text);

          dmPrincipal.cdsAgendaprev_data_retorno.AsDateTime  := edtdtRetorno.DateTime;
          dmPrincipal.cdsAgendaprev_hora_retorno.AsDateTime  := StrToTime(edtHrRetorno.Text);
          dmPrincipal.cdsAgendanome_cliente.AsString         :=  edtNomeCliente.Text;
     end;

     if dsAgenda.State in [dsInsert] then
     begin
          dmPrincipal.qryTemp.close;
          dmPrincipal.qryTemp.SQL.Clear;
          dmPrincipal.qryTemp.SQL.Add('select max(seq_agenda) as codigo from agenda');
          dmPrincipal.qryTemp.open;
          cod_seq := dmPrincipal.qryTemp.FieldByName('codigo').AsInteger;

          dmPrincipal.cdsAgendaseq_agenda.AsInteger := cod_seq + 1;

          dmPrincipal.cdsAgendadata_saida.AsDateTime := edtdtSaida.DateTime;
          dmPrincipal.cdsAgendahora_saida.AsDateTime := StrToTime(edtHrSaida.Text);

          dmPrincipal.cdsAgendaprev_data_retorno.AsDateTime  := edtdtRetorno.DateTime;
          dmPrincipal.cdsAgendaprev_hora_retorno.AsDateTime  := StrToTime(edtHrRetorno.Text);
          dmPrincipal.cdsAgendanome_cliente.AsString         :=  edtNomeCliente.Text;
     end;



     dmPrincipal.cdsAgenda.Post;
     dmPrincipal.cdsAgenda.ApplyUpdates(0);


    Close;

end;

procedure TfrmMntAgenda.btnBuscaClienteClick(Sender: TObject);
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
          dmPrincipal.cdsAgendacod_cliente.AsString := edtCodCliente.Text;
     end;

     edtCodCliente.OnExit(Self);
     edtCodCliente.SetFocus;
end;

procedure TfrmMntAgenda.edtCodClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
         btnBuscaCliente.Click();
end;

procedure TfrmMntAgenda.edtCodClienteExit(Sender: TObject);
begin
     if (edtCodCliente.Text <> '')  and
        (edtCodCliente.Text <> '0') then
     begin
          dmPrincipal.qryClientes.Close();
          dmPrincipal.qryClientes.sql.text := 'select * from cliente order by cod_cliente';
          dmPrincipal.qryClientes.Open();
          if dmPrincipal.qryClientes.Locate('cod_cliente',edtCodCliente.Text,[]) then
          begin
               edtNomeCliente.Text  := dmPrincipal.qryClientesnome_cliente.AsString;
          end
          else
          begin
               edtNomeCliente.Text := '';
          end;
     end
     else
     begin
          edtNomeCliente.Text := '';
     end;
end;

procedure TfrmMntAgenda.edtdtSaidaExit(Sender: TObject);
begin
     edtdtRetorno.DateTime := edtdtSaida.DateTime;
end;

end.

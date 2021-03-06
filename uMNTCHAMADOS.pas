{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit uMNTCHAMADOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DBCtrls, ExtCtrls, Buttons, Mask, DB,
  IdMessage, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, IdExplicitTLSClientServerBase, IdSMTPBase, IdAttachment, IdText;

type
  TfrmCadChamados = class(TForm)
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    dsChamado: TDataSource;
    IdEnvio: TIdSMTP;
    IdMsgTrocaResp: TIdMessage;
    IdEnvioCli: TIdSMTP;
    IdMsg: TIdMessage;
    OpenDialog: TOpenDialog;
    pnlGeral: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnBuscaCliente: TSpeedButton;
    btnBuscaCategoria: TSpeedButton;
    btnBuscaStatus: TSpeedButton;
    Label11: TLabel;
    btnBuscaUsuario: TSpeedButton;
    Label12: TLabel;
    Label13: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    edtBuscaEmail: TSpeedButton;
    btnBuscaCliUsuario: TSpeedButton;
    edtCodChamado: TEdit;
    edtCodCliente: TDBEdit;
    edtCodCategoria: TDBEdit;
    edtNomeCliente: TEdit;
    edtNomeCategoria: TEdit;
    edtNomeStatus: TEdit;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    edtData: TDateTimePicker;
    cbxPrioridade: TComboBox;
    edtDataPrazo: TDateTimePicker;
    mmoDescChamado: TDBMemo;
    edtCaminhoArq: TDBEdit;
    edthora: TMaskEdit;
    cbxOrigem: TDBComboBox;
    edtTempo: TEdit;
    edtDtFinal: TMaskEdit;
    edtHoraFinal: TMaskEdit;
    chxCompromisso: TDBCheckBox;
    btnAbrir: TBitBtn;
    chxCronograma: TDBCheckBox;
    edtKm: TDBEdit;
    chxChamadoAutomatico: TDBCheckBox;
    edtUserResp: TDBEdit;
    edtNomeUserResp: TEdit;
    edtCodUsuarioAbriu: TDBEdit;
    edtNomeUsuarioAbriu: TDBEdit;
    edtCodStatus: TDBEdit;
    edtsolicChamado: TDBEdit;
    mmoSolicitacao: TDBMemo;
    edtemail_solicitante: TDBEdit;
    edtUsuarioCli: TDBEdit;
    edtOutrosEmail: TDBEdit;
    Label19: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCodClienteExit(Sender: TObject);
    procedure btnBuscaClienteClick(Sender: TObject);
    procedure edtCodCategoriaExit(Sender: TObject);
    procedure btnBuscaCategoriaClick(Sender: TObject);
    procedure edtCodStatusExit(Sender: TObject);
    procedure btnBuscaStatusClick(Sender: TObject);
    procedure edtUserRespExit(Sender: TObject);
    procedure btnBuscaUsuarioClick(Sender: TObject);
    procedure mmoDescChamadoKeyPress(Sender: TObject; var Key: Char);
    procedure edtDtFinalExit(Sender: TObject);
    procedure edtDataChange(Sender: TObject);
    procedure edtCodClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodCategoriaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtUserRespKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodStatusKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAbrirClick(Sender: TObject);
    procedure edtHoraFinalExit(Sender: TObject);
    procedure edtBuscaEmailClick(Sender: TObject);
    procedure edtemail_solicitanteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnBuscaCliUsuarioClick(Sender: TObject);
    procedure edtUsuarioCliExit(Sender: TObject);
    procedure edtUsuarioCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    procedure enviaEmail;
    procedure enviaEmailCliente;
    procedure enviaEmailCobranca;
    procedure enviaEmailAbertura;
  end;

var
  frmCadChamados: TfrmCadChamados;
  sDescChamado : string;
  sCadSolucao  : String;
  sInserindo   : string;
  
implementation

uses DTMPRINCIPAL, uCONCLIENTES, uPRINCIPAL, uCONCATEGORIA, uCONSTATUS,
  uUSUARIOS, uLOGIN, uCONCHAMADOS, Math, uCONBASECONHECIMENTO,
  uMNTCOMPCLIENTE, uMNTREPORTVISITAS, uPROCEDIMENTOADOTADO, uBUSCAEMAIL,
  uCRONOGRAMA_ALT, uCLIENTEUSUARIO;

{$R *.dfm}

procedure TfrmCadChamados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     //Excluir registro bloqueado
     if dsChamado.State in [dsEdit] then
     begin
          dmPrincipal.cdsBloqueados.Close();
          dmPrincipal.cdsBloqueados.Open();
          if dmPrincipal.cdsBloqueados.Locate('tabela;chave1;chave2;chave3;chave4;chave5',VarArrayOf(['chamado',IntToStr(dmPrincipal.cdsChamadoscod_chamado.AsInteger),
                                                  DateToStr(dmPrincipal.cdsChamadosdata_chamado.AsDateTime),'0','0','0']),[]) then
          begin
               dmPrincipal.cdsBloqueados.Delete;
               dmPrincipal.cdsBloqueados.ApplyUpdates(0);
               dmPrincipal.qryBloqueados.Close();
               dmPrincipal.cdsBloqueados.Close();
               dmPrincipal.qryBloqueados.Open();
               dmPrincipal.cdsBloqueados.Open();
          end;
     end;

     if dsChamado.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsChamados.CancelUpdates;

     {if Assigned(frmConChamados) then
     begin
          frmConChamados.PageControl1.ActivePageIndex := 0;
          frmConChamados.cxGrid.SetFocus;
     end;}

end;

procedure TfrmCadChamados.btnCancelarClick(Sender: TObject);
begin
     //Excluir registro bloqueado
     if dsChamado.State in [dsEdit] then
     begin
          dmPrincipal.cdsBloqueados.Close();
          dmPrincipal.cdsBloqueados.Open();
          if dmPrincipal.cdsBloqueados.Locate('tabela;chave1;chave2;chave3;chave4;chave5',VarArrayOf(['chamado',IntToStr(dmPrincipal.cdsChamadoscod_chamado.AsInteger),
                                                  DateToStr(dmPrincipal.cdsChamadosdata_chamado.AsDateTime),'0','0','0']),[]) then
          begin
               dmPrincipal.cdsBloqueados.Delete;
               dmPrincipal.cdsBloqueados.ApplyUpdates(0);
               dmPrincipal.qryBloqueados.Close();
               dmPrincipal.cdsBloqueados.Close();
               dmPrincipal.qryBloqueados.Open();
               dmPrincipal.cdsBloqueados.Open();
          end;
     end;

     if dsChamado.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsChamados.CancelUpdates;

     Close;
end;

procedure TfrmCadChamados.btnSalvarClick(Sender: TObject);
var
     cod_chamado :Integer;
     sAno        : string;
begin
     sInserindo  := '';
     cod_chamado := 0;
     sAno        := '';
     edtCodCliente.OnExit(Self);
     edtUsuarioCli.OnExit(self);
     edtCodCategoria.OnExit(Self);
     edtUserResp.OnExit(Self);
     edtCodStatus.OnExit(Self);

     if (edtCodCliente.Text = '') or (edtNomeCliente.Text = '') then
     begin
          ShowMessage('O cliente n?o pode ser nulo! ');
          edtCodCliente.SetFocus;
          Abort;
     end;

     if edtsolicChamado.Text = '' then
     begin
          ShowMessage('O solicitante do chamado n?o pode ser nulo! ');
          edtUsuarioCli.SetFocus;
          Abort;
     end;

     if mmoSolicitacao.Text = '' then
     begin
          ShowMessage('A solicita??o do chamado n?o pode ser nula! ');
          mmoSolicitacao.SetFocus;
          Abort;
     end;

     if (edtCodCategoria.Text = '') or (edtNomeCategoria.text = '') then
     begin
          ShowMessage('A categoria do chamado n?o pode ser nula! ');
          edtCodCategoria.SetFocus;
          Abort;
     end;
     
     //valida campo de categoria do chamado "VIA E-MAIL"
     dmPrincipal.qryTemp.close;
     dmPrincipal.qryTemp.SQL.Text := 'select * from parametros_gerais where cod_categoria_padrao = '+dmPrincipal.cdsChamadoscod_categoria.AsString;
     dmPrincipal.qryTemp.open;
     if not dmPrincipal.qryTemp.IsEmpty then
     begin
          ShowMessage('A categoria padr?o do chamado(VIA E-MAIL) deve ser alterada.'+#10+
                      'Verifique antes de salvar o chamado!' );
          edtCodCategoria.SetFocus;
          Abort;
     end;

     if (edtUserResp.Text = '') and (edtCodStatus.Text <> '1') then
     begin
          ShowMessage('O usu?rio respons?vel pelo chamado n?o pode ser nulo! ');
          edtUserResp.SetFocus;
          Abort;
     end;
     if (edtUserResp.text <> '') and (edtNomeUserResp.text = '') and (edtUserResp.text <> '0') then
     begin
          ShowMessage('Usu?rio respons?vel inv?lido!! ');
          edtUserResp.SetFocus;
          Abort;
     end;
     if (edtUserResp.text = '0') or (edtNomeUserResp.Text = '')then
     begin
          dmPrincipal.cdsChamadoscod_usuario_resp.Clear;
     end;
     if (edtCodStatus.Text = '') or (edtNomeStatus.Text = '') then
     begin
          ShowMessage('O status do chamado n?o pode ser nulo! ');
          edtCodStatus.SetFocus;
          Abort;
     end;
     if DateToStr(edtData.Date) = '' then
     begin
          ShowMessage('A data do chamado n?o pode ser nula! ');
          edtData.SetFocus;
          Abort;
     end;
     if edtHora.Text = '  :  ' then
     begin
          ShowMessage('A hora do chamado n?o pode ser nula! ');
          edtHora.SetFocus;
          Abort;
     end;
     if edtData.Date > edtDataPrazo.Date then
     begin
          ShowMessage('A data do chamado n?o pode ser maior que a data prazo de finaliza??o! ');
          edtDataPrazo.SetFocus;
          Abort;
     end;
     if (edtDtFinal.Enabled = true) and (edtDtFinal.Text = '  /  /    ') then
     begin
          ShowMessage('A data de finaliza??o n?o pode ser vazia! ');
          edtDtFinal.SetFocus;
          Abort;
     end;
     if (edtHoraFinal.Enabled = true) and (edtHoraFinal.Text = '  :  ') then
     begin
          ShowMessage('A hora de finaliza??o n?o pode ser vazia! ');
          edtHoraFinal.SetFocus;
          Abort;
     end;
     if (edtDtFinal.Enabled = true) then
     if (edtData.Date > StrToDate(edtDtFinal.Text)) then
     begin
          ShowMessage('A data do chamado n?o pode ser maior que a data de finaliza??o! ');
          edtDtFinal.SetFocus;
          Abort;
     end;
     if (edtDtFinal.Enabled = true) then
     if (edtData.Date = StrToDate(edtDtFinal.Text)) and (edthora.text > edtHoraFinal.text) then
     begin
          ShowMessage('A hora de finaliza??o n?o pode ser menor que a hora inicial do chamado! ');
          edtHoraFinal.SetFocus;
          Abort;
     end;
     if edtTempo.Text = '' then
     begin
          ShowMessage('O tempo gasto n?o pode ser nulo! ');
          edtTempo.SetFocus;
          Abort;
     end;

     if cbxPrioridade.Text = '' then
     begin
          ShowMessage('A prioridade do chamado n?o pode ser nulo! ');
          cbxPrioridade.SetFocus;
          Abort;
     end;

     if cbxOrigem.Text = '' then
     begin
          ShowMessage('A origem do chamado n?o pode ser nula !');
          cbxOrigem.SetFocus;
          Abort;
     end;

     //valida status de compromisso
     if (dmPrincipal.qryStatuscod_status.AsInteger = 4) and
        (chxCompromisso.Checked = false) then
     begin
          ShowMessage('Para utilizar o status "EM COMPROMISSO", '+#10+
                         'marque a op??o "Gera Compromisso".');
          edtCodStatus.SetFocus;
          Abort;
     end;

     //Excluir registro bloqueado
     if dsChamado.State in [dsEdit] then
     begin
          dmPrincipal.cdsBloqueados.Close();
          dmPrincipal.cdsBloqueados.Open();
          if dmPrincipal.cdsBloqueados.Locate('tabela;chave1;chave2;chave3;chave4;chave5',VarArrayOf(['chamado',IntToStr(dmPrincipal.cdsChamadoscod_chamado.AsInteger),
                                                  DateToStr(dmPrincipal.cdsChamadosdata_chamado.AsDateTime),'0','0','0']),[]) then
          begin
               dmPrincipal.cdsBloqueados.Delete;
               dmPrincipal.cdsBloqueados.ApplyUpdates(0);
               dmPrincipal.qryBloqueados.Close();
               dmPrincipal.cdsBloqueados.Close();
               dmPrincipal.qryBloqueados.Open();
               dmPrincipal.cdsBloqueados.Open();
          end;
     end;

     //Verifica na finaliza??o do chamado, se o usu?rio logado difere do usu?rio respons?vel
     dmPrincipal.qryStatus.Close;
     dmPrincipal.qryStatus.SQL.Text := 'select * from status_chamado order by cod_status';
     dmPrincipal.qryStatus.open;
     if dmPrincipal.qryStatus.Locate('cod_status',dmPrincipal.cdsChamadoscod_status.AsInteger,[]) then
     begin
          if dmPrincipal.qryStatusencerra_chamado.AsString = 'S' then
          begin
               if cod_usuario_login <> StrToInt(edtUserResp.Text) then
               begin
                    ShowMessage('Imposs?vel finalizar o chamado. Usu?rio logado difere do respons?vel pelo chamado!');
                    edtUserResp.SetFocus;
                    Abort;
               end;
          end;
     end;


     if dsChamado.State in [dsInsert] then
     begin
          sInserindo := 'S';
          dmPrincipal.cdsChamadosdata_gravacao.AsDateTime   := Date;
          dmPrincipal.cdsChamadoshora_gravacao.AsDateTime   := Time;
          dmPrincipal.qryParametros.close;
          dmPrincipal.qryParametros.SQL.Text := 'select * from parametros_gerais';
          dmPrincipal.qryParametros.Open;
          dmPrincipal.cdsParametros.close;
          dmPrincipal.cdsParametros.Open;
          if not dmPrincipal.cdsParametros.IsEmpty then
          begin
          //Quando ocorrer a virada do ano, o c?digo do chamado iniciar? do zero novamente
               sAno := FormatDateTime('yyyy',Date);
               if (sAno) <= (dmPrincipal.cdsParametrosano_chamado.AsString) then
               begin
                    cod_chamado := dmPrincipal.cdsParametrosultimo_chamado.AsInteger;
                    dmPrincipal.cdsParametros.Edit;
                    dmPrincipal.cdsParametrosultimo_chamado.AsInteger := cod_chamado + 1;
                    dmPrincipal.cdsChamadoscod_chamado.AsInteger      := cod_chamado + 1;
               end
               else
               begin
                    cod_chamado := 0;
                    dmPrincipal.cdsParametros.Edit;
                    dmPrincipal.cdsParametrosultimo_chamado.AsInteger := cod_chamado + 1;
                    dmPrincipal.cdsParametrosano_chamado.AsInteger    := StrToInt(sAno);
                    dmPrincipal.cdsChamadoscod_chamado.AsInteger      := cod_chamado + 1;
               end;
               dmPrincipal.cdsParametros.Post;
               dmPrincipal.cdsParametros.ApplyUpdates(0);
          end
          else
          begin
               ShowMessage('Imposs?vel efetuar o cadastro de chamados.'+#13+'Verifique os Par?metros gerais do Sistema!!');
               Abort;
          end;
     end;
     if dsChamado.State in [dsInsert,dsEdit] then
     begin
          dmPrincipal.cdsChamadosnome_cliente.AsString       := edtNomeCliente.Text;
          dmPrincipal.cdsChamadosdesc_categoria.AsString     := edtNomeCategoria.Text;
          dmPrincipal.cdsChamadosdesc_status.AsString        := edtNomeStatus.Text;
          dmPrincipal.cdsChamadosnome_usuario_resp.AsString  := edtNomeUserResp.Text;
          dmPrincipal.cdsChamadosdata_chamado.AsDateTime     := edtData.DateTime;
          dmPrincipal.cdsChamadoshora_chamado.AsDateTime     := StrToTime(edtHora.Text);
          dmPrincipal.cdsChamadosprazo_fim_chamdo.AsDateTime := edtDataPrazo.DateTime;
          dmPrincipal.cdsChamadostempo_gasto.AsString        := edtTempo.Text;

          if (edtDtFinal.Text <> '  /  /    ') then
               dmPrincipal.cdsChamadosdata_final.AsDateTime := StrToDate(edtDtFinal.Text);
          if (edtHoraFinal.Text <> '  :  ') then
               dmPrincipal.cdsChamadoshora_final.AsDateTime := StrToTime(edtHoraFinal.Text);

          if cbxPrioridade.ItemIndex = 0 then
               dmPrincipal.cdsChamadosnivel_prioridade.AsString := '1'
          else
          if cbxPrioridade.ItemIndex = 1 then
               dmPrincipal.cdsChamadosnivel_prioridade.AsString := '2'
          else
          if cbxPrioridade.ItemIndex = 2 then
               dmPrincipal.cdsChamadosnivel_prioridade.AsString := '3';


     end;

     
     dmPrincipal.cdsChamados.Post;
     dmPrincipal.cdsChamados.ApplyUpdates(0);

     // Atualiza data de atualiza??o do sistema no cadastro do cliente
     dmPrincipal.qryCategoria.Close;
     dmPrincipal.qryCategoria.SQL.Text := 'select * from categoria_chamado order by cod_categoria';
     dmPrincipal.qryCategoria.open;

     dmPrincipal.qryStatus.Close;
     dmPrincipal.qryStatus.SQL.Text := 'select * from status_chamado order by cod_status';
     dmPrincipal.qryStatus.open;

     if dmPrincipal.qryStatus.Locate('cod_status',dmPrincipal.cdsChamadoscod_status.AsInteger,[]) then
     begin
          if dmPrincipal.qryCategoria.Locate('cod_categoria',dmPrincipal.cdsChamadoscod_categoria.AsInteger,[]) then
          begin
               if (dmPrincipal.qryCategoriaatualiza_sistema.AsString = 'S') and (dmPrincipal.qryStatusencerra_chamado.AsString = 'S') then
               begin
                    if MessageDlg('Deseja atualizar a data de atualiza??o do sistema?',mtConfirmation,[mbYes, mbNo], 0) = mrYes then
                    begin
                         dmPrincipal.qryClientes.Close;
                         dmPrincipal.qryClientes.SQL.Text := 'select * from cliente where cod_cliente = '+dmPrincipal.cdsChamadoscod_cliente.AsString;
                         dmPrincipal.qryClientes.open;
                         dmPrincipal.cdsClientes.Close;
                         dmPrincipal.cdsClientes.open;
                         if not dmPrincipal.cdsClientes.IsEmpty then
                         begin
                              dmPrincipal.cdsClientes.Edit;
                              dmPrincipal.cdsClientesdt_ultima_atualizacao.AsDateTime := dmPrincipal.cdsChamadosdata_final.AsDateTime;
                              dmPrincipal.cdsClientes.Post;
                              dmPrincipal.cdsClientes.ApplyUpdates(0);
                         end;
                    end;

               end;
          end;
     end;

     //gera compromisso a partir de um chamado
     if (chxCompromisso.Checked = true) and
     (dmPrincipal.qryStatusencerra_chamado.AsString = 'N') and
     (chxCompromisso.ReadOnly = false) then
     begin
          if frmCadCompromisso <> nil then
               frmCadCompromisso := nil;

          frmCadCompromisso := TfrmCadCompromisso.Create(Application);
          try
          begin
               dmPrincipal.qryCompromissos.Close;
               dmPrincipal.qryCompromissos.Open;
               dmPrincipal.cdsCompromissos.Close;
               dmPrincipal.cdsCompromissos.Open;
               dmPrincipal.cdsCompromissos.Insert;
               frmCadCompromisso.ShowModal();
          end;
          finally
               frmCadCompromisso.Free();
          end;
          frmCadCompromisso := nil;

     end;


     //gera cronograma de altera??o
     if (chxCronograma.Checked = true) and
     (dmPrincipal.qryStatusencerra_chamado.AsString = 'N') and
     (chxCronograma.ReadOnly = false) then
     begin
          if frmCronogramaAlteracoes <> nil then
               frmCronogramaAlteracoes := nil;

          frmCronogramaAlteracoes := TfrmCronogramaAlteracoes.Create(Application);
          try
          begin
               dmPrincipal.qryCronogramaAlt.Close;
               dmPrincipal.qryCronogramaAlt.Open;
               dmPrincipal.cdsCronogramaAlt.Close;
               dmPrincipal.cdsCronogramaAlt.Open;
               dmPrincipal.cdsCronogramaAlt.Insert;
               frmCronogramaAlteracoes.ShowModal();
          end;
          finally
               frmCronogramaAlteracoes.Free();
          end;
          frmCronogramaAlteracoes := nil;

     end;
     // envia e-mail na troca de respons?vel pelo chamado
     if (cod_usuario_login <> dmPrincipal.cdsChamadoscod_usuario_resp.AsInteger) and
     (edtUserResp.Text <> '') and
     (sInserindo = 'S') then
          enviaEmail;//procedure para envio de email

     dmPrincipal.qryStatus.Close;
     dmPrincipal.qryStatus.SQL.Text := 'select * from status_chamado order by cod_status';
     dmPrincipal.qryStatus.open;
     if dmPrincipal.qryStatus.Locate('cod_status',dmPrincipal.cdsChamadoscod_status.AsInteger,[]) then
     begin
          if dmPrincipal.qryStatusencerra_chamado.AsString = 'S' then
          begin
               //enviaEmailCliente;
               if MessageDlg('Deseja cadastrar a solu??o do chamado?',mtConfirmation,[mbYes, mbNo], 0) = mrYes then
               begin
                    if frmConBaseConhecimento <> nil then
                         frmConBaseConhecimento := nil;

                    frmConBaseConhecimento := TfrmConBaseConhecimento.Create(Application);
                    try
                    begin
                         sCadSolucao := 'S';
                         sDescChamado := dmPrincipal.cdsChamadosdescricao_chamado.AsString;
                         frmConBaseConhecimento.ShowModal();
                    end
                    finally
                    begin
                         sCadSolucao := '';
                         frmConBaseConhecimento.Free();
                    end;
                    end;
                    frmConBaseConhecimento := nil;
               end;
               enviaEmailAbertura;
               enviaEmailCliente;
               enviaEmailCobranca;
          end
          else if (dmPrincipal.qryStatuscod_status.AsInteger = 2) and (sInserindo = 'S') then
               enviaEmailAbertura;
     end;


     close;

end;

procedure TfrmCadChamados.FormShow(Sender: TObject);
begin
     
     cod_cliente_zoom    := 0;
     cod_status_zoom     := 0;
     cod_cliUsuario_zoom := 0;
     cod_categoria_zoom  := 0;
     cod_usuario_zoom    := 0;

     bGeraNovaVisita := false;
     sDescChamado := '';
     sCadSolucao  := '';
     if dsChamado.State in [dsInsert] then
     begin
          edtData.date      := Date;
          edtHora.Text      := FormatDateTime('hh:mm',Time);
          edtDataPrazo.Date := Date;
          dmPrincipal.cdsChamadoschamado_automatico.AsString := 'N';
          dmPrincipal.cdsChamadoscod_usuario_abriu.AsInteger := cod_usuario_login;
          dmPrincipal.cdsChamadosnome_usuario_abriu.AsString := nome_usuario_login;
          dmPrincipal.cdsChamadosgera_compromisso.AsString   := 'N';
          dmPrincipal.cdsChamadostempo_cobranca.AsCurrency   := 0;
          dmPrincipal.cdsChamadosgera_cronograma_alt.AsString := 'N';
     end;
     if dsChamado.State in [dsEdit] then
     begin
          
          //Registro Bloqueado

          dmPrincipal.cdsBloqueados.InsertRecord(['chamado',
                                                    nome_usuario_login,
                                                    IntToStr(dmPrincipal.cdsChamadoscod_chamado.AsInteger),
                                                    DateToStr(dmPrincipal.cdsChamadosdata_chamado.AsDateTime),
                                                    '0',
                                                    '0',
                                                    '0']);
          dmPrincipal.cdsBloqueados.ApplyUpdates(0);
          dmPrincipal.qryBloqueados.Close();
          dmPrincipal.cdsBloqueados.Close();
          dmPrincipal.qryBloqueados.Open();
          dmPrincipal.cdsBloqueados.Open();



          chxCompromisso.ReadOnly := True;
          chxCronograma.ReadOnly  := True;

          edtCodChamado.Text := dmPrincipal.cdsChamadoscod_chamado.AsString;
          edtData.Date       := dmPrincipal.cdsChamadosdata_chamado.AsDateTime;
          edthora.Text       := FormatDateTime('hh:mm',dmPrincipal.cdsChamadoshora_chamado.AsDateTime);
          edtDataPrazo.Date  := dmPrincipal.cdsChamadosprazo_fim_chamdo.AsDateTime;
          edtTempo.Text      := dmPrincipal.cdsChamadostempo_gasto.AsString;
          if not dmPrincipal.cdsChamadosdata_final.IsNull then
               edtDtFinal.Text   := FormatDateTime('dd/mm/yyyy',dmPrincipal.cdsChamadosdata_final.AsDateTime);
          if not dmPrincipal.cdsChamadoshora_final.IsNull then
               edtHoraFinal.Text := FormatDateTime('hh:mm',dmPrincipal.cdsChamadoshora_final.AsDateTime);
          edtUserResp.Enabled     := false;
          edtCodStatus.Enabled    := false;
          btnBuscaUsuario.Enabled := false;
          btnBuscaStatus.Enabled  := false;
          if dmPrincipal.cdsChamadosnivel_prioridade.AsString = '1' then
               cbxPrioridade.ItemIndex := 0
          else
          if dmPrincipal.cdsChamadosnivel_prioridade.AsString = '2' then
               cbxPrioridade.ItemIndex := 1
          else
          if dmPrincipal.cdsChamadosnivel_prioridade.AsString = '3' then
               cbxPrioridade.ItemIndex := 2;

          //if dmPrincipal.cdsChamadosgera_compromisso.AsString = 'S' then
          //   chxCompromisso.ReadOnly := true
          //else
          //   chxCompromisso.ReadOnly := false;

          edtCodCliente.OnExit(Self);
          edtCodCategoria.OnExit(Self);
          edtCodStatus.OnExit(Self);
          edtUserResp.OnExit(Self);


          dmPrincipal.qryStatus.Close;
          dmPrincipal.qryStatus.Open;
          if dmPrincipal.qryStatus.Locate('cod_status',dmPrincipal.cdsChamadoscod_status.AsInteger,[]) then
          begin
               if (dmPrincipal.qryStatusencerra_chamado.AsString = 'S') then
               begin
                    pnlGeral.Enabled  := false;
                    btnSalvar.Enabled := false;
               end;
          end;

     end;
end;

procedure TfrmCadChamados.edtCodClienteExit(Sender: TObject);
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
               {edtUsuarioCli.Text   := '';
               dmPrincipal.cdsChamadoscod_usuario_cli.clear;
               edtsolicChamado.Text := '';
               dmPrincipal.cdsChamadosfuncionario_emp.AsString := edtsolicChamado.Text;
               edtemail_solicitante.Text := '';
               dmPrincipal.cdsChamadosemail_solicitante.AsString := edtemail_solicitante.Text;}
          end
          else
          begin
               edtNomeCliente.Text := '';
               {edtUsuarioCli.Text   := '';
               dmPrincipal.cdsChamadoscod_usuario_cli.clear;
               edtsolicChamado.Text := '';
               dmPrincipal.cdsChamadosfuncionario_emp.AsString := edtsolicChamado.Text;
               edtemail_solicitante.Text := '';
               dmPrincipal.cdsChamadosemail_solicitante.AsString := edtemail_solicitante.Text;}
          end;
     end
     else
     begin
          edtNomeCliente.Text := '';
          {edtUsuarioCli.Text   := '';
          dmPrincipal.cdsChamadoscod_usuario_cli.clear;
          edtsolicChamado.Text := '';
          dmPrincipal.cdsChamadosfuncionario_emp.AsString := edtsolicChamado.Text;
          edtemail_solicitante.Text := '';
          dmPrincipal.cdsChamadosemail_solicitante.AsString := edtemail_solicitante.Text;}
     end;

     
end;

procedure TfrmCadChamados.btnBuscaClienteClick(Sender: TObject);
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
          dmPrincipal.cdsChamadoscod_cliente.AsString := edtCodCliente.Text;
     end;

     edtCodCliente.OnExit(Self);
     edtCodCliente.SetFocus;
end;

procedure TfrmCadChamados.edtCodCategoriaExit(Sender: TObject);
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

procedure TfrmCadChamados.btnBuscaCategoriaClick(Sender: TObject);
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
          dmPrincipal.cdsChamadoscod_categoria.AsString := edtCodCategoria.Text;
     end;

     edtCodCategoria.OnExit(Self);
     edtCodCategoria.SetFocus;
end;

procedure TfrmCadChamados.edtCodStatusExit(Sender: TObject);
begin
     if (edtCodStatus.Text <> '')  and
        (edtCodStatus.Text <> '0') then
     begin
          dmPrincipal.qryStatus.Close();
          dmPrincipal.qryStatus.sql.text := 'select * from status_chamado order by cod_status';
          dmPrincipal.qryStatus.Open();
          if dmPrincipal.qryStatus.Locate('cod_status',edtCodStatus.Text,[]) then
          begin
               edtNomeStatus.Text  := dmPrincipal.qryStatusdescricao_status.AsString;
               if dmPrincipal.qryStatusencerra_chamado.AsString = 'N' then
               begin
                    if dmPrincipal.qryStatuscod_status.AsInteger <> 1 then
                    begin
                         chxCompromisso.Enabled := True;
                         chxCronograma.Enabled  := True;
                    end
                    else if dmPrincipal.qryStatuscod_status.AsInteger = 1 then
                    begin
                         chxCompromisso.Enabled := false;
                         dmPrincipal.cdsChamadosgera_compromisso.AsString := 'N';
                         chxCronograma.Enabled  := false;
                         dmPrincipal.cdsChamadosgera_cronograma_alt.AsString := 'N';

                    end;

                    edtDtFinal.Clear;
                    edtDtFinal.Enabled   := False;
                    edtHoraFinal.Clear;
                    edtHoraFinal.Enabled := False;
                    if dsChamado.State in [dsInsert] then
                    begin
                         edtTempo.text := '0';
                         edtTempo.Enabled := false;
                         //dmPrincipal.cdsChamadostempo_cobranca.AsCurrency := 0;
                         //edtTmpCobrar.Enabled := false;
                    end
                    else
                    begin
                         if dsChamado.State in [dsEdit] then
                         begin
                              edtTempo.Enabled := false;
                              //edtTmpCobrar.Enabled := false;
                         end
                    end
               end
               else
               begin
                    edtDtFinal.Enabled     := True;
                    edtHoraFinal.Enabled   := True;
                    edtTempo.Enabled       := true;
                    //edtTmpCobrar.Enabled := true;
                    chxCompromisso.Enabled := false;
                    chxCronograma.Enabled := false;
                    dmPrincipal.cdsChamadosgera_compromisso.AsString := 'N';
               end

          end
          else
          begin
               edtNomeStatus.Text   := '';
               edtDtFinal.Clear;
               edtDtFinal.Enabled   := False;
               edtHoraFinal.Clear;
               edtHoraFinal.Enabled := False;
               edtTempo.text        := '0';
               edtTempo.Enabled     := false;
               //dmPrincipal.cdsChamadostempo_cobranca.AsCurrency := 0;
               //edtTmpCobrar.Enabled := false;
          end
     end
     else
     begin
          edtNomeStatus.Text   := '';
          edtDtFinal.Clear;
          edtDtFinal.Enabled   := False;
          edtHoraFinal.Clear;
          edtHoraFinal.Enabled := False;
          edtTempo.text        := '0';
          edtTempo.Enabled     := false;
          //dmPrincipal.cdsChamadostempo_cobranca.AsCurrency := 0;
          //edtTmpCobrar.Enabled := false;
     end;

end;

procedure TfrmCadChamados.btnBuscaStatusClick(Sender: TObject);
var result : boolean;
begin
     if (edtCodStatus.enabled  = false) or
        (edtCodStatus.readonly = true)  then
          Exit;

     chamou_zoom   := true;
     cancelou_zoom := false;
     if frmConStatus <> nil then
          frmConStatus := nil;

     if (edtCodStatus.Text <> '') then
          cod_status_zoom := strtoint(edtCodStatus.Text);

     frmConStatus := TfrmConStatus.Create(Application);
     try
     begin
          frmConStatus.btnExporta.Enabled := True;
          frmConStatus.ShowModal();
     end
     finally
          frmConStatus.Free();
     end;
     frmConStatus := nil;

     if cancelou_zoom = false then
     begin
          edtCodStatus.Text := dmPrincipal.cdsStatuscod_status.AsString;
          dmPrincipal.cdsChamadoscod_status.AsString := edtCodStatus.Text;
     end;

     edtCodStatus.OnExit(Self);
     edtCodStatus.SetFocus;

end;

procedure TfrmCadChamados.edtUserRespExit(Sender: TObject);
begin
     if (edtUserResp.Text <> '')  and
        (edtUserResp.Text <> '0') then
     begin
          dmPrincipal.qryUsuarios.Close();
          dmPrincipal.qryUsuarios.sql.text := 'select * from usuario order by cod_usuario';
          dmPrincipal.qryUsuarios.Open();
          if dmPrincipal.qryUsuarios.Locate('cod_usuario',edtUserResp.Text,[]) then
               edtNomeUserResp.Text  := dmPrincipal.qryUsuariosnome_usuario.AsString
          else
               edtNomeUserResp.Text := '';
     end
     else
          edtNomeUserResp.Text := '';

     if dsChamado.State in [dsInsert] then
     begin
          if (edtUserResp.Text <> '') and (edtNomeUserResp.Text <> '') and (edtUserResp.Text <> '0') then
          begin
               dmPrincipal.qryStatus.Close;
               dmPrincipal.qryStatus.Open;
               if dmPrincipal.qryStatus.Locate('descricao_status','ABERTO',[]) then
               begin
                    if (edtCodStatus.Text = '') or (edtNomeStatus.Text = '') or (edtCodStatus.Text = '1') then
                    begin
                         edtCodStatus.Text  := dmPrincipal.qryStatuscod_status.AsString;
                         dmPrincipal.cdsChamadoscod_status.AsString := dmPrincipal.qryStatuscod_status.AsString;
                         edtNomeStatus.Text := dmPrincipal.qryStatusdescricao_status.AsString;
                    end;
               end;
          end
          else
          begin
               edtCodStatus.Text  := '1';
               dmPrincipal.cdsChamadoscod_status.AsString := '1';
               edtNomeStatus.Text := 'AGUARDANDO ATENDIMENTO' ;
          end;
     end;
     {if dsChamado.State in [dsEdit] then
     begin
          if dmPrincipal.cdsChamadosdesc_status.AsString = 'AGUARDANDO ATENDIMENTO' then
          if (edtUserResp.Text <> '') and (edtUserResp.Text <> '0') then
          begin
               dmPrincipal.qryStatus.Close;
               dmPrincipal.qryStatus.Open;
               if dmPrincipal.qryStatus.Locate('descricao_status','ABERTO',[]) then
               begin
                    edtCodStatus.Text  := dmPrincipal.qryStatuscod_status.AsString;
                    dmPrincipal.cdsChamadoscod_status.AsString := dmPrincipal.qryStatuscod_status.AsString;
                    edtNomeStatus.Text := dmPrincipal.qryStatusdescricao_status.AsString;
               end;
          end
          else
          begin
               edtCodStatus.Text  := '1';
               dmPrincipal.cdsChamadoscod_status.AsString := '1';
               edtNomeStatus.Text := 'AGUARDANDO ATENDIMENTO' ;
          end;
     end;}

end;

procedure TfrmCadChamados.btnBuscaUsuarioClick(Sender: TObject);
var result : boolean;
begin
     if (edtUserResp.enabled  = false) or
        (edtUserResp.readonly = true)  then
          Exit;

     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConUsuarios <> nil then
          frmConUsuarios := nil;


     if (edtUserResp.Text <> '') then
          cod_usuario_zoom := strtoint(edtUserResp.Text);


     frmConUsuarios := TfrmConUsuarios.Create(Application);
     try
     begin
          frmConUsuarios.btnExporta.Enabled := True;
          frmConUsuarios.ShowModal();
     end
     finally
          frmConUsuarios.Free();
     end;
     frmConUsuarios := nil;

     if cancelou_zoom = false then
     begin
          edtUserResp.Text := dmPrincipal.cdsUsuariocod_usuario.AsString;
          dmPrincipal.cdsChamadoscod_usuario_resp.AsString := edtUserResp.Text;
     end;

     edtUserResp.OnExit(Self);
     edtUserResp.SetFocus;

end;

procedure TfrmCadChamados.mmoDescChamadoKeyPress(Sender: TObject;
  var Key: Char);
begin
     //key:=Upcase(key);
     //if (Key = #13) then
          //key := #0;
end;

procedure TfrmCadChamados.enviaEmail;
var
     conectar  : integer;
     conectado : Boolean;
begin
     ShowMessage('Aguarde...Enviando e-mail para a troca de respons?vel!');
     Screen.Cursor := crHourGlass;
     dmPrincipal.qryParametros.Close;
     dmPrincipal.qryParametros.SQL.Text := 'select * from parametros_gerais order by parametro';
     dmPrincipal.qryParametros.open;
     dmPrincipal.cdsParametros.Close;
     dmPrincipal.cdsParametros.Open;
  //====== conex?o ====//
     IdEnvio.Host := dmPrincipal.cdsParametrosserv_saida_email.AsString;
     IdEnvio.Username := dmPrincipal.cdsParametrosusuario_saida.AsString;
     IdEnvio.Port := StrToInt(dmPrincipal.cdsParametrosporta_serv_saida.AsString);
     IdEnvio.Password := dmPrincipal.cdsParametrossenha_saida.AsString;
     IdEnvio.AuthType := satDefault;


     if IdEnvio.Connected then
          IdEnvio.Disconnect;
     conectar := 0;
     conectado := false;
     while conectar < 10 do
     begin
          try
               IdEnvio.Connect;
               conectar := 20;
               conectado := true;
          except
               conectar := conectar + 1;
          end;
     end;

     dmPrincipal.qryUsuarios.Close;
     dmPrincipal.qryUsuarios.SQL.Text := 'select * from usuario order by cod_usuario';
     dmPrincipal.qryUsuarios.open;
     if dmPrincipal.qryUsuarios.Locate('cod_usuario',dmPrincipal.cdsChamadoscod_usuario_resp.AsInteger,[]) then
          IdMsgTrocaResp.Recipients.EMailAddresses := dmPrincipal.qryUsuariosmail.AsString ;

     if conectado = false then
     begin
          ShowMessage('N?o foi poss?vel conectar ao provedor de e-mail !'+#13+
                     'Por favor, envie e-mail manualmente para: '+dmPrincipal.qryUsuariosmail.AsString);
          Exit;
     end;

     try

     IdMsgTrocaResp.Subject   := 'Oracullos - Troca de Respons?vel pelo Chamado';
     IdMsgTrocaResp.Body.Text := 'C?digo do Chamado: '+dmPrincipal.cdsChamadoscod_chamado.AsString+#13+
                                   'Descri??o do chamado: '+dmPrincipal.cdsChamadosdescricao_chamado.AsString+#13+
                                   'Respons?vel anterior: '+nome_usuario_login+'. ';

     IdMsgTrocaResp.Priority              := mpHigh;
     IdMsgTrocaResp.From.Name             := nome_usuario_login;
     IdMsgTrocaResp.From.Address          := dmPrincipal.cdsParametrosemail_envio.AsString;
     //IdMsgTrocaResp.ReceiptRecipient.Text := IdMsgTrocaResp.From.text;

     Application.ProcessMessages;
     try
          IdEnvio.Send(IdMsgTrocaResp);
     except
          begin
               ShowMessage('N?o foi poss?vel efetuar o envio do e-mail !'+#13+
                           'Por favor, envie e-mail manualmente para: '+dmPrincipal.qryUsuariosmail.AsString);
               Exit;
          end;
     end;
     ShowMessage('E-mail enviado com sucesso !!');
     Close;
  finally
     begin
          IdEnvio.Disconnect;
          Screen.Cursor := crDefault;
     end;
  end;
end;

procedure TfrmCadChamados.enviaEmailCliente;
var
     conectar   : integer;
     conectado  : Boolean;
     sprotocolo : string;
     i : integer;
     senha, senhainv, decrip : String;
     attach : TIdAttachment;
begin
     dmPrincipal.qryCategoria.Close;
     dmPrincipal.qryCategoria.SQL.Text := 'select * from categoria_chamado order by cod_categoria';
     dmPrincipal.qryCategoria.Open;
     if dmPrincipal.qryCategoria.Locate('cod_categoria',dmPrincipal.cdsChamadoscod_categoria.AsInteger,[]) then
     begin
          if dmPrincipal.qryCategoriaenvia_email.AsString = 'S' then
          begin
               if not Assigned(frmProcedimentoAdotado) then
                    frmProcedimentoAdotado := TfrmProcedimentoAdotado.Create(Self);
               try
                    frmProcedimentoAdotado.ShowModal;
               finally
                    frmProcedimentoAdotado.Free;
               end;
               frmProcedimentoAdotado := nil;

               ShowMessage('Aguarde...Enviando e-mail de finaliza??o de atendimento para o cliente!');
               Screen.Cursor := crHourGlass;
               sprotocolo := '';
               dmPrincipal.qryUsuarios.Close;
               dmPrincipal.qryUsuarios.SQL.Text := 'select * from usuario order by cod_usuario';
               dmPrincipal.qryUsuarios.open;
               if dmPrincipal.qryUsuarios.Locate('cod_usuario',dmPrincipal.cdsChamadoscod_usuario_resp.AsInteger,[]) then
               begin
                    senha    := dmPrincipal.qryUsuariossenha_conta.AsString;
                    senhainv := '';
                    i :=0;
                    for i := length(senha) downto 1 do
                         senhainv := senhainv + copy(senha,i,1);

                    senha := senhainv;
                    decrip              := frmPrincipal.desencrip(senha);
                    IdEnvioCli.Host     := dmPrincipal.qryUsuarioshost_mail.AsString;
                    IdEnvioCli.Username := dmPrincipal.qryUsuariosusuario_conta.AsString;
                    IdEnvioCli.Port     := StrToInt(dmPrincipal.qryUsuariosporta_serv_saida.AsString);
                    IdEnvioCli.Password := decrip;
                    IdEnvioCli.AuthType := satDefault;

                    if IdEnvioCli.Connected then
                         IdEnvioCli.Disconnect;
                    conectar  := 0;
                    conectado := false;
                    while conectar < 10 do
                    begin
                         try
                              IdEnvioCli.Connect;
                              conectar  := 20;
                              conectado := true;
                         except
                              conectar := conectar + 1;
                         end;
                    end;
               end;
               dmPrincipal.qryClientes.Close;
               dmPrincipal.qryClientes.SQL.Text := 'select * from cliente order by cod_cliente';
               dmPrincipal.qryClientes.open;
               if dmPrincipal.qryClientes.Locate('cod_cliente',dmPrincipal.cdsChamadoscod_cliente.AsInteger,[]) then
                    IdMsg.Recipients.EMailAddresses := dmPrincipal.qryClientesmail.AsString+';'+dmPrincipal.cdsChamadosemail_solicitante.AsString+
                                                       ';'+dmPrincipal.cdsChamadosemail_solicitante_outro.AsString;

               if conectado = false then
               begin
                    ShowMessage('N?o foi poss?vel conectar ao provedor de e-mail !'+#13+
                              'Por favor, envie e-mail manualmente para: '+dmPrincipal.qryClientesmail.AsString);
                    Exit;
               end;

               try
                    sprotocolo      := FormatDateTime('yyyymmdd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
                    IdMsg.Subject   := 'Oracullos - Finaliza??o de Atendimento';
                    IdMsg.Body.Text := '[Oracullos - Mensagem Autom?tica]'+#13+#13+
                                       'Caro Cliente '+dmPrincipal.cdsChamadosnome_cliente.AsString+'.'+#13+
                                       'Informamos a finaliza??o do chamado N?: '+sprotocolo+dmPrincipal.cdsChamadoscod_chamado.AsString+'.'+#13+
                                       'Data e Hora de Abertura: '+dmPrincipal.cdsChamadosdata_chamado.AsString+' - '+dmPrincipal.cdsChamadoshora_chamado.AsString+ #13+
                                       'Solicitante: '+dmPrincipal.cdsChamadosfuncionario_emp.AsString+#13+
                                       'Solicita??o: '+dmPrincipal.cdsChamadossolicitacao.AsString+#13+
                                       'Data e Hora de Finaliza??o: '+dmPrincipal.cdsChamadosdata_final.AsString+' - '+dmPrincipal.cdsChamadoshora_final.AsString+'.'+#13+
                                       'Atendente : '+nome_usuario_login+#13+
                                       'Procedimento Adotado: '+Proc_Adotado;

                    if (sArq <> '') then
                    begin
                         attach := TIdAttachment.Create(IdMsg.MessageParts);
                         attach.FileName := sArq;

                    end;
                    IdMsg.Priority              := mpHigh;
                    IdMsg.From.Name             := nome_usuario_login;
                    IdMsg.From.Address          := dmPrincipal.qryUsuariosmail.AsString;
                    IdMsg.ReceiptRecipient.Text := IdMsg.From.text;

                    Application.ProcessMessages;
                    try
                         IdEnvioCli.Send(IdMsg);
                    except
                         begin
                              ShowMessage('N?o foi poss?vel efetuar o envio do e-mail !'+#13+
                                        'Por favor, envie e-mail manualmente para: '+dmPrincipal.qryClientesmail.AsString);
                              Exit;
                         end;
                    end;

                    ShowMessage('E-mail enviado com sucesso !!');
                    Close;
               finally
                    begin
                         IdEnvioCli.Disconnect;
                         Screen.Cursor := crDefault;
                    end;
               end;
          end
          else
          begin
               if not Assigned(frmProcedimentoAdotado) then
                    frmProcedimentoAdotado := TfrmProcedimentoAdotado.Create(Self);
               try
                    frmProcedimentoAdotado.ShowModal;
               finally
                    frmProcedimentoAdotado.Free;
               end;
               frmProcedimentoAdotado := nil;
          end;
     end;

end;

procedure TfrmCadChamados.enviaEmailCobranca;
var
     conectar   : integer;
     conectado  : Boolean;
     sprotocolo : string;
     i : integer;
     senha, senhainv, decrip : String;
     attach : TIdAttachment;
begin
     if (tempoCobranca <> '') and (tempoCobranca <> '0,00') then
     begin
          ShowMessage('Aguarde...Enviando e-mail de notifica??o de cobran?a!');
          Screen.Cursor := crHourGlass;
          sprotocolo := '';
          dmPrincipal.qryUsuarios.Close;
          dmPrincipal.qryUsuarios.SQL.Text := 'select * from usuario order by cod_usuario';
          dmPrincipal.qryUsuarios.open;
          if dmPrincipal.qryUsuarios.Locate('cod_usuario',dmPrincipal.cdsChamadoscod_usuario_resp.AsInteger,[]) then
          begin
               senha    := dmPrincipal.qryUsuariossenha_conta.AsString;
               senhainv := '';
               i :=0;
               for i := length(senha) downto 1 do
                    senhainv := senhainv + copy(senha,i,1);

               senha := senhainv;
               decrip              := frmPrincipal.desencrip(senha);
               IdEnvioCli.Host     := dmPrincipal.qryUsuarioshost_mail.AsString;
               IdEnvioCli.Username := dmPrincipal.qryUsuariosusuario_conta.AsString;
               IdEnvioCli.Port     := StrToInt(dmPrincipal.qryUsuariosporta_serv_saida.AsString);
               IdEnvioCli.Password := decrip;
               IdEnvioCli.AuthType := satDefault;

               if IdEnvioCli.Connected then
                    IdEnvioCli.Disconnect;
               conectar  := 0;
               conectado := false;
               while conectar < 10 do
               begin
                    try
                         IdEnvioCli.Connect;
                         conectar  := 20;
                         conectado := true;
                    except
                         conectar := conectar + 1;
                    end;
               end;
          end;
          dmPrincipal.qryParametros.Close;
          dmPrincipal.qryParametros.SQL.Text := 'select * from parametros_gerais order by parametro';
          dmPrincipal.qryParametros.open;

          IdMsg.Recipients.EMailAddresses := dmPrincipal.qryParametrosemail_cobranca.AsString;

          if conectado = false then
          begin
               ShowMessage('N?o foi poss?vel conectar ao provedor de e-mail !'+#13+
                              'Por favor, envie e-mail manualmente para: '+dmPrincipal.qryParametrosemail_cobranca.AsString);
               Exit;
          end;

          try
               sprotocolo      := FormatDateTime('yyyymmdd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
               IdMsg.Subject   := 'Oracullos - Notifica??o de tempo para cobran?a';
               IdMsg.Body.Text := '[Oracullos - Mensagem Autom?tica]'+#13+#13+
                                  'Cliente: '+dmPrincipal.cdsChamadosnome_cliente.AsString+'.'+#13+
                                  'Tempo para cobran?a (em horas): '+tempoCobranca+#13+
                                  'Informamos a finaliza??o do chamado N?: '+sprotocolo+dmPrincipal.cdsChamadoscod_chamado.AsString+'.'+#13+
                                  'Data e Hora de Abertura: '+dmPrincipal.cdsChamadosdata_chamado.AsString+' - '+dmPrincipal.cdsChamadoshora_chamado.AsString+ #13+
                                  'Solicitante: '+dmPrincipal.cdsChamadosfuncionario_emp.AsString+#13+
                                  'Solicita??o: '+dmPrincipal.cdsChamadossolicitacao.AsString+#13+
                                  'Data e Hora de Finaliza??o: '+dmPrincipal.cdsChamadosdata_final.AsString+' - '+dmPrincipal.cdsChamadoshora_final.AsString+'.'+#13+
                                  'Atendente : '+nome_usuario_login+#13+
                                  'Procedimento Adotado: '+Proc_Adotado;

               if (sArq <> '') then
               begin
                    attach := TIdAttachment.Create(IdMsg.MessageParts);
                    attach.FileName := sArq;

               end;
               IdMsg.Priority              := mpHigh;
               IdMsg.From.Name             := nome_usuario_login;
               IdMsg.From.Address          := dmPrincipal.qryUsuariosmail.AsString;
               IdMsg.ReceiptRecipient.Text := IdMsg.From.text;

               Application.ProcessMessages;
               try
                    IdEnvioCli.Send(IdMsg);
               except
                    begin
                         ShowMessage('N?o foi poss?vel efetuar o envio do e-mail !'+#13+
                              'Por favor, envie e-mail manualmente para: '+dmPrincipal.qryParametrosemail_cobranca.AsString);
                         Exit;
                    end;
               end;

               ShowMessage('E-mail enviado com sucesso !!');
               Close;
          finally
               begin
               IdEnvioCli.Disconnect;
               Screen.Cursor := crDefault;
               end;
          end;
     end;
end;

procedure TfrmCadChamados.edtDtFinalExit(Sender: TObject);
var data : TDateTime;
    data1 : string;
    result : string;
begin
     result := frmPrincipal.Formata_Data(edtDtFinal.Text);
     if result <> '' then
          edtDtFinal.Text := result;
     try
          StrToDate(edtDtFinal.Text)
     except
          MessageDlg('Informe uma data v?lida', mtError, [mbOk], 0);
          edtDtFinal.SetFocus;
          Abort();
     end;

end;


procedure TfrmCadChamados.edtDataChange(Sender: TObject);
begin
     if dsChamado.State in [dsInsert] then
          edtDataPrazo.Date := edtData.Date;

end;

procedure TfrmCadChamados.edtCodClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
         btnBuscaCliente.Click();
end;

procedure TfrmCadChamados.edtCodCategoriaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
         btnBuscaCategoria.Click();
end;

procedure TfrmCadChamados.edtUserRespKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
         btnBuscaUsuario.Click();
end;

procedure TfrmCadChamados.edtCodStatusKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
         btnBuscaStatus.Click();
end;

procedure TfrmCadChamados.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmCadChamados.btnAbrirClick(Sender: TObject);
var
     arq : string;
begin
     opendialog.FileName := edtCaminhoArq.Text;
     OpenDialog.InitialDir := opendialog.FileName;
     if OpenDialog.Execute then
     begin
          arq := opendialog.FileName;
          dmPrincipal.cdsChamadoscaminho_arq.AsString := arq;
     end;

end;

procedure TfrmCadChamados.edtHoraFinalExit(Sender: TObject);
var
     horaini       : integer;
     horafim       : integer;
     minini        : integer;
     minfim        : integer;
     HoraTotal     : Currency;
     mintohoraIni  : Currency;
     mintohoraFim  : Currency;
     TotalIni      : Currency;
     TotalFim      : Currency;
begin
     if (edthora.Text <> '  :  ') and (edtHoraFinal.Text <> '  :  ') and (DateToStr(edtData.date) = edtDtFinal.Text) then
     begin
          horaini      := StrToInt(copy(edthora.text,1,2));
          minini       := StrToInt(copy(edthora.text,4,2));
          mintohoraIni := (minini / 60);
          TotalIni     := (mintohoraIni + horaini);

          horafim      := StrToInt(copy(edtHoraFinal.text,1,2));
          minfim       := StrToInt(copy(edtHoraFinal.text,4,2));
          mintohoraFim := (minfim / 60);
          TotalFim     := (mintohoraFim + horafim);
          if (TotalIni <= TotalFim) then
          begin
               HoraTotal     := (TotalFim - TotalIni);
               //==== Arredonda para duas casas decimais =====//
               HoraTotal     := RoundTo(HoraTotal,-2);
               edtTempo.Text := CurrToStr(HoraTotal);
          end
          else
          begin
               ShowMessage('Hora inicial do chamado ? maior que a hora de finaliza??o. Por favor, verifique!');
               edtHoraFinal.SetFocus;
               Abort;
          end;
     end
     else
          edtTempo.text := '0';

end;

procedure TfrmCadChamados.enviaEmailAbertura;
var
     text :TIdText;
     anexo :TIdAttachment;
     conectar   : integer;
     conectado  : Boolean;
     sprotocolo : string;
     i : integer;
     senha, senhainv, decrip : String;
begin
     dmPrincipal.qryCategoria.Close;
     dmPrincipal.qryCategoria.SQL.Text := 'select * from categoria_chamado order by cod_categoria';
     dmPrincipal.qryCategoria.Open;
     if dmPrincipal.qryCategoria.Locate('cod_categoria',dmPrincipal.cdsChamadoscod_categoria.AsInteger,[]) then
     begin
          if dmPrincipal.qryCategoriaenvia_email.AsString = 'S' then
          begin
               ShowMessage('Aguarde...Enviando e-mail de abertura de atendimento para o cliente!');
               Screen.Cursor := crHourGlass;
               sprotocolo := '';
               dmPrincipal.qryUsuarios.Close;
               dmPrincipal.qryUsuarios.SQL.Text := 'select * from usuario order by cod_usuario';
               dmPrincipal.qryUsuarios.open;
               if dmPrincipal.qryUsuarios.Locate('cod_usuario',dmPrincipal.cdsChamadoscod_usuario_resp.AsInteger,[]) then
               begin
                    senha    := dmPrincipal.qryUsuariossenha_conta.AsString;
                    senhainv := '';
                    i :=0;
                    for i := length(senha) downto 1 do
                         senhainv := senhainv + copy(senha,i,1);

                    senha := senhainv;
                    decrip              := frmPrincipal.desencrip(senha);
                    IdEnvioCli.Host     := dmPrincipal.qryUsuarioshost_mail.AsString;
                    IdEnvioCli.Username := dmPrincipal.qryUsuariosusuario_conta.AsString;
                    IdEnvioCli.Port     := StrToInt(dmPrincipal.qryUsuariosporta_serv_saida.AsString);
                    IdEnvioCli.Password := decrip;
                    IdEnvioCli.AuthType := satDefault;

                    if IdEnvioCli.Connected then
                         IdEnvioCli.Disconnect;
                    conectar  := 0;
                    conectado := false;
                    while conectar < 5 do
                    begin
                         try
                              IdEnvioCli.Connect;
                              conectar  := 10;
                              conectado := true;
                         except
                              conectar := conectar + 1;
                         end;
                    end;
               end;
               dmPrincipal.qryClientes.Close;
               dmPrincipal.qryClientes.SQL.Text := 'select * from cliente order by cod_cliente';
               dmPrincipal.qryClientes.open;
               if dmPrincipal.qryClientes.Locate('cod_cliente',dmPrincipal.cdsChamadoscod_cliente.AsInteger,[]) then
                    IdMsg.Recipients.EMailAddresses := dmPrincipal.qryClientesmail.AsString+';'+dmPrincipal.cdsChamadosemail_solicitante.AsString+
                                                       ';'+dmPrincipal.cdsChamadosemail_solicitante_outro.AsString;;

               if conectado = false then
               begin
                    ShowMessage('N?o foi poss?vel conectar ao provedor de e-mail !'+#13+
                              'Por favor, envie e-mail manualmente para: '+dmPrincipal.qryClientesmail.AsString);
                    Exit;
               end;

               try
                    sprotocolo      := FormatDateTime('yyyymmdd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
                    IdMsg.Subject   := 'Oracullos - Abertura de Atendimento';
                    IdMsg.Body.Text := '[Oracullos - Mensagem Autom?tica]'+#13+#13+
                                       'Caro Cliente '+dmPrincipal.cdsChamadosnome_cliente.AsString+'.'+#13+
                                       'Informamos a abertura do chamado N?: '+sprotocolo+dmPrincipal.cdsChamadoscod_chamado.AsString+'.'+#13+
                                       'Data e Hora de Abertura: '+dmPrincipal.cdsChamadosdata_chamado.AsString+' - '+dmPrincipal.cdsChamadoshora_chamado.AsString+'.'+#13+
                                       'Origem do Chamado: '+dmPrincipal.cdsChamadosorigem_chamado.AsString+#13+
                                       'Solicitante: '+dmPrincipal.cdsChamadosfuncionario_emp.AsString+#13+
                                       'Solicita??o: '+dmPrincipal.cdsChamadossolicitacao.AsString;

                    IdMsg.Priority              := mpHigh;
                    IdMsg.From.Name             := nome_usuario_login;
                    IdMsg.From.Address          := dmPrincipal.qryUsuariosmail.AsString;
                    IdMsg.ReceiptRecipient.Text := IdMsg.From.text;

                    Application.ProcessMessages;
                    try
                         IdEnvioCli.Send(IdMsg);
                    except
                         begin
                              ShowMessage('N?o foi poss?vel efetuar o envio do e-mail !'+#13+
                                        'Por favor, envie e-mail manualmente para: '+dmPrincipal.qryClientesmail.AsString);
                              Exit;
                         end;
                    end;

                    ShowMessage('E-mail enviado com sucesso !!');
                    Close;
               finally
                    begin
                         IdEnvioCli.Disconnect;
                         Screen.Cursor := crDefault;
                    end;
               end;
          end;
     end;

end;

procedure TfrmCadChamados.edtBuscaEmailClick(Sender: TObject);
begin
     frmBuscaEmail := TfrmBuscaEmail.create(frmBuscaEmail);
     try
          frmBuscaEmail.ShowModal;
     finally
          if EmailSelect <> '' then
               dmPrincipal.cdsChamadosemail_solicitante.AsString := EmailSelect;
          frmBuscaEmail.Free;
     end;
          frmBuscaEmail := nil;
end;

procedure TfrmCadChamados.edtemail_solicitanteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
         edtBuscaEmail.Click();
end;

procedure TfrmCadChamados.btnBuscaCliUsuarioClick(Sender: TObject);
var result : boolean;
begin
     if edtNomeCliente.Text <> '' then
     begin
          chamou_zoom := true;
          cancelou_zoom := false;
          if frmClienteUsuario <> nil then
               frmClienteUsuario := nil;

          if (edtUsuarioCli.Text <> '') then
          cod_cliUsuario_zoom := strtoint(edtUsuarioCli.Text);

          frmClienteUsuario := TfrmClienteUsuario.Create(Application);
          try
          begin
               frmClienteUsuario.btnExporta.Enabled := True;
               frmClienteUsuario.ShowModal();
          end
          finally
               frmClienteUsuario.Free();
          end;
          frmClienteUsuario := nil;

          if cancelou_zoom = false then
          begin
               edtsolicChamado.Text := dmPrincipal.cdsCliente_usuarionome_usuario.AsString;
               dmPrincipal.cdsChamadosfuncionario_emp.AsString := edtsolicChamado.Text;

               edtUsuarioCli.Text   := dmPrincipal.cdsCliente_usuariocod_usuario.AsString;
               dmPrincipal.cdsChamadoscod_usuario_cli.AsString := edtUsuarioCli.Text;

               edtemail_solicitante.Text := dmPrincipal.cdsCliente_usuarioemail.AsString;
               dmPrincipal.cdsChamadosemail_solicitante.AsString := edtemail_solicitante.Text;

          end;
         
     end;

end;

procedure TfrmCadChamados.edtUsuarioCliExit(Sender: TObject);
begin
     if (edtUsuarioCli.Text <> '')  and
        (edtUsuarioCli.Text <> '0') and
        (edtCodCliente.Text <> '') and
        (edtCodCliente.Text <> '0')  then
     begin
          dmPrincipal.qryCliente_usuario.Close();
          dmPrincipal.qryCliente_usuario.sql.text := 'select * from cliente_usuario where cod_cliente = '+edtCodCliente.Text+
                                                     ' and ativo = ''S'''+
                                                     ' order by cod_usuario';
          dmPrincipal.qryCliente_usuario.Open();
          if dmPrincipal.qryCliente_usuario.Locate('cod_usuario',edtUsuarioCli.Text,[]) then
          begin
               edtsolicChamado.Text      := dmPrincipal.qryCliente_usuarionome_usuario.AsString;
               edtemail_solicitante.Text := dmPrincipal.qryCliente_usuarioemail.AsString;
               dmPrincipal.cdsChamadosemail_solicitante.AsString := edtemail_solicitante.Text;
          end
          else
          begin
               edtsolicChamado.Text      := '';
               edtemail_solicitante.Text := '';
               dmPrincipal.cdsChamadosemail_solicitante.AsString :=  edtemail_solicitante.Text;
          end;
     end
     else
     begin
          edtsolicChamado.Text      := '';
          edtemail_solicitante.Text := '';
          dmPrincipal.cdsChamadosemail_solicitante.AsString :=  edtemail_solicitante.Text;
     end;
end;

procedure TfrmCadChamados.edtUsuarioCliKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
         btnBuscaCliUsuario.Click();
end;

end.

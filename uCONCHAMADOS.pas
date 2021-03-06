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
unit uCONCHAMADOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, ComCtrls, Grids, DBGrids,
  FMTBcd, SqlExpr, ActnList, DBCtrls, IdMessage, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient, IdPOP3,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Mask, IdSMTP, Menus, DBClient,
  Provider, IdAttachment, IdText, IdSMTPBase, IdExplicitTLSClientServerBase;

type
  TfrmConChamados = class(TForm)
    pnlBotoes: TPanel;
    btnPrimeiro: TSpeedButton;
    btnAnterior: TSpeedButton;
    btnProximo: TSpeedButton;
    btnUltimo: TSpeedButton;
    btnVisualiza: TSpeedButton;
    btnAdiciona: TSpeedButton;
    btnAltera: TSpeedButton;
    btnExclui: TSpeedButton;
    pnlOrdem: TPanel;
    edtOrdem: TEdit;
    edtIndice: TEdit;
    btnSair: TSpeedButton;
    dsChamado: TDataSource;
    PageControl1: TPageControl;
    tsChamados: TTabSheet;
    tsMovChamado: TTabSheet;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid: TcxGrid;
    cxGridDBTableView1cod_chamado: TcxGridDBColumn;
    cxGridDBTableView1cod_cliente: TcxGridDBColumn;
    cxGridDBTableView1cod_status: TcxGridDBColumn;
    cxGridDBTableView1cod_categoria: TcxGridDBColumn;
    cxGridDBTableView1nome_cliente: TcxGridDBColumn;
    cxGridDBTableView1desc_status: TcxGridDBColumn;
    cxGridDBTableView1desc_categoria: TcxGridDBColumn;
    cxGridDBTableView1data_chamado: TcxGridDBColumn;
    cxGridDBTableView1hora_chamado: TcxGridDBColumn;
    cxGridDBTableView1prazo_fim_chamdo: TcxGridDBColumn;
    cxGridDBTableView1nivel_prioridade: TcxGridDBColumn;
    cxGridDBTableView1descricao_chamado: TcxGridDBColumn;
    cxGridDBTableView1caminho_arq: TcxGridDBColumn;
    dsMovChamado: TDataSource;
    cxGridDBTableView1chamado_automatico: TcxGridDBColumn;
    cxGridDBTableView1nome_usuario_resp: TcxGridDBColumn;
    cxGridDBTableView1nome_usuario_abriu: TcxGridDBColumn;
    qryAdd: TSQLQuery;
    ActionList1: TActionList;
    acMovimentarChamado: TAction;
    qrytemp: TSQLQuery;
    qrytempcod_movimento: TIntegerField;
    qrytempcod_chamado: TIntegerField;
    qrytempcod_status: TIntegerField;
    qrytempdesc_status: TStringField;
    qrytempcod_usuario: TIntegerField;
    qrytempnome_usuario_resp: TStringField;
    qrytempnivel_prioridade: TStringField;
    qrytempdata_movimento: TDateField;
    qrytemptempo_gasto: TFMTBCDField;
    qrytempobservacao: TStringField;
    qrytempcod_usuario_mov: TIntegerField;
    qrytempnome_usuario_mov: TStringField;
    btnAtualiza: TBitBtn;
    acAtualiza: TAction;
    btnMovimento: TSpeedButton;
    SpeedButton1: TSpeedButton;
    acSolucao: TAction;
    cxGridDBTableView1funcionario_emp: TcxGridDBColumn;
    qryAtualChamado: TSQLQuery;
    qryAtualChamadocod_chamado: TIntegerField;
    qryAtualChamadocod_cliente: TIntegerField;
    qryAtualChamadocod_status: TIntegerField;
    qryAtualChamadocod_categoria: TIntegerField;
    qryAtualChamadonome_cliente: TStringField;
    qryAtualChamadodesc_status: TStringField;
    qryAtualChamadodesc_categoria: TStringField;
    qryAtualChamadodata_chamado: TDateField;
    qryAtualChamadohora_chamado: TTimeField;
    qryAtualChamadoprazo_fim_chamdo: TDateField;
    qryAtualChamadochamado_automatico: TStringField;
    qryAtualChamadonivel_prioridade: TStringField;
    qryAtualChamadodescricao_chamado: TStringField;
    qryAtualChamadocaminho_arq: TStringField;
    qryAtualChamadocod_usuario_resp: TIntegerField;
    qryAtualChamadonome_usuario_resp: TStringField;
    qryAtualChamadonome_usuario_abriu: TStringField;
    qryAtualChamadocod_usuario_abriu: TIntegerField;
    qryAtualChamadofuncionario_emp: TStringField;
    memoDescChamado: TDBMemo;
    Label1: TLabel;
    Panel1: TPanel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    cxGridDBTableView1origem_chamado: TcxGridDBColumn;
    cxGridDBTableView1tempo_gasto: TcxGridDBColumn;
    cxGridDBTableView1data_final: TcxGridDBColumn;
    cxGridDBTableView1hora_final: TcxGridDBColumn;
    btnEMail: TBitBtn;
    IdPOP31: TIdPOP3;
    IdMessage1: TIdMessage;
    qryemail: TSQLQuery;
    qryemailcod_cliente: TIntegerField;
    qryemailemail_1: TStringField;
    qryemailemail_2: TStringField;
    qryemailemail_3: TStringField;
    qryemailemail_4: TStringField;
    qryemailemail_5: TStringField;
    qryemailnome: TStringField;
    qryCamArq: TSQLQuery;
    qryemailemail_6: TStringField;
    qryemailemail_7: TStringField;
    qryemailemail_8: TStringField;
    qryTempUsuario: TSQLQuery;
    qryTempUsuariocod_usuario: TIntegerField;
    qryTempUsuariologin: TStringField;
    qryTempUsuariosenha: TStringField;
    qryTempUsuariocod_area: TIntegerField;
    qryTempUsuariodefinicao_usuario: TStringField;
    qryTempUsuariomail: TStringField;
    qryTempUsuariopermite_ver_todos_chmados: TStringField;
    qryTempUsuarioativo: TStringField;
    qryTempUsuarionome_usuario: TStringField;
    qryTempUsuariohost_mail: TStringField;
    qryTempUsuariosenha_conta: TStringField;
    ProgressBar1: TProgressBar;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1cod_movimento: TcxGridDBColumn;
    cxGrid1DBTableView1cod_chamado: TcxGridDBColumn;
    cxGrid1DBTableView1cod_status: TcxGridDBColumn;
    cxGrid1DBTableView1desc_status: TcxGridDBColumn;
    cxGrid1DBTableView1nome_usuario_resp: TcxGridDBColumn;
    cxGrid1DBTableView1nivel_prioridade: TcxGridDBColumn;
    cxGrid1DBTableView1data_movimento: TcxGridDBColumn;
    cxGrid1DBTableView1tempo_gasto: TcxGridDBColumn;
    cxGrid1DBTableView1observacao: TcxGridDBColumn;
    cxGrid1DBTableView1cod_usuario_mov: TcxGridDBColumn;
    cxGrid1DBTableView1nome_usuario_mov: TcxGridDBColumn;
    cxGrid1DBTableView1data_fim: TcxGridDBColumn;
    cxGrid1DBTableView1hora_inic: TcxGridDBColumn;
    cxGrid1DBTableView1hora_fim: TcxGridDBColumn;
    cxGrid1DBTableView1gera_compromisso: TcxGridDBColumn;
    cxGridDBTableView1gera_compromisso: TcxGridDBColumn;
    tsCompromissos: TTabSheet;
    Panel2: TPanel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dsCompromissos: TDataSource;
    cxGrid2DBTableView1cod_cliente: TcxGridDBColumn;
    cxGrid2DBTableView1nome_cliente: TcxGridDBColumn;
    cxGrid2DBTableView1solicitante: TcxGridDBColumn;
    cxGrid2DBTableView1cod_usuario: TcxGridDBColumn;
    cxGrid2DBTableView1nome_usuario: TcxGridDBColumn;
    cxGrid2DBTableView1data: TcxGridDBColumn;
    cxGrid2DBTableView1hora: TcxGridDBColumn;
    cxGrid2DBTableView1local: TcxGridDBColumn;
    cxGrid2DBTableView1observacao: TcxGridDBColumn;
    cxGrid2DBTableView1cod_compromisso: TcxGridDBColumn;
    cxGrid2DBTableView1finalizado: TcxGridDBColumn;
    cxGrid2DBTableView1cod_chamado: TcxGridDBColumn;
    btnGerarReport: TBitBtn;
    btnVisualizarReport: TBitBtn;
    Panel3: TPanel;
    rdEncerrados: TRadioButton;
    rdNaoEncerrados: TRadioButton;
    rdTodos: TRadioButton;
    rdAguardandoAtend: TRadioButton;
    cxGridDBTableView1tempo_cobranca: TcxGridDBColumn;
    cxGridDBTableView1reincidencia: TcxGridDBColumn;
    cxGridDBTableView1hora_gravacao: TcxGridDBColumn;
    cxGridDBTableView1data_gravacao: TcxGridDBColumn;
    cxGrid1DBTableView1data_gravacao: TcxGridDBColumn;
    cxGrid1DBTableView1hora_gravacao: TcxGridDBColumn;
    cxGridDBTableView1solicitacao: TcxGridDBColumn;
    cxGridDBTableView1proc_adotado: TcxGridDBColumn;
    cxGridDBTableView1gera_cronograma_alt: TcxGridDBColumn;
    tsCronograma: TTabSheet;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    dscronograma: TDataSource;
    Panel4: TPanel;
    cxGrid3DBTableView1cod_chamado: TcxGridDBColumn;
    cxGrid3DBTableView1dt_prev_entrega: TcxGridDBColumn;
    cxGrid3DBTableView1tempo_prev_alteracao: TcxGridDBColumn;
    cxGrid3DBTableView1nome_cliente: TcxGridDBColumn;
    cxGrid3DBTableView1desc_modulo: TcxGridDBColumn;
    cxGrid3DBTableView1nome_programa: TcxGridDBColumn;
    cxGrid3DBTableView1desc_alteracao_prevista: TcxGridDBColumn;
    cxGrid3DBTableView1desc_alteracao_efetivada: TcxGridDBColumn;
    cxGrid3DBTableView1finalizado: TcxGridDBColumn;
    cxGrid3DBTableView1nome_usr_responsavel: TcxGridDBColumn;
    cxGrid3DBTableView1desc_categoria: TcxGridDBColumn;
    cxGrid3DBTableView1dt_finalizacao: TcxGridDBColumn;
    cxGrid3DBTableView1Hr_finalizacao: TcxGridDBColumn;
    cxGrid3DBTableView1tempo_gasto: TcxGridDBColumn;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    btncronograma: TBitBtn;
    cxGrid3DBTableView1data_solicitacao: TcxGridDBColumn;
    Label3: TLabel;
    Label4: TLabel;
    cxGrid1DBTableView1gera_cronograma_alt: TcxGridDBColumn;
    edtCliente: TDBEdit;
    Timer: TTimer;
    Label5: TLabel;
    mmoProcedimento: TDBMemo;
    Label6: TLabel;
    btnExporta: TSpeedButton;
    cxGridDBTableView1km: TcxGridDBColumn;
    DBMemo4: TDBMemo;
    Label7: TLabel;
    qryCliUsuario: TSQLQuery;
    qryCliUsuariocod_usuario: TIntegerField;
    qryCliUsuariocod_cliente: TIntegerField;
    qryCliUsuarionome_cliente: TStringField;
    qryCliUsuarionome_usuario: TStringField;
    qryCliUsuariopermissao_suporte: TStringField;
    qryCliUsuariopermissao_abrir_chamado: TStringField;
    qryCliUsuarioativo: TStringField;
    qryCliUsuarioemail: TStringField;
    BitBtn1: TBitBtn;
    IdEnvioCli: TIdSMTP;
    IdMsg: TIdMessage;
    popChamados: TPopupMenu;
    Reenviaremail1: TMenuItem;
    cxGridDBTableView1data_ultima_movimentacao: TcxGridDBColumn;
    cxGrid1DBTableView1reabertura: TcxGridDBColumn;
    qrymov_chamado: TSQLQuery;
    qrymov_chamadocod_movimento: TIntegerField;
    qrymov_chamadocod_chamado: TIntegerField;
    qrymov_chamadodata_chamado: TDateField;
    qrymov_chamadoreabertura: TStringField;
    qrymov_chamadodata_movimento: TDateField;
    qrymov_chamadohora_inic: TTimeField;
    qrymov_chamadocod_usuario: TIntegerField;
    ReenviaremaildeNotificaodeCobrana1: TMenuItem;
    procedure tsMovChamadoShow(Sender: TObject);
    //procedure btnMovimentoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnAdicionaClick(Sender: TObject);
    procedure btnAlteraClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure btnVisualizaClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure edtOrdemChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acMovimentarChamadoExecute(Sender: TObject);
    procedure acAtualizaExecute(Sender: TObject);
    procedure acSolucaoExecute(Sender: TObject);
    procedure btnEMailClick(Sender: TObject);
    procedure cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure tsCompromissosShow(Sender: TObject);
    procedure btnGerarReportClick(Sender: TObject);
    procedure btnVisualizarReportClick(Sender: TObject);
    procedure cxGrid2DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView1EditValueChanged(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
    procedure cxGridDBTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure tsCronogramaShow(Sender: TObject);
    procedure btncronogramaClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure btnExportaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Reenviaremail1Click(Sender: TObject);
    procedure ReenviaremaildeNotificaodeCobrana1Click(Sender: TObject);

  private
    procedure TrimAppMemorySize;
    procedure enviaEmailCliente;
    procedure enviaEmailAbertura;
    procedure enviaEmailReabertura;
    { Private declarations }
  public
     ordem_final : String;
     ordem_ant   : String;
     carac_pesq  : String;
     sdata_chamado : string;
     function on_change(texto,indice,ordem_final : String): Boolean;
  end;

var
  frmConChamados: TfrmConChamados;
  sReabrir : string;
implementation

uses DTMPRINCIPAL, uMNTMOVIMENTOCHAMADO, uMNTCHAMADOS, uLOGIN,
  uCONBASECONHECIMENTO, uMNTCOMPCLIENTE, uMNTREPORTVISITAS, Math,
  uCRONOGRAMA_ALT, uPRINCIPAL, EMAIL_MOVIMENTACAO;

{$R *.dfm}

procedure TfrmConChamados.tsMovChamadoShow(Sender: TObject);
begin
     sdata_chamado := '';
     sdata_chamado := FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
     dmPrincipal.qryMovChamado.Close;
     dmPrincipal.qryMovChamado.SQL.Text := 'select * from movimento_chamado where cod_chamado = '+IntToStr(dmPrincipal.cdsChamadoscod_chamado.AsInteger)+
                                           ' and data_chamado = '+QuotedStr(sdata_chamado);
     dmPrincipal.qryMovChamado.Open;

     dmPrincipal.cdsMovChamado.Close;
     dmPrincipal.cdsMovChamado.Open;



end;

{procedure TfrmConChamados.btnMovimentoClick(Sender: TObject);
begin
     dmPrincipal.qryStatus.Close;
     dmPrincipal.qryStatus.Open;
     if dmPrincipal.qryStatus.Locate('cod_status',dmPrincipal.cdsChamadoscod_status.AsInteger,[]) then
     begin
          if dmPrincipal.qryStatusencerra_chamado.AsString = 'N' then
          if (dmPrincipal.cdsChamadoscod_usuario_resp.AsInteger = cod_usuario_login) or (dmPrincipal.cdsChamadoscod_usuario_resp.AsString = '') then
          begin
               dmPrincipal.qryMovChamado.Close;
               dmPrincipal.qryMovChamado.SQL.Text := 'select * from movimento_chamado where '+
                                                  ' cod_movimento    ='+ '-1'+
                                                  ' order by cod_movimento desc limit 1';
               dmPrincipal.qryMovChamado.Open;
               dmPrincipal.cdsMovChamado.Close;
               dmPrincipal.cdsMovChamado.Open;
               dmPrincipal.cdsMovChamado.Insert;
               if not Assigned(frmCadMovimentoChamado) then
                    frmCadMovimentoChamado := TfrmCadMovimentoChamado.Create(Application);
               try
                    frmCadMovimentoChamado.ShowModal;
               finally
                    frmCadMovimentoChamado.Free;
               end;
               frmCadMovimentoChamado := nil;
               Abort();
          end;
          if dmPrincipal.qryStatusencerra_chamado.AsString = 'S' then
               ShowMessage('Imposs?vel realizar movimenta??es. O chamado encontra-se encerrado !!')

          else if (dmPrincipal.cdsChamadoscod_usuario_resp.AsInteger <> cod_usuario_login) or (dmPrincipal.cdsChamadoscod_usuario_resp.AsString <> '')  then
               ShowMessage('Imposs?vel realizar movimenta??es.'+#13+'Usu?rio logado difere do usu?rio respons?vel pelo chamado !!'+#13+
               'O chamado est? atribu?do para '+dmPrincipal.cdsChamadosnome_usuario_resp.AsString+', somente este usu?rio pode movimentar o chamado!');

     end;
     cxGrid.SetFocus;
end;}

procedure TfrmConChamados.btnSairClick(Sender: TObject);
begin
     if chamou_zoom = true then
          cancelou_zoom := true;
     Close;
end;

procedure TfrmConChamados.btnAdicionaClick(Sender: TObject);
begin
     dmPrincipal.qryChamados.Close;
     dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where '+
                                         ' cod_chamado    ='+ '-1'+
                                         ' order by cod_chamado desc limit 1';
     dmPrincipal.qryChamados.Open;
     dmPrincipal.cdsChamados.Close;
     dmPrincipal.cdsChamados.Open;
     dmPrincipal.cdsChamados.Append;
     if not Assigned(frmCadChamados) then
          frmCadChamados := TfrmCadChamados.Create(Self);
     try
          frmCadChamados.ShowModal;
     finally
          frmCadChamados.Free;
     end;
     dmPrincipal.qryChamados.Refresh;
     dmPrincipal.cdsChamados.Refresh;
     frmCadChamados := nil;
     cxGrid.SetFocus;
end;

procedure TfrmConChamados.btnAlteraClick(Sender: TObject);
begin
     //dmPrincipal.qryStatus.Close;
     //dmPrincipal.qryStatus.Open;
     //if dmPrincipal.qryStatus.Locate('cod_status',dmPrincipal.cdsChamadoscod_status.AsInteger,[]) then
     //begin
          //if (dmPrincipal.qryStatusencerra_chamado.AsString = 'N') then
          //begin
               dmPrincipal.qryBloqueados.Close();
               dmPrincipal.qryBloqueados.Open();
               dmPrincipal.cdsBloqueados.Close();
               dmPrincipal.cdsBloqueados.Open();
               if dmPrincipal.cdsBloqueados.Locate('tabela;chave1;chave2;chave3;chave4;chave5',VarArrayOf(['chamado',IntToStr(dmPrincipal.cdsChamadoscod_chamado.AsInteger),
                                                       DateToStr(dmPrincipal.cdsChamadosdata_chamado.AsDateTime),'0','0','0']),[]) then
               begin
                    ShowMessage('Registro est? sendo alterado pelo usu?rio: '+dmPrincipal.cdsBloqueadoslogin_bloqueou.AsString);
                    Abort;
               end
               else
               begin
                    if dmPrincipal.cdsChamadoscod_chamado.Value <> 0 then
                    begin
                         if not Assigned(frmCadChamados) then
                              frmCadChamados := TfrmCadChamados.Create(Self);
                         try
                         begin
                              dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where cod_chamado = '+dmPrincipal.cdsChamadoscod_chamado.AsString+
                                                                  ' and data_chamado = '+QuotedStr(FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime));
                              dmPrincipal.cdsChamados.close;
                              dmPrincipal.cdsChamados.open;

                              dmPrincipal.cdsChamados.Edit;
                              frmCadChamados.ShowModal;
                         end;
                         finally
                              frmCadChamados.Free;
                         end;
                         frmCadChamados := nil;
                    end;
               end;
          //end
          //else
          //ShowMessage('O chamado n?o pode ser alterado, pois encontra-se encerrado!!');
     //end;

     cxGrid.SetFocus;
end;

procedure TfrmConChamados.FormShow(Sender: TObject);
var
     sUser : String;
begin
     tsChamados.Show;
     frmPrincipal.Timer_abrirConsulta.Enabled := false;

     sReabrir := '';
     if (definicao = 'ADMINISTRADOR') and (ver_todos = 'S') then
     begin
          dmPrincipal.qryChamados.Close;
          dmPrincipal.qryChamados.SQL.Text := 'select * from chamado order by cod_chamado';
          dmPrincipal.qryChamados.Open;
          dmPrincipal.cdsChamados.Close;
          dmPrincipal.cdsChamados.Open;
     end
     else if (definicao = 'ADMINISTRADOR') and (ver_todos = 'N') then
     begin
          dmPrincipal.qryChamados.Close;
          dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where'+
                                              ' (cod_usuario_resp = '+QuotedStr(IntToStr(cod_usuario_login))+
                                              ' or cod_usuario_abriu = '+QuotedStr(IntToStr(cod_usuario_login))+
                                              ' or cod_status = 1) order by cod_chamado';
          dmPrincipal.qryChamados.Open;
          dmPrincipal.cdsChamados.Close;
          dmPrincipal.cdsChamados.Open;
     end;

     if (definicao = 'GERENTE') and (ver_todos = 'S') then
     begin
          sUser  := '';
          qryTempUsuario.Close;
          qryTempUsuario.sql.Text := 'select * from usuario where cod_area = '+IntToStr(cod_setor_login);
          qryTempUsuario.Open;
          qryTempUsuario.First;
          while not qryTempUsuario.Eof do
          begin
               if qryTempUsuario.RecordCount = 1 then
                    sUser := qryTempUsuariocod_usuario.AsString;
               if qryTempUsuario.RecordCount > 1 then
               begin
                    if copy(sUser,1,1) <> ',' then
                    begin
                         sUser := sUser+','+qryTempUsuariocod_usuario.AsString;

                    end
                    else
                    begin
                         sUser := qryTempUsuariocod_usuario.AsString+sUser;

                    end;
               end;

               qryTempUsuario.Next;
          end;
          dmPrincipal.qryChamados.Close;
          dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where'+
                                              ' (cod_usuario_abriu in ('+(sUser)+')'+
                                              ' or cod_usuario_resp in ('+(sUser)+')'+
                                              ' or cod_status = 1) order by cod_chamado';
          dmPrincipal.qryChamados.Open;
          dmPrincipal.cdsChamados.Close;
          dmPrincipal.cdsChamados.Open;
     end
     else if (definicao = 'GERENTE') and (ver_todos = 'N') then
     begin
          dmPrincipal.qryChamados.Close;
          dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where'+
                                              ' (cod_usuario_resp = '+QuotedStr(IntToStr(cod_usuario_login))+
                                              ' or cod_usuario_abriu = '+QuotedStr(IntToStr(cod_usuario_login))+
                                              ' or cod_status = 1) order by cod_chamado';
          dmPrincipal.qryChamados.Open;
          dmPrincipal.cdsChamados.Close;
          dmPrincipal.cdsChamados.Open;
     end;


     if definicao = 'RECEBE E-MAIL' then
     begin
          dmPrincipal.qryChamados.Close;
          dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where '+
                                              'cod_status = 1 order by cod_chamado';
          dmPrincipal.qryChamados.Open;
          dmPrincipal.cdsChamados.Close;
          dmPrincipal.cdsChamados.Open;
     end;

     if (definicao = 'USUARIO') and (ver_todos = 'N') then
     begin
          dmPrincipal.qryChamados.Close;
          dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where'+
                                              ' (cod_usuario_resp = '+QuotedStr(IntToStr(cod_usuario_login))+
                                              ' or cod_usuario_abriu = '+QuotedStr(IntToStr(cod_usuario_login))+
                                              ' or cod_status = 1) order by cod_chamado';
          dmPrincipal.qryChamados.Open;
          dmPrincipal.cdsChamados.Close;
          dmPrincipal.cdsChamados.Open;
     end
     ELSE if (definicao = 'USUARIO') and (ver_todos = 'S') then
     begin
          dmPrincipal.qryChamados.Close;
          dmPrincipal.qryChamados.SQL.Text := 'select * from chamado order by cod_chamado';
          dmPrincipal.qryChamados.Open;
          dmPrincipal.cdsChamados.Close;
          dmPrincipal.cdsChamados.Open;
     end;

     if cod_chamado_zoom <> 0 then
     begin
          dmPrincipal.cdsChamados.IndexName := 'CHAMADO';
          dmPrincipal.cdsChamados.FindKey([cod_chamado_zoom,cod_data_chamado_zoom]);
          dmPrincipal.cdsChamados.IndexName := '';
          cxGrid.SetFocus;
     end;


end;

procedure TfrmConChamados.btnExcluiClick(Sender: TObject);
begin
     if dmPrincipal.cdsChamadoscod_chamado.Value <> 0 then
     begin
          dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where cod_chamado = '+dmPrincipal.cdsChamadoscod_chamado.AsString+
                                              ' and data_chamado = '+QuotedStr(FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime));
          dmPrincipal.cdsChamados.close;
          dmPrincipal.cdsChamados.open;

          dmPrincipal.qryBloqueados.Close();
          dmPrincipal.qryBloqueados.Open();
          dmPrincipal.cdsBloqueados.Close();
          dmPrincipal.cdsBloqueados.Open();
          if dmPrincipal.cdsBloqueados.Locate('tabela;chave1;chave2;chave3;chave4;chave5',VarArrayOf(['chamado',IntToStr(dmPrincipal.cdsChamadoscod_chamado.AsInteger),
                                                  DateToStr(dmPrincipal.cdsChamadosdata_chamado.AsDateTime),'0','0','0']),[]) then
          begin
               ShowMessage('Registro est? sendo alterado pelo usu?rio: '+dmPrincipal.cdsBloqueadoslogin_bloqueou.AsString);
               Abort;
          end
          else
          begin
               if (MessageDlg('Deseja excluir o chamado selecionado ?',
                    mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
               begin
                    dmPrincipal.qryStatus.Close;
                    dmPrincipal.qryStatus.Open;
                    if dmPrincipal.qryStatus.Locate('cod_status',dmPrincipal.cdsChamadoscod_status.AsInteger,[]) then
                    begin
                         if (dmPrincipal.qryStatusencerra_chamado.AsString = 'N') then
                         begin
                              dmPrincipal.cdsChamados.Delete;
                              dmPrincipal.cdsChamados.ApplyUpdates(0);
                         end
                         else
                              ShowMessage('O chamado encontra-se ENCERRADO. Imposs?vel efetuar a exclus?o!!');
                    end;
               end;
          end;
     end;
end;

procedure TfrmConChamados.btnVisualizaClick(Sender: TObject);
var
     sUser : String;
begin
     if PageControl1.TabIndex = 0 then
     begin
          if (definicao = 'ADMINISTRADOR') and (ver_todos = 'S') then
          begin
               if (rdEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s where c.cod_status = s.cod_status'+
                                                   ' and s.encerra_chamado = ''S'' order by c.data_chamado desc, c.cod_status';
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdNaoEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s where c.cod_status = s.cod_status'+
                                                   ' and s.encerra_chamado = ''N'' and c.cod_status <> 1 order by c.data_chamado desc, c.cod_status';
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdAguardandoAtend.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c where c.cod_status = 1 order by c.data_chamado desc';

                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdTodos.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select * from chamado order by '+edtIndice.Text; {prazo_fim_chamdo, nivel_prioridade desc';}
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end;
          end
          else if (definicao = 'ADMINISTRADOR') and (ver_todos = 'N') then
          begin
               if (rdEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_resp = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''S'''+
                                                   ' union'+
                                                   ' select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_abriu = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''S'''+
                                                   ' order by data_chamado desc, cod_status';
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdNaoEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_resp = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''N'''+
                                                   ' and c.cod_status <> 1'+
                                                   ' union'+
                                                   ' select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_abriu = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''N'''+
                                                   ' and c.cod_status <> 1'+
                                                   ' order by data_chamado desc, cod_status';
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdAguardandoAtend.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c where c.cod_status = 1 order by c.data_chamado';

                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdTodos.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where'+
                                                   ' (cod_usuario_resp = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' or cod_usuario_abriu = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' or cod_status = 1) order by '+edtIndice.Text;
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end;
          end;



          if (definicao = 'GERENTE') and (ver_todos = 'S') then
          begin
               sUser  := '';
               qryTempUsuario.Close;
               qryTempUsuario.sql.Text := 'select * from usuario where cod_area = '+IntToStr(cod_setor_login);
               qryTempUsuario.Open;
               qryTempUsuario.First;
               while not qryTempUsuario.Eof do
               begin
                    if qryTempUsuario.RecordCount = 1 then
                         sUser := qryTempUsuariocod_usuario.AsString;
                    if qryTempUsuario.RecordCount > 1 then
                    begin
                         if copy(sUser,1,1) <> ',' then
                         begin
                              sUser := sUser+','+qryTempUsuariocod_usuario.AsString;

                         end
                         else
                         begin
                              sUser := qryTempUsuariocod_usuario.AsString+sUser;

                         end;
                    end;

                    qryTempUsuario.Next;
               end;

               if (rdEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_resp in ('+(sUser)+')'+
                                                   ' and s.encerra_chamado = ''S'''+
                                                   ' union'+
                                                   ' select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_abriu in ('+(sUser)+')'+
                                                   ' and s.encerra_chamado = ''S'''+
                                                   ' order by data_chamado desc, cod_status';
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdNaoEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_resp in ('+(sUser)+')'+
                                                   ' and s.encerra_chamado = ''N'''+
                                                   ' and c.cod_status <> 1'+
                                                   ' union'+
                                                   ' select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_abriu in ('+(sUser)+')'+
                                                   ' and s.encerra_chamado = ''N'''+
                                                   ' and c.cod_status <> 1'+
                                                   ' order by data_chamado desc, cod_status';
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdAguardandoAtend.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c where c.cod_status = 1 order by c.data_chamado desc';

                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdTodos.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where'+
                                                   ' cod_usuario_abriu in ('+(sUser)+')'+
                                                   ' or cod_usuario_resp in ('+(sUser)+')'+
                                                   ' or cod_status = 1 order by '+edtIndice.Text;
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end;
          end


          else if (definicao = 'GERENTE') and (ver_todos = 'N') then
          begin
               if (rdEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_resp = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''S'''+
                                                   ' union'+
                                                   ' select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_abriu = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''S'''+
                                                   ' order by data_chamado desc, cod_status';
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdNaoEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_resp = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''N'''+
                                                   ' and c.cod_status <> 1'+
                                                   ' union'+
                                                   ' select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_abriu = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''N'''+
                                                   ' and c.cod_status <> 1'+
                                                   ' order by data_chamado desc, cod_status';
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdAguardandoAtend.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c where c.cod_status = 1 order by c.data_chamado';

                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdTodos.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where'+
                                                   ' (cod_usuario_resp = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' or cod_usuario_abriu = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' or cod_status = 1) order by '+edtIndice.Text;
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end;
          end;



          if (definicao = 'USUARIO') and (ver_todos = 'N') then
          begin
               if (rdEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_resp = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''S'''+
                                                   ' union'+
                                                   ' select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_abriu = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''S'''+
                                                   ' order by data_chamado desc, cod_status';
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdNaoEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_resp = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''N'''+
                                                   ' and c.cod_status <> 1'+
                                                   ' union'+
                                                   ' select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_abriu = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''N'''+
                                                   ' and c.cod_status <> 1'+
                                                   ' order by data_chamado desc, cod_status';
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdAguardandoAtend.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c where c.cod_status = 1 order by c.data_chamado';

                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdTodos.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where'+
                                                   ' (cod_usuario_resp = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' or cod_usuario_abriu = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' or cod_status = 1) order by '+edtIndice.Text;
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end;
          end
          ELSE if (definicao = 'USUARIO') and (ver_todos = 'S') then
          begin
               if (rdEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s where c.cod_status = s.cod_status'+
                                                   ' and s.encerra_chamado = ''S'' order by c.data_chamado desc, c.cod_status';
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdNaoEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s where c.cod_status = s.cod_status'+
                                                   ' and s.encerra_chamado = ''N'' and c.cod_status <> 1 order by c.data_chamado desc, c.cod_status';
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdAguardandoAtend.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c where c.cod_status = 1 order by c.data_chamado desc';

                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdTodos.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select * from chamado order by '+edtIndice.Text; {prazo_fim_chamdo, nivel_prioridade desc';}
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end;
          end;
          
          if definicao = 'RECEBE E-MAIL' then
          begin
               dmPrincipal.qryChamados.Close;
               dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where '+
                                                   'cod_status = 1 order by cod_chamado';
               dmPrincipal.qryChamados.Open;
               dmPrincipal.cdsChamados.Close;
               dmPrincipal.cdsChamados.Open;
          end;
     end;
end;

procedure TfrmConChamados.btnPrimeiroClick(Sender: TObject);
begin
     dmPrincipal.cdsChamados.First;
end;

procedure TfrmConChamados.btnAnteriorClick(Sender: TObject);
begin
     dmPrincipal.cdsChamados.Prior;
end;

procedure TfrmConChamados.btnProximoClick(Sender: TObject);
begin
     dmPrincipal.cdsChamados.Next;
end;

procedure TfrmConChamados.btnUltimoClick(Sender: TObject);
begin
     dmPrincipal.cdsChamados.Last;
end;

function TfrmConChamados.on_change(texto, indice,
  ordem_final: String): Boolean;
var
     sUser : string;
begin
     texto  := StringReplace(texto,'*','%',[rfReplaceAll]);
     indice := AnsiLowerCase(indice);

     if texto <> '' then
     begin
          if (definicao = 'ADMINISTRADOR') and (ver_todos = 'S') then
          begin
               if (rdEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s where c.cod_status = s.cod_status'+
                                                        ' and s.encerra_chamado = ''S'' and cast(' + indice +' as TEXT)'+
                                                        ' like '+ '''' + texto + '''' +
                                                        ' order by ' + ansilowercase(ordem_final);
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdNaoEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s where c.cod_status = s.cod_status'+
                                                   ' and s.encerra_chamado = ''N'' and c.cod_status <> 1 and cast(' + indice +' as TEXT)'+
                                                   ' like '+ '''' + texto + '''' +
                                                   ' order by ' + ansilowercase(ordem_final);
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdAguardandoAtend.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c where c.cod_status = 1 and cast(' + indice +' as TEXT)'+
                                                        ' like '+ '''' + texto + '''' +
                                                        ' order by ' + ansilowercase(ordem_final);

                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdTodos.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where cast(' + indice +' as TEXT)'+
                                                        ' like '+ '''' + texto + '''' +
                                                        ' order by ' + ansilowercase(ordem_final);
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end;
          end
          else if (definicao = 'ADMINISTRADOR') and (ver_todos = 'N') then
          begin
               if (rdEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_resp = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''S'' and cast(' + indice +' as TEXT)'+
                                                   ' like '+ '''' + texto + '''' +
                                                   ' union'+
                                                   ' select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_abriu = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''S'' and cast(' + indice +' as TEXT)'+
                                                   ' like '+ '''' + texto + '''' +
                                                   ' order by ' + ansilowercase(ordem_final);
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdNaoEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_resp = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''N'''+
                                                   ' and c.cod_status <> 1 and cast(' + indice +' as TEXT)'+
                                                   ' like '+ '''' + texto + '''' +
                                                   ' union'+
                                                   ' select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_abriu = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''N'''+
                                                   ' and c.cod_status <> 1 and cast(' + indice +' as TEXT)'+
                                                   ' like '+ '''' + texto + '''' +
                                                   ' order by ' + ansilowercase(ordem_final);
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdAguardandoAtend.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c where c.cod_status = 1 and cast(' + indice +' as TEXT)'+
                                                        ' like '+ '''' + texto + '''' +
                                                        ' order by ' + ansilowercase(ordem_final);

                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdTodos.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where'+
                                                   ' (cod_usuario_resp = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' or cod_usuario_abriu = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' or cod_status = 1) and cast(' + indice +' as TEXT)'+
                                                   ' like '+ '''' + texto + '''' +
                                                   'order by '+ ansilowercase(ordem_final);
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end;
          end;


          if (definicao = 'GERENTE') and (ver_todos = 'S') then
          begin
               sUser  := '';
               qryTempUsuario.Close;
               qryTempUsuario.sql.Text := 'select * from usuario where cod_area = '+IntToStr(cod_setor_login);
               qryTempUsuario.Open;
               qryTempUsuario.First;
               while not qryTempUsuario.Eof do
               begin
                    if qryTempUsuario.RecordCount = 1 then
                         sUser := qryTempUsuariocod_usuario.AsString;
                    if qryTempUsuario.RecordCount > 1 then
                    begin
                         if copy(sUser,1,1) <> ',' then
                         begin
                              sUser := sUser+','+qryTempUsuariocod_usuario.AsString;

                         end
                         else
                         begin
                              sUser := qryTempUsuariocod_usuario.AsString+sUser;

                         end;
                    end;

                    qryTempUsuario.Next;
               end;

               if (rdEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_resp in ('+(sUser)+')'+
                                                   ' and s.encerra_chamado = ''S'' and cast(' + indice +' as TEXT)'+
                                                   ' like '+ '''' + texto + '''' +
                                                   ' union'+
                                                   ' select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_abriu in ('+(sUser)+')'+
                                                   ' and s.encerra_chamado = ''S'' and cast(' + indice +' as TEXT)'+
                                                   ' like '+ '''' + texto + '''' +
                                                   ' order by ' + ansilowercase(ordem_final);
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdNaoEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_resp in ('+(sUser)+')'+
                                                   ' and s.encerra_chamado = ''N'''+
                                                   ' and c.cod_status <> 1 and cast(' + indice +' as TEXT)'+
                                                   ' like '+ '''' + texto + '''' +
                                                   ' union'+
                                                   ' select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_abriu in ('+(sUser)+')'+
                                                   ' and s.encerra_chamado = ''N'''+
                                                   ' and c.cod_status <> 1 and cast(' + indice +' as TEXT)'+
                                                   ' like '+ '''' + texto + '''' +
                                                   ' order by ' + ansilowercase(ordem_final);
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdAguardandoAtend.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c where c.cod_status = 1 and cast(' + indice +' as TEXT)'+
                                                        ' like '+ '''' + texto + '''' +
                                                        ' order by ' + ansilowercase(ordem_final);

                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdTodos.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where cast(' + indice +' as TEXT)'+
                                                        ' like '+ '''' + texto + ''' and' +
                                                        ' (cod_usuario_abriu in ('+(sUser)+')'+
                                                        ' or cod_usuario_resp in ('+(sUser)+')'+
                                                        ' or cod_status = 1) order by '+ ansilowercase(ordem_final);
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end;
          end

          else if (definicao = 'GERENTE') and (ver_todos = 'N') then
          begin
               if (rdEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_resp = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''S'' and cast(' + indice +' as TEXT)'+
                                                   ' like '+ '''' + texto + '''' +
                                                   ' union'+
                                                   ' select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_abriu = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''S'' and cast(' + indice +' as TEXT)'+
                                                   ' like '+ '''' + texto + '''' +
                                                   ' order by ' + ansilowercase(ordem_final);
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdNaoEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_resp = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''N'''+
                                                   ' and c.cod_status <> 1 and cast(' + indice +' as TEXT)'+
                                                   ' like '+ '''' + texto + '''' +
                                                   ' union'+
                                                   ' select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_abriu = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''N'''+
                                                   ' and c.cod_status <> 1 and cast(' + indice +' as TEXT)'+
                                                   ' like '+ '''' + texto + '''' +
                                                   ' order by ' + ansilowercase(ordem_final);
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdAguardandoAtend.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c where c.cod_status = 1 and cast(' + indice +' as TEXT)'+
                                                        ' like '+ '''' + texto + '''' +
                                                        ' order by ' + ansilowercase(ordem_final);

                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdTodos.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where cast(' + indice +' as TEXT)'+
                                                        ' like '+ '''' + texto + ''' and' +
                                                        ' (cod_usuario_resp = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                        ' or cod_usuario_abriu = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                        ' or cod_status = 1) order by '+ ansilowercase(ordem_final);
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end;
          end;

          if (definicao = 'USUARIO') and (ver_todos = 'N') then
          begin
               if (rdEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_resp = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''S'' and cast(' + indice +' as TEXT)'+
                                                   ' like '+ '''' + texto + '''' +
                                                   ' union'+
                                                   ' select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_abriu = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''S'' and cast(' + indice +' as TEXT)'+
                                                   ' like '+ '''' + texto + '''' +
                                                   ' order by ' + ansilowercase(ordem_final);
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdNaoEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_resp = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''N'''+
                                                   ' and c.cod_status <> 1 and cast(' + indice +' as TEXT)'+
                                                   ' like '+ '''' + texto + '''' +
                                                   ' union'+
                                                   ' select c.* from chamado c, status_chamado s'+
                                                   ' where c.cod_status = s.cod_status'+
                                                   ' and c.cod_usuario_abriu = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                   ' and s.encerra_chamado = ''N'''+
                                                   ' and c.cod_status <> 1 and cast(' + indice +' as TEXT)'+
                                                   ' like '+ '''' + texto + '''' +
                                                   ' order by '+ ansilowercase(ordem_final);
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdAguardandoAtend.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c where c.cod_status = 1 and cast(' + indice +' as TEXT)'+
                                                        ' like '+ '''' + texto + '''' +
                                                        ' order by ' + ansilowercase(ordem_final);

                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdTodos.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where cast(' + indice +' as TEXT)'+
                                                        ' like '+ '''' + texto + ''' and' +
                                                        ' (cod_usuario_resp = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                        ' or cod_usuario_abriu = '+QuotedStr(IntToStr(cod_usuario_login))+
                                                        ' or cod_status = 1) order by '+ ansilowercase(ordem_final);
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end;
          end
          ELSE if (definicao = 'USUARIO') and (ver_todos = 'S') then
          begin
               if (rdEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s where c.cod_status = s.cod_status'+
                                                   ' and s.encerra_chamado = ''S'' and cast(' + indice +' as TEXT)'+
                                                   ' like '+ '''' + texto + '''' +
                                                   '  order by '+ ansilowercase(ordem_final);
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdNaoEncerrados.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c, status_chamado s where c.cod_status = s.cod_status'+
                                                   ' and s.encerra_chamado = ''N'' and c.cod_status <> 1 and cast(' + indice +' as TEXT)'+
                                                   ' like '+ '''' + texto + '''' +
                                                   ' order by '+ ansilowercase(ordem_final);
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdAguardandoAtend.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select c.* from chamado c where c.cod_status = 1 and cast(' + indice +' as TEXT)'+
                                                        ' like '+ '''' + texto + '''' +
                                                        ' order by '+ ansilowercase(ordem_final);

                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end
               else if (rdTodos.Checked = true) then
               begin
                    dmPrincipal.qryChamados.Close;
                    dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where cast(' + indice +' as TEXT)'+
                                                        ' like '+ '''' + texto + '''' +
                                                        ' order by ' + ansilowercase(ordem_final);
                    dmPrincipal.qryChamados.Open;
                    dmPrincipal.cdsChamados.Close;
                    dmPrincipal.cdsChamados.Open;
               end;
          end;


          if definicao = 'RECEBE E-MAIL' then
          begin
               dmPrincipal.qryChamados.Close;
               dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where cast(' + indice +' as TEXT)'+
                                                   ' like '+ '''' + texto + ''' and ' +
                                                   ' cod_status = 1 order by ' + ansilowercase(ordem_final);
               dmPrincipal.qryChamados.Open;
               dmPrincipal.cdsChamados.Close;
               dmPrincipal.cdsChamados.Open;
          end;

     end;
end;

procedure TfrmConChamados.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
     dmPrincipal.qryStatus.Close;
     dmPrincipal.qryStatus.Open;
     if dmPrincipal.qryStatus.Locate('cod_status',AViewInfo.GridRecord.Values[cxGridDBTableView1cod_status.Index],[]) then
     begin
          if (dmPrincipal.qryStatusencerra_chamado.AsString = 'S') then
          begin
               ACanvas.Brush.Color := clGreen;
               ACanvas.Font.Color  := clWhite;
          end;
          if (dmPrincipal.qryStatusencerra_chamado.AsString = 'N') and (dmPrincipal.qryStatusdescricao_status.AsString <> 'AGUARDANDO ATENDIMENTO') then
          begin
               ACanvas.Brush.Color := clSkyBlue;
               ACanvas.Font.Color  := clBlack;
          end;

     end;
end;

procedure TfrmConChamados.cxGridDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
     edtindice.text := trim(copy(AColumn.name,19,100));
     edtOrdem.setfocus;
end;

procedure TfrmConChamados.edtOrdemChange(Sender: TObject);
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

procedure TfrmConChamados.FormCreate(Sender: TObject);
begin
     tsChamados.Show;
     cxGrid.ShowHint  := True;
     cxGrid2.ShowHint := True;

     if (definicao = 'RECEBE E-MAIL') then
     begin
          btnEMail.Visible     := true;
          ProgressBar1.Visible := True;
          Panel3.Enabled       := false;
          btnVisualiza.Enabled := false;
          btnAdiciona.Enabled  := false;
          btnAltera.Enabled    := false;
          btnAltera.Enabled    := false;
          btnExclui.Enabled    := false;
          btnMovimento.Enabled := false;
          SpeedButton1.Enabled := false;
     end;

end;

procedure TfrmConChamados.acMovimentarChamadoExecute(Sender: TObject);
var
     icodmov : Integer;
     sdata   : string;
begin
     sdata := '';
     icodmov := 0;
     if dmPrincipal.cdsChamadoscod_chamado.Value <> 0 then
     begin
          dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where cod_chamado = '+dmPrincipal.cdsChamadoscod_chamado.AsString+
                                              ' and data_chamado = '+QuotedStr(FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime));
          dmPrincipal.cdsChamados.close;
          dmPrincipal.cdsChamados.open;

          //valida campo de solicita??o do chamado
          if (dmPrincipal.cdsChamadossolicitacao.AsString = '') then
          begin
               ShowMessage('A solicita??o do chamado encontra-se vazia.'+#10+
                           'Verifique antes de prosseguir com a movimenta??o!' );
               Abort;
          end;
          //valida campo de categoria do chamado "VIA E-MAIL"
          dmPrincipal.qryTemp.close;
          dmPrincipal.qryTemp.SQL.Text := 'select * from parametros_gerais where cod_categoria_padrao = '+dmPrincipal.cdsChamadoscod_categoria.AsString;
          dmPrincipal.qryTemp.open;
          if not dmPrincipal.qryTemp.IsEmpty then
          begin
               ShowMessage('A categoria padr?o do chamado(VIA E-MAIL) deve ser alterada.'+#10+
                           'Verifique antes de prosseguir com a movimenta??o!' );
               Abort;
          end;

          //valida registro bloqueado
          dmPrincipal.qryBloqueados.Close();
          dmPrincipal.qryBloqueados.Open();
          dmPrincipal.cdsBloqueados.Close();
          dmPrincipal.cdsBloqueados.Open();
          if dmPrincipal.cdsBloqueados.Locate('tabela;chave1;chave2;chave3;chave4;chave5',VarArrayOf(['chamado',IntToStr(dmPrincipal.cdsChamadoscod_chamado.AsInteger),
                                                  DateToStr(dmPrincipal.cdsChamadosdata_chamado.AsDateTime),'0','0','0']),[]) then
          begin
               ShowMessage('Registro est? sendo alterado pelo usu?rio: '+dmPrincipal.cdsBloqueadoslogin_bloqueou.AsString);
               Abort;
          end;

          //valida status de "EM COMPROMISSO"
          if (dmPrincipal.cdsChamadoscod_status.Asinteger= 4) then
          begin
               ShowMessage('Imposs?vel realizar movimenta??es.'+#13+'O status do chamado encontra-se ''EM COMPROMISSO'', verifique a aba de Compromissos do Chamado!');
               Abort;
          end;

          //valida a exist?ncia de cronograma de altera??es
          if (dmPrincipal.cdsChamadosgera_cronograma_alt.AsString = 'S') then
          begin
               ShowMessage('Imposs?vel realizar movimenta??es.'+#13+'Existe um cronograma de altera??es definido para este chamado!');
               Abort;
          end;

          dmPrincipal.qryStatus.Close;
          dmPrincipal.qryStatus.Open;
          if dmPrincipal.qryStatus.Locate('cod_status',dmPrincipal.cdsChamadoscod_status.AsInteger,[]) then
          begin
               if (dmPrincipal.qryStatusencerra_chamado.AsString = 'N') then
               if (dmPrincipal.cdsChamadoscod_usuario_resp.AsInteger = cod_usuario_login) or
                    (dmPrincipal.cdsChamadoscod_usuario_resp.AsString = '') then
               begin
                    sdata := FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
                    qryAdd.close;
                    qryAdd.SQL.Clear;
                    qryAdd.SQL.Add('select max(cod_movimento) as codigo from movimento_chamado where cod_chamado = '+dmPrincipal.cdsChamadoscod_chamado.AsString+
                                   ' and data_chamado = '+QuotedStr(sdata));
                    qryAdd.Open;
                    icodmov := qryAdd.fieldbyname('codigo').AsInteger;

                    qrytemp.close;
                    qrytemp.SQL.Clear;
                    qrytemp.SQL.Add('select * from movimento_chamado where cod_chamado = '+dmPrincipal.cdsChamadoscod_chamado.AsString+
                                        ' and cod_movimento = '+IntToStr(icodmov)+' and data_chamado = '+QuotedStr(sdata));
                    qrytemp.Open;
                    if (qrytempcod_usuario_mov.AsInteger = 0) or (cod_usuario_login = qrytempcod_usuario.AsInteger) then
                    begin
                         //insere registro de bloqueio
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



                         //abre tela da movimenta??o
                         dmPrincipal.qryMovChamado.Close;
                         dmPrincipal.qryMovChamado.SQL.Text := 'select * from movimento_chamado where '+
                                                            ' cod_movimento    ='+ '-1'+
                                                            ' order by cod_movimento desc limit 1';
                         dmPrincipal.qryMovChamado.Open;
                         dmPrincipal.cdsMovChamado.Close;
                         dmPrincipal.cdsMovChamado.Open;
                         dmPrincipal.cdsMovChamado.Insert;
                         if not Assigned(frmCadMovimentoChamado) then
                              frmCadMovimentoChamado := TfrmCadMovimentoChamado.Create(Application);
                         try
                              frmCadMovimentoChamado.ShowModal;
                         finally
                              frmCadMovimentoChamado.Free;
                         end;
                         frmCadMovimentoChamado := nil;
                         Abort();
                    end
                    else
                    begin
                         ShowMessage('Chamado j? foi movimentado por outro usu?rio !');
                         acAtualiza.OnExecute(Self);
                         Abort();
                    end;
               end;

               //valida status do chamado
               if dmPrincipal.qryStatusencerra_chamado.AsString = 'S' then
               begin
                    sReabrir := '';
                    if MessageDlg('O chamado encontra-se encerrado. Deseja reabr?-lo?',mtConfirmation,[mbYes, mbNo], 0) = mrYes then
                    begin
                         sReabrir := 'S';
                         dmPrincipal.qryMovChamado.Close;
                         dmPrincipal.qryMovChamado.SQL.Text := 'select * from movimento_chamado where '+
                                                            ' cod_movimento    ='+ '-1'+
                                                            ' order by cod_movimento desc limit 1';
                         dmPrincipal.qryMovChamado.Open;
                         dmPrincipal.cdsMovChamado.Close;
                         dmPrincipal.cdsMovChamado.Open;
                         dmPrincipal.cdsMovChamado.Insert;
                         if not Assigned(frmCadMovimentoChamado) then
                              frmCadMovimentoChamado := TfrmCadMovimentoChamado.Create(Application);
                         try
                              frmCadMovimentoChamado.ShowModal;
                         finally
                              frmCadMovimentoChamado.Free;
                         end;
                         frmCadMovimentoChamado := nil;
                         Abort();
                    end;
               end
               //valida usuario respons?vel pelo chamado
               else if (dmPrincipal.cdsChamadoscod_usuario_resp.AsInteger <> cod_usuario_login) or (dmPrincipal.cdsChamadoscod_usuario_resp.AsString <> '') then
               begin
                    ShowMessage('Imposs?vel realizar movimenta??es.'+#13+'Usu?rio logado difere do usu?rio respons?vel pelo chamado !!'+#13+
                              'O chamado est? atribu?do para '+dmPrincipal.cdsChamadosnome_usuario_resp.AsString+', somente este usu?rio pode moviment?-lo!');
                    btnVisualiza.OnClick(Self);
               end;

          end;
     end;
     cxGrid.SetFocus;
end;

procedure TfrmConChamados.acAtualizaExecute(Sender: TObject);
begin
     btnVisualiza.OnClick(Self);

end;


procedure TfrmConChamados.acSolucaoExecute(Sender: TObject);
begin
     frmConBaseConhecimento := TfrmConBaseConhecimento.Create(Application);
     try
          frmConBaseConhecimento.ShowModal();
     finally
          frmConBaseConhecimento.Free();
     end;
end;

procedure TfrmConChamados.btnEMailClick(Sender: TObject);
var
     IdPOP3: TIdPOP3;
     IdMessage: TIdMessage;

     NumMsg, CurMsg : Integer;
     icodCategoria, icodcli, istatus ,icodCham, icodUsuario: Integer;
     x, i, inum : integer;
     FileName, scliente, sCategoria,
     sdata, sdata_arq, shora, sAuto, sprioridade,
     sorigem, sdesc, sStatus, sqntDesc, scaminhoArq, sdomin, sAno,
      sContato, semail_contato, snomeUsuario : String;
begin
     //==inicializando vari?veis==//
     icodCategoria := 0;
     icodcli       := 0;
     istatus       := 0;
     icodCham      := 0;
     icodUsuario   := 0;
     snomeUsuario  := '';
     scliente      := '';
     sCategoria    := '';
     sdata         := '';
     sdata_arq     := '';
     shora         := '';
     sAuto         := '';
     sprioridade   := '';
     sorigem       := '';
     sStatus       := '';
     sqntDesc      := '';
     sContato      := '';
     semail_contato:= '';

     //if not Assigned(frmConChamados) then
     //begin
     //     Application.CreateForm(TfrmConChamados, frmConChamados);
     //end;

     if PageControl1.TabIndex = 0 then
     begin
          dmPrincipal.qryParametros.Close;
          dmPrincipal.qryParametros.sql.Text := 'select * from parametros_gerais';
          dmPrincipal.qryParametros.open;
          dmPrincipal.cdsParametros.close;
          dmPrincipal.cdsParametros.open;

          try
               Screen.Cursor     := crHourGlass;
               IdPOP3 := TIdPOP3.Create(Self);
               IdPOP3.Host      := dmPrincipal.cdsParametrosserv_entrada_email.AsString;
               IdPOP3.Username  := dmPrincipal.cdsParametrosusuario.AsString;
               IdPOP3.Password  := dmPrincipal.cdsParametrossenha.AsString;
               IdPOP3.Port      := dmPrincipal.cdsParametrosporta_serv_entrada.AsInteger;
               try
                    if IdPOP3.Connected then
                         IdPOP3.Disconnect;
                    IdPOP3.Connect;
               except
                    begin
                         Abort();
                    end;
               end;

               NumMsg := IdPOP3.CheckMessages; // Pega QTD. de MSG na Caixa Postal
               if NumMsg > 0 then
               begin
                    for CurMsg := 1 to (NumMsg) do
                    begin
                         sdesc  := '';
                         FileName := '';
                         IdMessage:= TIdMessage.Create(Self);
                         IdMessage.Clear;
                         IdPOP3.Retrieve(CurMsg, IdMessage);

                         //CONSISTENCIA PELO MSG ID DOS E-MAIL
                         dmPrincipal.qryId_msg.close;
                         dmPrincipal.qryId_msg.SQL.Text := 'select * from chamado_id_msg where id_msg = '+ QuotedStr(IdMessage.MsgId);
                         dmPrincipal.qryId_msg.open;

                         if dmPrincipal.qryId_msg.IsEmpty then
                         begin
                              i      := 0;
                              sdomin := '';
                              inum   := 0;
                              dmPrincipal.qryClientes.Close;
                              dmPrincipal.qryClientes.SQL.Text := 'select * from cliente order by cod_cliente';
                              dmPrincipal.qryClientes.open;

                              qryemail.Close;
                              qryemail.SQL.Text := 'select * from email_cliente order by cod_cliente';
                              qryemail.open;

                              qryCliUsuario.Close;
                              qryCliUsuario.SQL.Text := 'select * from cliente_usuario order by cod_cliente';
                              qryCliUsuario.open;


                              for i := 1 to length(IdMessage.From.Address) do
                              begin
                                   if Copy(IdMessage.From.Address,i,1) = '@' then
                                   begin
                                        inum := i;
                                        sdomin := copy(IdMessage.From.Address,inum,length(IdMessage.From.Address));
                                        Break;
                                   end;
                              end;
                              //  Busca de E-MAIL por usu?rios e DOMINIO do cliente
                              if qryCliUsuario.Locate('email',IdMessage.From.Address,[]) then
                              begin
                                   icodcli      := qryCliUsuariocod_cliente.AsInteger;
                                   scliente     := qryCliUsuarionome_cliente.AsString;
                                   if qryCliUsuariopermissao_abrir_chamado.AsString = 'S' then
                                   begin
                                        icodUsuario  := qryCliUsuariocod_usuario.AsInteger;
                                        snomeUsuario := qryCliUsuarionome_usuario.AsString;
                                   end
                                   else
                                   begin
                                        icodUsuario  := 0;
                                        snomeUsuario := '';
                                   end;
                              end
                              else if dmPrincipal.qryClientes.Locate('dominio',sdomin,[]) then
                              begin
                                   icodcli  := dmPrincipal.qryClientescod_cliente.AsInteger;
                                   scliente := dmPrincipal.qryClientesnome_cliente.AsString;
                              end
                              else if qryemail.Locate('email_1',IdMessage.From.Address,[]) then
                              begin
                                   icodcli  := qryemailcod_cliente.AsInteger;
                                   scliente := qryemailnome.AsString;
                              end
                              else if qryemail.Locate('email_2',IdMessage.From.Address,[]) then
                              begin
                                   icodcli  := qryemailcod_cliente.AsInteger;
                                   scliente := qryemailnome.AsString;
                              end
                              else if qryemail.Locate('email_3',IdMessage.From.Address,[]) then
                              begin
                                   icodcli  := qryemailcod_cliente.AsInteger;
                                   scliente := qryemailnome.AsString;
                              end
                              else if qryemail.Locate('email_4',IdMessage.From.Address,[]) then
                              begin
                                   icodcli := qryemailcod_cliente.AsInteger;
                                   scliente:= qryemailnome.AsString;
                              end
                              else if qryemail.Locate('email_5',IdMessage.From.Address,[]) then
                              begin
                                   icodcli := qryemailcod_cliente.AsInteger;
                                   scliente:= qryemailnome.AsString;
                              end
                              else if qryemail.Locate('email_6',IdMessage.From.Address,[]) then
                              begin
                                   icodcli := qryemailcod_cliente.AsInteger;
                                   scliente:= qryemailnome.AsString;
                              end
                              else if qryemail.Locate('email_7',IdMessage.From.Address,[]) then
                              begin
                                   icodcli := qryemailcod_cliente.AsInteger;
                                   scliente:= qryemailnome.AsString;
                              end
                              else if qryemail.Locate('email_8',IdMessage.From.Address,[]) then
                              begin
                                   icodcli := qryemailcod_cliente.AsInteger;
                                   scliente:= qryemailnome.AsString;
                              end
                              else
                              begin
                                   icodcli := dmPrincipal.cdsParametroscod_cli_padrao.AsInteger;
                                   scliente:= dmPrincipal.cdsParametrosnome_cli_padrao.AsString;
                              end;

                              //sContato       := IdMessage1.From.Address;
                              semail_contato := IdMessage.From.Address;

                              //   gerando categoria
                              icodCategoria := dmPrincipal.cdsParametroscod_categoria_padrao.AsInteger;
                              sCategoria    := dmPrincipal.cdsParametrosdesc_categoria_padrao.AsString;

                              // gerando status
                              istatus := dmPrincipal.cdsParametroscod_status_padrao.AsInteger;
                              sStatus := dmPrincipal.cdsParametrosdesc_status_padrao.AsString;

                              // data e hora
                              sdata := FormatDateTime('dd/mm/yyyy', IdMessage.Date);
                              sdata_arq := FormatDateTime('yyyymmdd', IdMessage.Date);
                              shora := FormatDateTime('hh:mm', IdMessage.Date);

                              // chamado autom?tico
                              sAuto := 'S';

                              //======prioridade=========//
                              sprioridade := dmPrincipal.cdsParametrosprioridade.AsString;

                              //=======origem do chamado =========//
                              sorigem := dmPrincipal.cdsParametrosorigem_chamado.AsString;

                              //======= gera codigo do chamado ========//
                              sAno := FormatDateTime('yyyy',Date);
                              if (sAno) <= (dmPrincipal.cdsParametrosano_chamado.AsString) then
                              begin
                                   icodCham := dmPrincipal.cdsParametrosultimo_chamado.AsInteger;
                                   dmPrincipal.cdsParametros.Edit;
                                   dmPrincipal.cdsParametrosultimo_chamado.AsInteger := icodCham + 1;
                                   icodCham := dmPrincipal.cdsParametrosultimo_chamado.AsInteger;
                              end
                              else
                              begin
                                   icodCham := 0;
                                   dmPrincipal.cdsParametros.Edit;
                                   dmPrincipal.cdsParametrosultimo_chamado.AsInteger := icodCham + 1;
                                   dmPrincipal.cdsParametrosano_chamado.AsInteger    := StrToInt(sAno);
                                   icodCham := dmPrincipal.cdsParametrosultimo_chamado.AsInteger;
                              end;

                              //ShowMessage(IdMessage1.ContentType);

                              if IdMessage.MessageParts.Count > 0 then
                              begin
                                   for x :=0 to pred(IdMessage.MessageParts.Count) do
                                   begin
                              //  salva e informa caminho do arquivo recebido
                                        if(IdMessage.MessageParts.Items[x] is TIdAttachment) then
                                        begin
                                             qryCamArq.Close;
                                             qryCamArq.SQL.Clear;
                                             qryCamArq.SQL.Add('select arq_cliente as arq from cliente where cod_cliente = '+IntToStr(icodcli));
                                             qryCamArq.Open;
                                             scaminhoArq := qryCamArq.fieldbyname('arq').AsString;
                                             FileName := scaminhoArq+IntToStr(icodCham)+'_'+sdata_arq+'_'+TIdAttachment(IdMessage.MessageParts.Items[x]).FileName;
                                             if FileExists(FileName) then
                                                  DeleteFile(FileName);
                                             try
                                                  TIdAttachment(IdMessage.MessageParts.Items[x]).SaveToFile(FileName);
                                             except
                                                  begin
                                                       //ShowMessage('Erro ao receber e-mail. Verifique o caminho de recebimento de arquivo(Arq. Cliente)'+#13+
                                                            //'cadastrado no cliente '+scliente+'.');
                                                       //Abort();
                                                  end;
                                             end;
                                        end
                                        else
                                        begin
                                     // descri??o do chamado
                                             if IdMessage.MessageParts.Items[x] is TIdText then
                                             begin
                                                  sqntDesc := TIdText(IdMessage.MessageParts.Items[x]).Body.Text;
                                                  if (sqntDesc <> '') then
                                                  begin
                                                       if sdesc = '' then
                                                            sdesc := TIdText(IdMessage.MessageParts.Items[x]).Body.Text
                                                       else
                                                            sdesc := sdesc+' '+TIdText(IdMessage.MessageParts.Items[x]).Body.Text;
                                                  end;
                                             end;

                                        end;
                                   end;
                              end
                              else
                                   sdesc := IdMessage.Body.Text;


                              dmPrincipal.cdsChamados.Append;
                              dmPrincipal.cdsChamadoscod_chamado.AsInteger       := icodCham;
                              dmPrincipal.cdsChamadosemail_solicitante.AsString  := semail_contato;
                              dmPrincipal.cdsChamadoscod_cliente.AsInteger       := icodcli;
                              dmPrincipal.cdsChamadoscod_status.AsInteger        := istatus;
                              dmPrincipal.cdsChamadoscod_categoria.AsInteger     := icodCategoria;
                              dmPrincipal.cdsChamadosnome_cliente.AsString       := scliente;
                              dmPrincipal.cdsChamadosdesc_status.AsString        := sStatus;
                              dmPrincipal.cdsChamadosdesc_categoria.AsString     := sCategoria;
                              dmPrincipal.cdsChamadosdata_chamado.AsDateTime     := StrToDate(sdata);
                              dmPrincipal.cdsChamadoshora_chamado.AsDateTime     := StrToTime(shora);
                              dmPrincipal.cdsChamadosprazo_fim_chamdo.AsDateTime := Date;
                              dmPrincipal.cdsChamadoschamado_automatico.AsString := sAuto;
                              dmPrincipal.cdsChamadosnivel_prioridade.AsString   := sprioridade;
                              dmPrincipal.cdsChamadoscaminho_arq.AsString        := FileName;
                              dmPrincipal.cdsChamadosdescricao_chamado.AsString  := TrimLeft(sdesc);
                              dmPrincipal.cdsChamadoscod_usuario_abriu.AsInteger := cod_usuario_login;
                              dmPrincipal.cdsChamadosnome_usuario_abriu.AsString := nome_usuario_login;
                              dmPrincipal.cdsChamadosorigem_chamado.AsString     := sorigem;
                              dmPrincipal.cdsChamadostempo_gasto.AsInteger       := 0;
                              dmPrincipal.cdsChamadosdata_gravacao.AsDateTime    := Date;
                              dmPrincipal.cdsChamadoshora_gravacao.AsDateTime    := Time;
                              if icodUsuario = 0 then
                                   dmPrincipal.cdsChamadoscod_usuario_cli.Clear
                              else
                                   dmPrincipal.cdsChamadoscod_usuario_cli.AsInteger   := icodUsuario;
                              dmPrincipal.cdsChamadosfuncionario_emp.AsString    := snomeUsuario;

                              dmPrincipal.cdsChamados.Post;
                              dmPrincipal.cdsChamados.ApplyUpdates(0);
                              dmPrincipal.qryChamados.Refresh;
                              dmPrincipal.cdsChamados.Refresh;

                              dmPrincipal.cdsParametros.Post;
                              dmPrincipal.cdsParametros.ApplyUpdates(0);

                              dmPrincipal.cdsId_msg.open;
                              dmPrincipal.cdsId_msg.Append;
                              dmPrincipal.cdsId_msgid_msg.AsString       := IdMessage.MsgId;
                              dmPrincipal.cdsId_msgdata.AsDateTime       := dmPrincipal.cdsChamadosdata_chamado.AsDateTime;
                              dmPrincipal.cdsId_msgcod_chamado.AsInteger := dmPrincipal.cdsChamadoscod_chamado.AsInteger;

                              dmPrincipal.cdsId_msg.post;
                              dmPrincipal.cdsId_msg.ApplyUpdates(0);

                              //IdPOP31.Delete(CurMsg);
                              ProgressBar1.Max := NumMsg;
                              ProgressBar1.Position :=  CurMsg;
                              if ProgressBar1.Position = NumMsg then
                              begin
                                   ProgressBar1.Position := 0;
                              end;
                         end;

                    end;
               end;
          finally
               IdPOP3.Disconnect;
               FreeAndNil(IdMessage);
               FreeAndNil(IdPOP3);
               Screen.Cursor := crDefault;
               //Libera mem?ria residual
               TrimAppMemorySize;
               Self.close;

          end;
     end;
end;

procedure TfrmConChamados.cxGridDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if btnAltera.Enabled = True then
     begin
          if (Key = 4100)       or
             (Key = 4101)       or
             (Key = VK_RETURN) or
             (Key = vk_RETURN)  or
             (Key = 13)         then
             btnAltera.Click;
     end;
end;

procedure TfrmConChamados.cxGridDBTableView1DblClick(Sender: TObject);
begin
     if btnAltera.Enabled = True then
     begin
          btnAltera.Click;
     end;
end;

procedure TfrmConChamados.tsCompromissosShow(Sender: TObject);
begin
     sdata_chamado := '';
     sdata_chamado := FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
     dmPrincipal.qryCompromissos.Close;
     dmPrincipal.qryCompromissos.SQL.Text := 'select * from compromissos_cliente where cod_chamado = '+IntToStr(dmPrincipal.cdsChamadoscod_chamado.AsInteger)+
                                           ' and data_chamado = '+QuotedStr(sdata_chamado);
     dmPrincipal.qryCompromissos.Open;

     dmPrincipal.cdsCompromissos.Close;
     dmPrincipal.cdsCompromissos.Open;
end;

procedure TfrmConChamados.btnGerarReportClick(Sender: TObject);
begin
     if dmPrincipal.cdsCompromissoscod_compromisso.value <> 0 then
     begin
          if (dmPrincipal.cdsChamadoscod_usuario_resp.AsInteger = cod_usuario_login) then
          begin
               if dmPrincipal.cdsCompromissosfinalizado.AsString = 'N' then
               begin
                    if not Assigned(frmCadCompromisso) then
                         frmCadCompromisso := TfrmCadCompromisso.Create(Self);
                    try
                    begin
                         dmPrincipal.cdsCompromissos.Edit;
                         frmCadCompromisso.ShowModal;
                    end;
                    finally
                         frmCadCompromisso.Free;
                    end;
                    frmCadCompromisso := nil;
               end;
          end
          else
          begin
               ShowMessage('Imposs?vel realizar movimenta??es.'+#13+'Usu?rio logado difere do usu?rio respons?vel pelo compromisso !!'+#13+
                              'O Compromisso est? atribu?do para '+dmPrincipal.cdsChamadosnome_usuario_resp.AsString+', somente este usu?rio pode moviment?-lo!');

          end;
     end;
end;

procedure TfrmConChamados.btnVisualizarReportClick(Sender: TObject);
var
     sdata : string;
begin
     sdata := '';
     if frmReportVisita <> nil then
          frmReportVisita := nil;

     frmReportVisita := TfrmReportVisita.Create(Application);
     try
     begin
          sdata := FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsCompromissosdata_chamado.AsDateTime);
          dmPrincipal.qryReport.close;
          dmPrincipal.qryReport.SQL.Text := 'select * from report_visita where cod_compromisso = '+IntToStr(dmPrincipal.cdsCompromissoscod_compromisso.AsInteger)+
                                            ' and cod_chamado = '+IntToStr(dmPrincipal.cdsCompromissoscod_chamado.AsInteger)+' and data_chamado = '+QuotedStr(sdata);
          dmPrincipal.qryReport.Open;
          if not dmPrincipal.qryReport.IsEmpty then
          begin
               dmPrincipal.cdsReport.Close;
               dmPrincipal.cdsReport.Open;
               dmPrincipal.cdsReport.Edit;
               frmReportVisita.ShowModal();
          end;
     end;
     finally
          frmReportVisita.Free();
     end;
     frmReportVisita := nil;
end;

procedure TfrmConChamados.cxGrid2DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
     if AViewInfo.GridRecord.Values[cxGrid2DBTableView1finalizado.Index] = 'S'  then
     begin
          ACanvas.Brush.Color := clGreen;
          ACanvas.Font.Color  := clWhite;
     end;
end;

procedure TfrmConChamados.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key = VK_ESCAPE then
          btnSair.Click();
     if(key = VK_F2) or
        (Key = vk_F2)  or
        (Key = 113)    then
          btnAdiciona.Click();
     {if(key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114 )    then
          btnExporta.Click();}
     if btnAltera.Enabled = True then
     begin
          if(key = VK_F6) or
             (Key = vk_F6)  or
             (Key = 117)    then
               btnAltera.Click();
     end;
     if(key = VK_F5) or
        (Key = vk_F5)  or
        (Key = 116)    then
          btnVisualiza.Click();
end;

procedure TfrmConChamados.cxGridDBTableView1EditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
begin
     dmPrincipal.cdsChamados.Post;
     dmPrincipal.cdsChamados.ApplyUpdates(0);

end;

procedure TfrmConChamados.cxGridDBTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
     if AViewInfo.Column.Name = 'cxGridDBTableView1tempo_cobranca'  then
     begin
          ACanvas.Font.Color  := clRed;
     end;
     if AViewInfo.Column.Name = 'cxGridDBTableView1km'  then
     begin
          ACanvas.Font.Color  := clRed;
     end;
     

end;

procedure TfrmConChamados.tsCronogramaShow(Sender: TObject);
begin
     sdata_chamado := '';
     sdata_chamado := FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
     dmPrincipal.qryCronogramaAlt.Close;
     dmPrincipal.qryCronogramaAlt.SQL.Text := 'select * from cronograma_alteracao where cod_chamado = '+IntToStr(dmPrincipal.cdsChamadoscod_chamado.AsInteger)+
                                           ' and data_solicitacao = '+QuotedStr(sdata_chamado);
     dmPrincipal.qryCronogramaAlt.Open;

     dmPrincipal.cdsCronogramaAlt.Close;
     dmPrincipal.cdsCronogramaAlt.Open;
end;

procedure TfrmConChamados.btncronogramaClick(Sender: TObject);
begin
     if dmPrincipal.cdsCronogramaAltcod_chamado.Value <> 0 then
     begin
          if (dmPrincipal.cdsChamadoscod_usuario_resp.AsInteger = cod_usuario_login) then
          begin
               if dmPrincipal.cdsCronogramaAltfinalizado.AsString = 'N' then
               begin
                    if not Assigned(frmCronogramaAlteracoes) then
                         frmCronogramaAlteracoes := TfrmCronogramaAlteracoes.Create(Self);
                    try
                    begin
                         dmPrincipal.cdsCronogramaAlt.Edit;
                         frmCronogramaAlteracoes.ShowModal;
                    end;
                    finally
                         frmCronogramaAlteracoes.Free;
                    end;
                    frmCronogramaAlteracoes := nil;
               end
               else
                    ShowMessage('Imposs?vel realizar movimenta??es.'+#13+'O cronograma de altera??o encontra-se finalizado!');
          end
          else
          begin
               ShowMessage('Imposs?vel realizar movimenta??es.'+#13+'Usu?rio logado difere do usu?rio respons?vel pela altera??o !!'+#13+
                              'A altera??o est? atribu?do para '+dmPrincipal.cdsChamadosnome_usuario_resp.AsString+', somente este usu?rio pode moviment?-lo!');

          end;
     end;
end;

procedure TfrmConChamados.TimerTimer(Sender: TObject);
begin
     if (definicao = 'RECEBE E-MAIL') then
          btnEMail.Click();


end;

procedure TfrmConChamados.btnExportaClick(Sender: TObject);
begin
     if chamou_zoom = true then
          Close;
end;

procedure TfrmConChamados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     frmPrincipal.Timer_abrirConsulta.Enabled := true;
     Action := caFree;
end;

procedure TfrmConChamados.TrimAppMemorySize;
var
     MainHandle : THandle;
begin
     try
          MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
          SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
          CloseHandle(MainHandle) ;
     except
     end;

end;

procedure TfrmConChamados.BitBtn1Click(Sender: TObject);
var
     conectar   : integer;
     conectado  : Boolean;
     sprotocolo : string;
     i          : integer;
     senha, senhainv, decrip, corpo_email : String;
     attach : TIdAttachment;
begin
     corpo_email := '';
     if dmPrincipal.cdsMovChamadocod_movimento.Value <> 0 then
     begin
          if (MessageDlg('Deseja reenviar o hist?rico das movimenta??es do chamado?',
                         mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
          begin
               Screen.Cursor := crHourGlass;
               sprotocolo    := '';
               dmPrincipal.qryUsuarios.Close;
               dmPrincipal.qryUsuarios.SQL.Text := 'select * from usuario order by cod_usuario';
               dmPrincipal.qryUsuarios.open;
               if dmPrincipal.qryUsuarios.Locate('cod_usuario',cod_usuario_login,[]) then
               begin
                    senha    := dmPrincipal.qryUsuariossenha_conta.AsString;
                    senhainv := '';
                    i :=0;
                    for i := length(senha) downto 1 do
                         senhainv := senhainv + copy(senha,i,1);

                    senha := senhainv;
                    decrip := frmPrincipal.desencrip(senha);
                    IdEnvioCli.Host     := dmPrincipal.qryUsuarioshost_mail.AsString;
                    IdEnvioCli.Username := dmPrincipal.qryUsuariosusuario_conta.AsString;
                    IdEnvioCli.Port     := StrToInt(dmPrincipal.qryUsuariosporta_serv_saida.AsString);
                    IdEnvioCli.Password := decrip;
                    IdEnvioCli.AuthType := satDefault;

                    if IdEnvioCli.Connected then
                         IdEnvioCli.Disconnect;
                    conectar := 0;
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
                    IdMsg.Recipients.EMailAddresses := dmPrincipal.qryClientesmail.AsString+';'+dmPrincipal.cdsChamadosemail_solicitante.AsString+';'+
                                                       dmPrincipal.cdsChamadosemail_solicitante_outro.AsString;

               if conectado = false then
               begin
                    ShowMessage('N?o foi poss?vel conectar ao provedor de e-mail !');

                    Exit;
               end;

               try
                    // percorrer dados de movimento, montar corpo de email, com todas as movimenta??es
                    dmPrincipal.qryMovChamado.Close;
                    dmPrincipal.qryMovChamado.SQL.Text := 'select * from movimento_chamado where cod_chamado = '+IntToStr(dmPrincipal.cdsChamadoscod_chamado.AsInteger)+
                                                   ' and data_chamado = '+QuotedStr(FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime))+
                                                   ' order by cod_movimento desc';

                    dmPrincipal.qryMovChamado.open;
                    dmPrincipal.cdsMovChamado.close;
                    dmPrincipal.cdsMovChamado.open;
                    while not dmPrincipal.cdsMovChamado.Eof do
                    begin
                         if dmPrincipal.cdsMovChamadoenvia_email.AsString = 'S' then
                         begin
                              corpo_email := corpo_email + 'Atendente : '+dmPrincipal.cdsMovChamadonome_usuario_mov.AsString+#13+
                                                           'Data In?cio: '+(FormatDateTime('dd/mm/yyyy',dmPrincipal.cdsMovChamadodata_movimento.AsDateTime))+'   Hora In?co: '+(FormatDateTime('hh:mm',dmPrincipal.cdsMovChamadohora_inic.AsDateTime))+#13+
                                                           'Data Fim: '+(FormatDateTime('dd/mm/yyyy',dmPrincipal.cdsMovChamadodata_fim.AsDateTime))+'        Hora Fim: '+(FormatDateTime('hh:mm',dmPrincipal.cdsMovChamadohora_fim.AsDateTime))+#13+
                                                           dmPrincipal.cdsMovChamadocod_movimento.AsString+'- Movimenta??o Efetuada: '+dmPrincipal.cdsMovChamadoemail_movimentacao.AsString+#13+
                                                           '--------------------------------------------------------------------------------------'+#13+#13;
                         end;
                         dmPrincipal.cdsMovChamado.Next;
                    end;

                    sprotocolo := FormatDateTime('yyyymmdd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
                    IdMsg.Subject := 'Or?cullos - Acompanhamento de Movimenta??es ['+sprotocolo+dmPrincipal.cdsChamadoscod_chamado.AsString+']';
                    IdMsg.Body.Text := '[Or?cullos - Mensagem Autom?tica]'+#13+#13+
                                       'Caro Cliente: '+dmPrincipal.cdsChamadosnome_cliente.AsString+'.'+#13+
                                       'Informamos a movimenta??o referente ao chamado de N? ['+sprotocolo+dmPrincipal.cdsChamadoscod_chamado.AsString+'].'+#13+#13+
                                       corpo_email+
                                       'Solicita??o do Chamado: '+dmPrincipal.cdsChamadossolicitacao.AsString;

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

               finally
                    begin
                         IdEnvioCli.Disconnect;
                         Screen.Cursor := crDefault;
                    end;
               end;
          end;
     end;
end;

procedure TfrmConChamados.enviaEmailCliente;
var
     conectar   : integer;
     conectado  : Boolean;
     sprotocolo : string;
     i : integer;
     senha, senhainv, decrip : String;
     attach : TIdAttachment;
begin
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
                             'Procedimento Adotado: '+dmPrincipal.cdsChamadosproc_adotado.AsString;

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
     finally
          begin
               IdEnvioCli.Disconnect;
               Screen.Cursor := crDefault;
          end;
     end;

end;

procedure TfrmConChamados.enviaEmailAbertura;
var
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
               finally
                    begin
                         IdEnvioCli.Disconnect;
                         Screen.Cursor := crDefault;
                    end;
               end;
          end;
     end;

end;

procedure TfrmConChamados.enviaEmailReabertura;
var
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
               ShowMessage('Aguarde...Enviando e-mail de reabertura de atendimento para o cliente!');
               Screen.Cursor := crHourGlass;
               sprotocolo := '';
               dmPrincipal.qryUsuarios.Close;
               dmPrincipal.qryUsuarios.SQL.Text := 'select * from usuario order by cod_usuario';
               dmPrincipal.qryUsuarios.open;
               if dmPrincipal.qryUsuarios.Locate('cod_usuario',qrymov_chamadocod_usuario.AsInteger,[]) then
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
                    IdMsg.Subject   := 'Oracullos - Reabertura de Atendimento';
                    IdMsg.Body.Text := '[Oracullos - Mensagem Autom?tica]'+#13+#13+
                                       'Caro Cliente '+dmPrincipal.cdsChamadosnome_cliente.AsString+'.'+#13+
                                       'Informamos a reabertura do chamado N?: '+sprotocolo+dmPrincipal.cdsChamadoscod_chamado.AsString+'.'+#13+
                                       'Data e Hora de Reabertura: '+qrymov_chamadodata_movimento.AsString+' - '+qrymov_chamadohora_inic.AsString+'.'+#13+
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
               finally
                    begin
                         IdEnvioCli.Disconnect;
                         Screen.Cursor := crDefault;
                    end;
               end;
          end;
     end;

end;

procedure TfrmConChamados.Reenviaremail1Click(Sender: TObject);
begin
     if dmPrincipal.cdsChamadosnome_usuario_resp.AsString = nome_usuario_login then
     begin
          if dmPrincipal.cdsChamadoscod_status.AsInteger <> 1 then
          begin
               if dmPrincipal.cdsChamadosreincidencia.AsString = 'S' then
               begin
                    qrymov_chamado.Close;
                    qrymov_chamado.SQL.Text := 'select cod_movimento, reabertura, cod_chamado, data_chamado, data_movimento, hora_inic, cod_usuario'+
                                        ' from movimento_chamado m where cod_chamado = '+dmPrincipal.cdsChamadoscod_chamado.AsString+
                                        ' and data_chamado = '+QuotedStr(FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime))+
                                        ' order by cod_movimento desc LIMIT 1';
                    qrymov_chamado.open;
                    if qrymov_chamadoreabertura.AsString = 'S' then
                    begin
                         if (MessageDlg('Deseja reenviar a reabertura do chamado?',
                              mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
                         begin
                              enviaEmailReabertura;
                         end;
                    end
                    else
                    begin
                         if (MessageDlg('Deseja reenviar a abertura do chamado?',
                              mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
                         begin
                              enviaEmailAbertura;
                         end;
                    end;
               end
               else
               begin
                    if (MessageDlg('Deseja reenviar a abertura do chamado?',
                         mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
                    begin
                         enviaEmailAbertura;
                    end;
               end;

               dmPrincipal.qryStatus.Close;
               dmPrincipal.qryStatus.SQL.Text := 'select * from status_chamado order by cod_status';
               dmPrincipal.qryStatus.Open;
               if dmPrincipal.qryStatus.Locate('cod_status',dmPrincipal.cdsChamadoscod_status.AsInteger,[]) then
               begin
                    if dmPrincipal.qryStatusencerra_chamado.AsString = 'S' then
                    begin
                         dmPrincipal.qryCategoria.Close;
                         dmPrincipal.qryCategoria.SQL.Text := 'select * from categoria_chamado order by cod_categoria';
                         dmPrincipal.qryCategoria.Open;
                         if dmPrincipal.qryCategoria.Locate('cod_categoria',dmPrincipal.cdsChamadoscod_categoria.AsInteger,[]) then
                         begin
                              if (MessageDlg('Deseja reenviar a finaliza??o do chamado?',
                                   mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
                              begin
                                   if dmPrincipal.qryCategoriaenvia_email.AsString = 'S' then
                                   begin
                                        enviaEmailCliente;
                                   end
                                   else
                                   begin
                                        ShowMessage('Imposs?vel efetuar o reenvio.'+#10+'A categoria do chamado est? marcada para n?o enviar e-mail!');
                                        Abort;
                                   end;
                              end;
                         end;
                    end;

               end;
          end;
     end
     else
     begin
          ShowMessage('Usu?rio logado difere do usu?rio respons?vel pelo chamado.');
     end;
end;

procedure TfrmConChamados.ReenviaremaildeNotificaodeCobrana1Click(
  Sender: TObject);
var
     conectar   : integer;
     conectado  : Boolean;
     sprotocolo : string;
     i : integer;
     senha, senhainv, decrip : String;
     attach : TIdAttachment;
begin
     if dmPrincipal.cdsChamadosnome_usuario_resp.AsString = nome_usuario_login then
     begin
          if (dmPrincipal.cdsChamadostempo_cobranca.AsString <> '') and (dmPrincipal.cdsChamadostempo_cobranca.AsString <> '0') then
          begin
               if (MessageDlg('Deseja reenviar a notifica??o de cobran?a para o respons?vel?',
                              mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
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
                                            'Tempo para cobran?a (em horas): '+dmPrincipal.cdsChamadostempo_cobranca.AsString+#13+
                                            'Informamos a finaliza??o do chamado N?: '+sprotocolo+dmPrincipal.cdsChamadoscod_chamado.AsString+'.'+#13+
                                            'Data e Hora de Abertura: '+dmPrincipal.cdsChamadosdata_chamado.AsString+' - '+dmPrincipal.cdsChamadoshora_chamado.AsString+ #13+
                                            'Solicitante: '+dmPrincipal.cdsChamadosfuncionario_emp.AsString+#13+
                                            'Solicita??o: '+dmPrincipal.cdsChamadossolicitacao.AsString+#13+
                                            'Data e Hora de Finaliza??o: '+dmPrincipal.cdsChamadosdata_final.AsString+' - '+dmPrincipal.cdsChamadoshora_final.AsString+'.'+#13+
                                            'Atendente : '+dmPrincipal.cdsChamadosnome_usuario_resp.AsString+#13+
                                            'Procedimento Adotado: '+dmPrincipal.cdsChamadosproc_adotado.AsString;

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
                    finally
                         begin
                         IdEnvioCli.Disconnect;
                         Screen.Cursor := crDefault;
                         end;
                    end;
               end;
          end
          else
               ShowMessage('N?o foi encontrado tempo de cobran?a para o chamado selecionado!');
     end
     else
     begin
          ShowMessage('Usu?rio logado difere do usu?rio respons?vel pelo chamado.');
     end;
end;

end.

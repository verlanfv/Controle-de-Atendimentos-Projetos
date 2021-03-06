unit uCONCLIENTES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, ComCtrls,
  DBCtrls, FMTBcd, SqlExpr, Mask, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Provider, DBClient;

type
  TfrmConClientes = class(TForm)

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
    dsClientes: TDataSource;
    pgdados: TPageControl;
    tsdados_gerais: TTabSheet;
    grdClientes: TDBGrid;
    tschecklist: TTabSheet;
    dscliente_checklist_implantacao: TDataSource;
    dscliente_checklist_impl_detal: TDataSource;
    Panel1: TPanel;
    bgerar: TBitBtn;
    balterar: TBitBtn;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    Panel2: TPanel;
    binserir: TBitBtn;
    BitBtn2: TBitBtn;
    DBMemo2: TDBMemo;
    bexcluir: TBitBtn;
    DBGrid2: TDBGrid;
    qrybusca: TSQLQuery;
    Panel3: TPanel;
    rgconcluido: TRadioGroup;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBMemo3: TDBMemo;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Label3: TLabel;
    Panel4: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBMemo4: TDBMemo;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    RadioGroup1: TRadioGroup;
    BitBtn6: TBitBtn;
    cbxAtivo: TComboBox;
    TabSheet1: TTabSheet;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1cod_chamado: TcxGridDBColumn;
    cxGridDBTableView1data_chamado: TcxGridDBColumn;
    cxGridDBTableView1hora_chamado: TcxGridDBColumn;
    cxGridDBTableView1prazo_fim_chamdo: TcxGridDBColumn;
    cxGridDBTableView1nome_usuario_abriu: TcxGridDBColumn;
    cxGridDBTableView1nome_usuario_resp: TcxGridDBColumn;
    cxGridDBTableView1nivel_prioridade: TcxGridDBColumn;
    cxGridDBTableView1origem_chamado: TcxGridDBColumn;
    cxGridDBTableView1tempo_gasto: TcxGridDBColumn;
    cxGridDBTableView1tempo_cobranca: TcxGridDBColumn;
    cxGridDBTableView1data_final: TcxGridDBColumn;
    cxGridDBTableView1hora_final: TcxGridDBColumn;
    cxGridDBTableView1km: TcxGridDBColumn;
    cxGridDBTableView1gera_cronograma_alt: TcxGridDBColumn;
    cxGridDBTableView1cod_status: TcxGridDBColumn;
    cxGridDBTableView1desc_status: TcxGridDBColumn;
    cxGridDBTableView1cod_categoria: TcxGridDBColumn;
    cxGridDBTableView1desc_categoria: TcxGridDBColumn;
    cxGridDBTableView1chamado_automatico: TcxGridDBColumn;
    cxGridDBTableView1gera_compromisso: TcxGridDBColumn;
    cxGridDBTableView1cod_cliente: TcxGridDBColumn;
    cxGridDBTableView1nome_cliente: TcxGridDBColumn;
    cxGridDBTableView1funcionario_emp: TcxGridDBColumn;
    cxGridDBTableView1reincidencia: TcxGridDBColumn;
    cxGridDBTableView1descricao_chamado: TcxGridDBColumn;
    cxGridDBTableView1caminho_arq: TcxGridDBColumn;
    cxGridDBTableView1solicitacao: TcxGridDBColumn;
    cxGridDBTableView1proc_adotado: TcxGridDBColumn;
    cxGridDBTableView1data_gravacao: TcxGridDBColumn;
    cxGridDBTableView1hora_gravacao: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    memoDescChamado: TDBMemo;
    edtCliente: TDBEdit;
    mmoProcedimento: TDBMemo;
    dsChamado: TDataSource;
    qryChamado: TSQLQuery;
    cdsChamado: TClientDataSet;
    qryChamadocod_chamado: TIntegerField;
    qryChamadocod_cliente: TIntegerField;
    qryChamadocod_status: TIntegerField;
    qryChamadocod_categoria: TIntegerField;
    qryChamadonome_cliente: TStringField;
    qryChamadodesc_status: TStringField;
    qryChamadodesc_categoria: TStringField;
    qryChamadodata_chamado: TDateField;
    qryChamadohora_chamado: TTimeField;
    qryChamadoprazo_fim_chamdo: TDateField;
    qryChamadochamado_automatico: TStringField;
    qryChamadonivel_prioridade: TStringField;
    qryChamadodescricao_chamado: TStringField;
    qryChamadocaminho_arq: TStringField;
    qryChamadocod_usuario_resp: TIntegerField;
    qryChamadonome_usuario_resp: TStringField;
    qryChamadonome_usuario_abriu: TStringField;
    qryChamadocod_usuario_abriu: TIntegerField;
    qryChamadofuncionario_emp: TStringField;
    qryChamadoorigem_chamado: TStringField;
    qryChamadotempo_gasto: TFMTBCDField;
    qryChamadodata_final: TDateField;
    qryChamadohora_final: TTimeField;
    qryChamadogera_compromisso: TStringField;
    qryChamadotempo_cobranca: TFMTBCDField;
    qryChamadoreincidencia: TStringField;
    qryChamadohora_gravacao: TTimeField;
    qryChamadodata_gravacao: TDateField;
    qryChamadosolicitacao: TStringField;
    qryChamadoproc_adotado: TStringField;
    qryChamadoemail_solicitante: TStringField;
    qryChamadogera_cronograma_alt: TStringField;
    qryChamadokm: TFMTBCDField;
    qryChamadocod_usuario_cli: TIntegerField;
    qryChamadoemail_solicitante_outro: TStringField;
    dspChamado: TDataSetProvider;
    cdsChamadocod_chamado: TIntegerField;
    cdsChamadocod_cliente: TIntegerField;
    cdsChamadocod_status: TIntegerField;
    cdsChamadocod_categoria: TIntegerField;
    cdsChamadonome_cliente: TStringField;
    cdsChamadodesc_status: TStringField;
    cdsChamadodesc_categoria: TStringField;
    cdsChamadodata_chamado: TDateField;
    cdsChamadohora_chamado: TTimeField;
    cdsChamadoprazo_fim_chamdo: TDateField;
    cdsChamadochamado_automatico: TStringField;
    cdsChamadonivel_prioridade: TStringField;
    cdsChamadodescricao_chamado: TStringField;
    cdsChamadocaminho_arq: TStringField;
    cdsChamadocod_usuario_resp: TIntegerField;
    cdsChamadonome_usuario_resp: TStringField;
    cdsChamadonome_usuario_abriu: TStringField;
    cdsChamadocod_usuario_abriu: TIntegerField;
    cdsChamadofuncionario_emp: TStringField;
    cdsChamadoorigem_chamado: TStringField;
    cdsChamadotempo_gasto: TFMTBCDField;
    cdsChamadodata_final: TDateField;
    cdsChamadohora_final: TTimeField;
    cdsChamadogera_compromisso: TStringField;
    cdsChamadotempo_cobranca: TFMTBCDField;
    cdsChamadoreincidencia: TStringField;
    cdsChamadohora_gravacao: TTimeField;
    cdsChamadodata_gravacao: TDateField;
    cdsChamadosolicitacao: TStringField;
    cdsChamadoproc_adotado: TStringField;
    cdsChamadoemail_solicitante: TStringField;
    cdsChamadogera_cronograma_alt: TStringField;
    cdsChamadokm: TFMTBCDField;
    cdsChamadocod_usuario_cli: TIntegerField;
    cdsChamadoemail_solicitante_outro: TStringField;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    tsPesquisa: TTabSheet;
    DBGrid3: TDBGrid;
    dsPesquisa: TDataSource;
    Panel8: TPanel;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    DBMemo7: TDBMemo;
    BitBtn14: TBitBtn;
    DBGrid4: TDBGrid;
    Panel7: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo6: TDBMemo;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    dsRespostas: TDataSource;
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
    procedure grdClientesTitleClick(Column: TColumn);
    procedure edtOrdemChange(Sender: TObject);
    procedure grdClientesDblClick(Sender: TObject);
    procedure grdClientesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExportaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tschecklistShow(Sender: TObject);
    procedure bgerarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure binserirClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure dscliente_checklist_implantacaoDataChange(Sender: TObject;
      Field: TField);
    procedure BitBtn6Click(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure pgdadosChange(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure tsPesquisaShow(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure BitBtn13Click(Sender: TObject);
    procedure DBGrid3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn14Click(Sender: TObject);
    
  private
     procedure mostra_detalhamento;
    { Private declarations }
  public
     ordem_final : String;
     ordem_ant   : String;
     carac_pesq  : String;
     function on_change(texto,indice,ordem_final : String): Boolean;
  end;

var
  frmConClientes: TfrmConClientes;

implementation

uses DTMPRINCIPAL, uMNTCLIENTES, uPRINCIPAL, uLOGIN, uMAIL;

{$R *.dfm}

procedure TfrmConClientes.btnAdicionaClick(Sender: TObject);
begin
     dmPrincipal.qryClientes.Close;
     dmPrincipal.qryClientes.SQL.Text := 'select * from cliente where '+
                                        ' cod_cliente    ='+ '-1'+
                                        ' order by cod_cliente desc limit 1';
     dmPrincipal.qryClientes.Open;
     dmPrincipal.cdsClientes.Close;
     dmPrincipal.cdsClientes.Open;
     dmPrincipal.cdsClientes.Insert;

     dmPrincipal.qryMail.Close;
     dmPrincipal.qryMail.SQL.Text := 'select * from email_cliente where '+
                                        ' cod_cliente    ='+ '-1'+
                                        ' order by cod_cliente desc limit 1';
     dmPrincipal.qryMail.Open;
     dmPrincipal.cdsMail.Close;
     dmPrincipal.cdsMail.Open;
     dmPrincipal.cdsMail.Insert;

     if not Assigned(frmCadClientes) then
          frmCadClientes := TfrmCadClientes.Create(Self);
     try
          frmCadClientes.ShowModal;
     finally
          begin
               frmCadClientes.Free;
          end;
     end;
     frmCadClientes := nil;
     grdClientes.SetFocus;
end;

procedure TfrmConClientes.btnAlteraClick(Sender: TObject);
begin
     dmPrincipal.qryBloqueados.Close();
     dmPrincipal.qryBloqueados.Open();
     dmPrincipal.cdsBloqueados.Close();
     dmPrincipal.cdsBloqueados.Open();
     if dmPrincipal.cdsBloqueados.Locate('tabela;chave1;chave2;chave3;chave4;chave5',VarArrayOf(['cliente',IntToStr(dmPrincipal.cdsClientescod_cliente.AsInteger),
                                             '0','0','0','0']),[]) then
     begin
          ShowMessage('Registro est? sendo alterado pelo usu?rio: '+dmPrincipal.cdsBloqueadoslogin_bloqueou.AsString);
          Abort;
     end
     else
     begin
          if dmPrincipal.cdsClientescod_cliente.Value <> 0 then
          begin
               if not Assigned(frmCadClientes) then
                    frmCadClientes := TfrmCadClientes.Create(Self);
               try
               begin
                    dmPrincipal.qryMail.close;
                    dmPrincipal.qryMail.sql.text := 'select * from email_cliente where cod_cliente ='+dmPrincipal.cdsClientescod_cliente.AsString;
                    dmPrincipal.qryMail.open;
                    dmPrincipal.cdsMail.Close;
                    dmPrincipal.cdsMail.open;
                    dmPrincipal.cdsMail.Edit;

                    dmPrincipal.qryClientes.SQL.Text := 'select * from cliente where cod_cliente = '+dmPrincipal.cdsClientescod_cliente.AsString;
                    dmPrincipal.cdsClientes.close;
                    dmPrincipal.cdsClientes.open;
                    dmPrincipal.cdsClientes.Edit;
                         frmCadClientes.ShowModal;
               end;
               finally
                    begin
                         frmCadClientes.Free;
                    end;
               end;
               frmCadClientes := nil;
          end;
     end;

     grdClientes.SetFocus
end;

procedure TfrmConClientes.btnExcluiClick(Sender: TObject);
begin
     if dmPrincipal.cdsClientescod_cliente.Value <> 0 then
     begin
          dmPrincipal.qryClientes.SQL.Text := 'select * from cliente where cod_cliente = '+dmPrincipal.cdsClientescod_cliente.AsString;
          dmPrincipal.cdsClientes.close;
          dmPrincipal.cdsClientes.open;

          dmPrincipal.qryBloqueados.Close();
          dmPrincipal.qryBloqueados.Open();
          dmPrincipal.cdsBloqueados.Close();
          dmPrincipal.cdsBloqueados.Open();
          if dmPrincipal.cdsBloqueados.Locate('tabela;chave1;chave2;chave3;chave4;chave5',VarArrayOf(['cliente',IntToStr(dmPrincipal.cdsClientescod_cliente.AsInteger),
                                                  '0','0','0','0']),[]) then
          begin
               ShowMessage('Registro est? sendo alterado pelo usu?rio: '+dmPrincipal.cdsBloqueadoslogin_bloqueou.AsString);
               Abort;
          end
          else
          begin
               if (MessageDlg('Deseja excluir o cliente selecionado ?',
                    mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
               begin
                    dmPrincipal.cdsClientes.Delete;
                    dmPrincipal.cdsClientes.ApplyUpdates(0);
               end;
          end;
     end;
end;

procedure TfrmConClientes.btnSairClick(Sender: TObject);
begin
     if chamou_zoom = true then
          cancelou_zoom := true;
     Close;
end;

procedure TfrmConClientes.btnVisualizaClick(Sender: TObject);
begin
     if cbxAtivo.Text = 'ATIVO' then
     begin
          dmPrincipal.qryClientes.Close;
          dmPrincipal.qryClientes.SQL.Text := 'select * from cliente where ativo = ''S'' order by '+ edtIndice.Text;
          dmPrincipal.qryClientes.Open;
          dmPrincipal.cdsClientes.Close;
          dmPrincipal.cdsClientes.Open;
     end
     else if cbxAtivo.Text = 'INATIVO' then
     begin
          dmPrincipal.qryClientes.Close;
          dmPrincipal.qryClientes.SQL.Text := 'select * from cliente where ativo = ''N'' order by '+ edtIndice.Text;
          dmPrincipal.qryClientes.Open;
          dmPrincipal.cdsClientes.Close;
          dmPrincipal.cdsClientes.Open;
     end
     else if cbxAtivo.Text = 'TODOS' then
     begin
          dmPrincipal.qryClientes.Close;
          dmPrincipal.qryClientes.SQL.Text := 'select * from cliente order by '+ edtIndice.Text;
          dmPrincipal.qryClientes.Open;
          dmPrincipal.cdsClientes.Close;
          dmPrincipal.cdsClientes.Open;
     end;
end;

procedure TfrmConClientes.FormShow(Sender: TObject);
begin
     {if definicao = 'USUARIO' then
     begin
          btnAdiciona.Enabled := False;
          btnExclui.Enabled   := False;
     end;}

     ActiveControl:=edtOrdem;
     dmPrincipal.qryMail.Close;
     dmPrincipal.qryMail.open;
     dmPrincipal.cdsMail.Close;
     dmPrincipal.cdsMail.open;
     dmPrincipal.qryClientes.Close;
     dmPrincipal.qryClientes.SQL.Text := 'select * from cliente where ativo = ''S'' order by cod_cliente';
     dmPrincipal.qryClientes.Open;
     dmPrincipal.cdsClientes.Close;
     dmPrincipal.cdsClientes.Open;

     if cod_cliente_zoom <> 0 then
     begin
          dmPrincipal.cdsClientes.IndexName := 'COD_CLIENTE';
          dmPrincipal.cdsClientes.FindKey([cod_cliente_zoom ]);
          dmPrincipal.cdsClientes.IndexName := '';
          grdClientes.SetFocus;
     end;

end;

procedure TfrmConClientes.btnPrimeiroClick(Sender: TObject);
begin
     dmPrincipal.cdsClientes.First;
     if tschecklist.showing = true then
          tschecklist.onshow(self);
end;

procedure TfrmConClientes.btnAnteriorClick(Sender: TObject);
begin
     dmPrincipal.cdsClientes.Prior;
     if tschecklist.showing = true then
          tschecklist.onshow(self);
end;

procedure TfrmConClientes.btnProximoClick(Sender: TObject);
begin
     dmPrincipal.cdsClientes.Next;
     if tschecklist.showing = true then
          tschecklist.onshow(self);
end;

procedure TfrmConClientes.btnUltimoClick(Sender: TObject);
begin
     dmPrincipal.cdsClientes.Last;
     if tschecklist.showing = true then
          tschecklist.onshow(self);
end;

function TfrmConClientes.on_change(texto, indice,
  ordem_final: String): Boolean;
begin
     texto := StringReplace(texto,'*','%',[rfReplaceAll]);
     indice := AnsiLowerCase(indice);

     if cbxAtivo.Text = 'ATIVO' then
     begin
          if texto <> '' then
          begin
                dmPrincipal.qryClientes.Close;
                dmPrincipal.qryClientes.SQL.Text := 'select * from cliente where cast(' + indice +' as TEXT)'+
                ' like '+ '''' + '%'+texto+'%' + '''' +
                ' and ativo = ''S'''+
                ' order by ' + ansilowercase(ordem_final);

                dmPrincipal.qryClientes.Open;

                dmPrincipal.cdsClientes.Close;
                dmPrincipal.cdsClientes.Open;
          end;
     end
     else if cbxAtivo.Text = 'INATIVO' then
     
     begin
          if texto <> '' then
          begin
                dmPrincipal.qryClientes.Close;
                dmPrincipal.qryClientes.SQL.Text := 'select * from cliente where cast(' + indice +' as TEXT)'+
                ' like '+ '''' + texto + '''' +
                ' and ativo = ''N'''+
                ' order by ' + ansilowercase(ordem_final);

                dmPrincipal.qryClientes.Open;

                dmPrincipal.cdsClientes.Close;
                dmPrincipal.cdsClientes.Open;
          end;
     end
     else if cbxAtivo.Text = 'TODOS' then
     begin
          if texto <> '' then
          begin
                dmPrincipal.qryClientes.Close;
                dmPrincipal.qryClientes.SQL.Text := 'select * from cliente where cast(' + indice +' as TEXT)'+
                ' like '+ '''' + texto + '''' +
                ' order by ' + ansilowercase(ordem_final);

                dmPrincipal.qryClientes.Open;

                dmPrincipal.cdsClientes.Close;
                dmPrincipal.cdsClientes.Open;
          end;
     end;
end;

procedure TfrmConClientes.grdClientesTitleClick(Column: TColumn);
var
     i : integer;
begin
     i := column.Index + 1;

     if cbxAtivo.Text = 'ATIVO' then
     begin
          if ordem_ant <> Column.FieldName then
          begin
               ordem_final := Column.FieldName;
               edtIndice.Text := Column.FieldName;
               ordem_final := '';
               dmPrincipal.qryClientes.close;
               dmPrincipal.qryClientes.SQL.Text := 'select * from cliente where ativo = ''S'' order by '+ edtIndice.Text;
               dmPrincipal.qryClientes.open;
               dmPrincipal.cdsClientes.close;
               dmPrincipal.cdsClientes.Open;
               edtOrdem.Clear;
          end;
     end
     else if cbxAtivo.Text = 'INATIVO' then
     begin
          if ordem_ant <> Column.FieldName then
          begin
               ordem_final := Column.FieldName;
               edtIndice.Text := Column.FieldName;
               ordem_final := '';
               dmPrincipal.qryClientes.close;
               dmPrincipal.qryClientes.SQL.Text := 'select * from cliente where ativo = ''N'' order by '+ edtIndice.Text;
               dmPrincipal.qryClientes.open;
               dmPrincipal.cdsClientes.close;
               dmPrincipal.cdsClientes.Open;
               edtOrdem.Clear;
          end;

     end
     else if cbxAtivo.Text = 'TODOS' then
     BEGIN
          if ordem_ant <> Column.FieldName then
          begin
               ordem_final := Column.FieldName;
               edtIndice.Text := Column.FieldName;
               ordem_final := '';
               dmPrincipal.qryClientes.close;
               dmPrincipal.qryClientes.SQL.Text := 'select * from cliente order by '+ edtIndice.Text;
               dmPrincipal.qryClientes.open;
               dmPrincipal.cdsClientes.close;
               dmPrincipal.cdsClientes.Open;
               edtOrdem.Clear;
          end;

     END;

     with TStringGrid(grdClientes) do
     begin
          Row := 1;
          Col := i;
          SetFocus;
     end;
          edtOrdem.setfocus;


end;

procedure TfrmConClientes.edtOrdemChange(Sender: TObject);
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

procedure TfrmConClientes.grdClientesDblClick(Sender: TObject);
begin
     btnAltera.Click;
end;

procedure TfrmConClientes.grdClientesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if (Key = 4100)       or
        (Key = 4101)       or
        (Key = VK_RETURN) or
        (Key = vk_RETURN)  or
        (Key = 13)         then
        btnAltera.Click;
end;

procedure TfrmConClientes.btnExportaClick(Sender: TObject);
begin
     if chamou_zoom = true then
          Close;
end;

procedure TfrmConClientes.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConClientes.tschecklistShow(Sender: TObject);
begin
     if dmPrincipal.cdsClientes.isempty = false then
     begin
          dmPrincipal.qrycliente_checklist_implantacao.Close();
          dmPrincipal.qrycliente_checklist_implantacao.sql.text := 'select * from cliente_checklist_implantacao where '+
                                                                   ' cod_cliente = '+dmPrincipal.cdsClientescod_cliente.asstring+
                                                                   ' order by cod_cliente,sequencia_item';
          dmPrincipal.qrycliente_checklist_implantacao.Open();
          dmPrincipal.cdscliente_checklist_implantacao.Close();
          dmPrincipal.cdscliente_checklist_implantacao.Open();

          dmPrincipal.qrycliente_checklist_impl_detal.Close();
          dmPrincipal.qrycliente_checklist_impl_detal.sql.text := 'select * from cliente_checklist_impl_detal where '+
                                                                   ' cod_cliente = '+dmPrincipal.cdsClientescod_cliente.asstring+
                                                                   ' order by cod_cliente,sequencia_item,sequencia_detalhamento';
          dmPrincipal.qrycliente_checklist_impl_detal.Open();
          dmPrincipal.cdscliente_checklist_impl_detal.Close();
          dmPrincipal.cdscliente_checklist_impl_detal.Open();
     end
     else
     begin
          dmPrincipal.cdscliente_checklist_implantacao.Close();
          dmPrincipal.cdscliente_checklist_impl_detal.Close();
     end;
end;

procedure TfrmConClientes.bgerarClick(Sender: TObject);
begin
     if dmPrincipal.cdsClientes.isempty = false then
     BEGIN
          dmPrincipal.qryitens_ckecklist.close;
          dmPrincipal.qryitens_ckecklist.SQL.Text := 'select * from itens_ckecklist where '+
                                                     ' ativo = '+''''+'S'+''''+
                                                     ' order by sequencia_item';
          dmPrincipal.qryitens_ckecklist.open;
          dmPrincipal.qryitens_ckecklist.First();
          while not dmPrincipal.qryitens_ckecklist.Eof do
          begin
               qrybusca.close();
               qrybusca.sql.clear();
               qrybusca.sql.add('select sequencia_item from cliente_checklist_implantacao where '+
                               '     cod_cliente    = '+dmPrincipal.cdsClientescod_cliente.asstring+
                               ' and sequencia_item = '+dmPrincipal.qryitens_ckecklistsequencia_item.asstring+
                               ' order by cod_cliente,sequencia_item');
               qrybusca.open();
               if qrybusca.isempty = true then
               begin
                    dmPrincipal.cdscliente_checklist_implantacao.Append();
                    dmPrincipal.cdscliente_checklist_implantacaocod_cliente.asstring     := dmPrincipal.cdsClientescod_cliente.asstring;
                    dmPrincipal.cdscliente_checklist_implantacaosequencia_item.asstring  := dmPrincipal.qryitens_ckecklistsequencia_item.asstring;
                    dmPrincipal.cdscliente_checklist_implantacaodescricao_item.asstring  := dmPrincipal.qryitens_ckecklistdescricao_item.asstring;
                    dmPrincipal.cdscliente_checklist_implantacaoconcluido.asstring       := 'N';
                    dmPrincipal.cdscliente_checklist_implantacaodata_conclusao.Clear;
                    dmPrincipal.cdscliente_checklist_implantacaousr_conclusao.asstring   := '0';
                    dmPrincipal.cdscliente_checklist_implantacaoobservacao.asstring      := '';
                    dmPrincipal.cdscliente_checklist_implantacao.Post();
                    dmPrincipal.cdscliente_checklist_implantacao.ApplyUpdates(0);
               end;

               dmPrincipal.qryitens_ckecklist.Next();
          end;

          tschecklist.onshow(Self);
     END;
end;

procedure TfrmConClientes.BitBtn3Click(Sender: TObject);
begin
     Panel3.visible := false;
     dmPrincipal.cdscliente_checklist_implantacao.cancelupdates();
end;

procedure TfrmConClientes.BitBtn1Click(Sender: TObject);
begin
     if rgconcluido.itemindex = 0 then
          dmPrincipal.cdscliente_checklist_implantacaoconcluido.asstring := 'S'
     else
     if rgconcluido.itemindex = 1 then
          dmPrincipal.cdscliente_checklist_implantacaoconcluido.asstring := 'N'
     else
     if rgconcluido.itemindex = 2 then
          dmPrincipal.cdscliente_checklist_implantacaoconcluido.asstring := 'P'
     else
     if rgconcluido.itemindex = 3 then
          dmPrincipal.cdscliente_checklist_implantacaoconcluido.asstring := 'A';

     if (dmPrincipal.cdscliente_checklist_implantacaoconcluido.asstring = 'S') or
        (dmPrincipal.cdscliente_checklist_implantacaoconcluido.asstring = 'P') then
     begin
          dmPrincipal.cdscliente_checklist_implantacaousr_conclusao.asinteger := cod_usuario_login;
          dmPrincipal.cdscliente_checklist_implantacaodata_conclusao.asdatetime := data_sistema_login;
     end
     else
     begin
          dmPrincipal.cdscliente_checklist_implantacaousr_conclusao.asinteger := 0;
          dmPrincipal.cdscliente_checklist_implantacaodata_conclusao.Clear;
     end;

     dmPrincipal.cdscliente_checklist_implantacao.Post();
     dmPrincipal.cdscliente_checklist_implantacao.ApplyUpdates(0);
     Panel3.visible := false;
end;

procedure TfrmConClientes.balterarClick(Sender: TObject);
begin
     if dmPrincipal.cdscliente_checklist_implantacao.isempty = false then
     begin
          Panel3.visible := true;
          if dmPrincipal.cdscliente_checklist_implantacaoconcluido.asstring = 'S' then
               rgconcluido.itemindex := 0
          else
          if dmPrincipal.cdscliente_checklist_implantacaoconcluido.asstring = 'N' then
               rgconcluido.itemindex := 1
          else
          if dmPrincipal.cdscliente_checklist_implantacaoconcluido.asstring = 'P' then
               rgconcluido.itemindex := 2
          else
          if dmPrincipal.cdscliente_checklist_implantacaoconcluido.asstring = 'A' then
               rgconcluido.itemindex := 3;

          dmPrincipal.cdscliente_checklist_implantacao.Edit();
          
          rgconcluido.setfocus;
     end;
end;

procedure TfrmConClientes.bexcluirClick(Sender: TObject);
begin
     if (MessageDlg('Deseja excluir o detalhamento selecionado ?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     begin
          dmPrincipal.cdscliente_checklist_impl_detal.Delete;
          dmPrincipal.cdscliente_checklist_impl_detal.ApplyUpdates(0);
     end;
end;

procedure TfrmConClientes.binserirClick(Sender: TObject);
begin
     if dmPrincipal.cdscliente_checklist_implantacao.isempty = false then
     begin
          qrybusca.close();
          qrybusca.sql.clear();
          qrybusca.sql.add('select sequencia_detalhamento from cliente_checklist_impl_detal where '+
                          '     cod_cliente    = '+dmPrincipal.cdscliente_checklist_implantacaocod_cliente.asstring+
                          ' and sequencia_item = '+dmPrincipal.cdscliente_checklist_implantacaosequencia_item.asstring+
                          ' order by cod_cliente,sequencia_item,sequencia_detalhamento desc limit 1');
          qrybusca.open();

          dmPrincipal.cdscliente_checklist_impl_detal.Append();
          dmPrincipal.cdscliente_checklist_impl_detalcod_cliente.asstring := dmPrincipal.cdscliente_checklist_implantacaocod_cliente.asstring;
          dmPrincipal.cdscliente_checklist_impl_detalsequencia_item.asstring := dmPrincipal.cdscliente_checklist_implantacaosequencia_item.asstring;
          if qrybusca.isempty = true then
               dmPrincipal.cdscliente_checklist_impl_detalsequencia_detalhamento.asinteger := 1
          else
               dmPrincipal.cdscliente_checklist_impl_detalsequencia_detalhamento.asinteger := qrybusca.fieldbyname('sequencia_detalhamento').asinteger + 1;

          dmPrincipal.cdscliente_checklist_impl_detaldescricao_item.asstring  := dmPrincipal.cdscliente_checklist_implantacaodescricao_item.asstring;
          dmPrincipal.cdscliente_checklist_impl_detaldata_registro.asdatetime := data_sistema_login;
          dmPrincipal.cdscliente_checklist_impl_detalusr_registro.asinteger := cod_usuario_login;

          Panel4.visible := true;
          DBMemo4.setfocus;
     end;
end;

procedure TfrmConClientes.BitBtn5Click(Sender: TObject);
begin
     Panel4.visible := false;
     dmPrincipal.cdscliente_checklist_impl_detal.cancelupdates();
end;

procedure TfrmConClientes.BitBtn2Click(Sender: TObject);
begin
     if dmPrincipal.cdscliente_checklist_impl_detal.IsEmpty = false then
     begin
          Panel4.visible := true;
          dmPrincipal.cdscliente_checklist_impl_detal.edit;
          DBMemo4.setfocus;
     end;
end;

procedure TfrmConClientes.BitBtn4Click(Sender: TObject);
begin
     if DBMemo4.text = '' then
     begin
          showmessage('Informe a observa??o !');
          abort();
     end;

     dmPrincipal.cdscliente_checklist_impl_detal.Post();
     dmPrincipal.cdscliente_checklist_impl_detal.ApplyUpdates(0);
     Panel4.visible := false;
end;

procedure TfrmConClientes.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     
     if (dmPrincipal.cdscliente_checklist_implantacaoconcluido.asstring = 'S') then
     begin
          DBGrid2.Canvas.Brush.Color := clgreen;
          DBGrid2.Canvas.Font.Color  := clwhite;
     end;

     if (dmPrincipal.cdscliente_checklist_implantacaoconcluido.asstring = 'P') then
     begin
          DBGrid2.Canvas.Brush.Color := clyellow;
          DBGrid2.Canvas.Font.Color  := clWindowText;
     end;

     if (dmPrincipal.cdscliente_checklist_implantacaoconcluido.asstring = 'N') then
     begin
          DBGrid2.Canvas.Brush.Color := clRed;
          DBGrid2.Canvas.Font.Color  := clwhite;
     end;
     if (dmPrincipal.cdscliente_checklist_implantacaoconcluido.asstring = 'A') then
     begin
          DBGrid2.Canvas.Brush.Color := clBlack;
          DBGrid2.Canvas.Font.Color  := clwhite;
     end;

     DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmConClientes.DBGrid2DblClick(Sender: TObject);
begin
     balterar.click;
end;

procedure TfrmConClientes.DBGrid1DblClick(Sender: TObject);
begin
     BitBtn2.click;
end;

procedure TfrmConClientes.RadioGroup1Click(Sender: TObject);
begin
     mostra_detalhamento;
end;

procedure TfrmConClientes.mostra_detalhamento;
begin
     if RadioGroup1.itemindex = 0 then
     begin
          dmPrincipal.qrycliente_checklist_impl_detal.Close();
          dmPrincipal.qrycliente_checklist_impl_detal.sql.text := 'select * from cliente_checklist_impl_detal where '+
                                                                   ' cod_cliente = '+dmPrincipal.cdsClientescod_cliente.asstring+
                                                                   ' order by cod_cliente,sequencia_item,sequencia_detalhamento';
          dmPrincipal.qrycliente_checklist_impl_detal.Open();
          dmPrincipal.cdscliente_checklist_impl_detal.Close();
          dmPrincipal.cdscliente_checklist_impl_detal.Open();
     end
     else
     begin
          if dmPrincipal.cdscliente_checklist_implantacao.isempty = false then
          begin
               dmPrincipal.qrycliente_checklist_impl_detal.Close();
               dmPrincipal.qrycliente_checklist_impl_detal.sql.text := 'select * from cliente_checklist_impl_detal where '+
                                                                        '     cod_cliente    = '+dmPrincipal.cdscliente_checklist_implantacaocod_cliente.asstring+
                                                                        ' and sequencia_item = '+dmPrincipal.cdscliente_checklist_implantacaosequencia_item.asstring+
                                                                        ' order by cod_cliente,sequencia_item,sequencia_detalhamento';
               dmPrincipal.qrycliente_checklist_impl_detal.Open();
               dmPrincipal.cdscliente_checklist_impl_detal.Close();
               dmPrincipal.cdscliente_checklist_impl_detal.Open();
          end
          else
          begin
               dmPrincipal.qrycliente_checklist_impl_detal.Close();
               dmPrincipal.qrycliente_checklist_impl_detal.sql.text := 'select * from cliente_checklist_impl_detal where '+
                                                                        ' cod_cliente = '+dmPrincipal.cdsClientescod_cliente.asstring+
                                                                        ' order by cod_cliente,sequencia_item,sequencia_detalhamento';
               dmPrincipal.qrycliente_checklist_impl_detal.Open();
               dmPrincipal.cdscliente_checklist_impl_detal.Close();
               dmPrincipal.cdscliente_checklist_impl_detal.Open();
          end;
     end;
end;

procedure TfrmConClientes.dscliente_checklist_implantacaoDataChange(
  Sender: TObject; Field: TField);
begin
     mostra_detalhamento;
end;

procedure TfrmConClientes.BitBtn6Click(Sender: TObject);
begin
     if (MessageDlg('Deseja excluir checklist selecionado ?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     begin
          dmPrincipal.cdscliente_checklist_implantacao.Delete;
          dmPrincipal.cdscliente_checklist_implantacao.ApplyUpdates(0);
     end;
end;

procedure TfrmConClientes.cxGridDBTableView1CustomDrawCell(
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

procedure TfrmConClientes.pgdadosChange(Sender: TObject);
begin
     qryChamado.close;
     qryChamado.SQL.text := 'select * from chamado where cod_cliente = '+ dmPrincipal.cdsClientescod_cliente.AsString +' order by data_chamado desc';
     qryChamado.open;
     cdsChamado.Close;
     cdsChamado.open;
end;

procedure TfrmConClientes.BitBtn11Click(Sender: TObject);
begin
     Panel7.visible := false;
     dmPrincipal.cdscliente_respostas_pesquisa.cancelupdates();
end;

procedure TfrmConClientes.BitBtn10Click(Sender: TObject);
begin
     if DBMemo6.text = '' then
     begin
          showmessage('Informe uma resposta !');
          abort();
     end;
     //dmPrincipal.cdscliente_respostas_pesquisausr_inclusao.asinteger   := cod_usuario_login;
     //dmPrincipal.cdscliente_respostas_pesquisadata_inclusao.asdatetime := data_sistema_login;
     //dmPrincipal.cdscliente_respostas_pesquisahora_inclusao.asdatetime := Time;
     dmPrincipal.cdscliente_respostas_pesquisa.Post();
     dmPrincipal.cdscliente_respostas_pesquisa.ApplyUpdates(0);
     Panel7.visible := false;
end;

procedure TfrmConClientes.tsPesquisaShow(Sender: TObject);
begin
     if dmPrincipal.cdsClientes.isempty = false then
     begin
          dmPrincipal.qrycliente_perguntas_pesquisa.Close();
          dmPrincipal.qrycliente_perguntas_pesquisa.sql.text := 'select * from cliente_perguntas_pesquisa'+
                                                                   ' order by sequencia';
          dmPrincipal.qrycliente_perguntas_pesquisa.Open();
          dmPrincipal.cdscliente_perguntas_pesquisa.Close();
          dmPrincipal.cdscliente_perguntas_pesquisa.Open();
     end
     else
     begin
          dmPrincipal.cdscliente_perguntas_pesquisa.Close();
     end;

     if dmPrincipal.cdscliente_perguntas_pesquisa.isempty = false then
     begin
          dmPrincipal.qrycliente_respostas_pesquisa.Close();
          dmPrincipal.qrycliente_respostas_pesquisa.sql.text := 'select * from cliente_respostas_pesquisa where '+
                                                                ' cod_cliente    = '+dmPrincipal.cdsClientescod_cliente.asstring+
                                                                ' and sequencia = '+dmPrincipal.cdscliente_perguntas_pesquisasequencia.asstring+
                                                                ' order by sequencia_resposta';
          dmPrincipal.qrycliente_respostas_pesquisa.Open();
          dmPrincipal.cdscliente_respostas_pesquisa.Close();
          dmPrincipal.cdscliente_respostas_pesquisa.Open();
     end
     else
     begin
          dmPrincipal.cdscliente_respostas_pesquisa.Close();
     end;
end;

procedure TfrmConClientes.BitBtn12Click(Sender: TObject);
begin
     if dmPrincipal.cdscliente_perguntas_pesquisa.isempty = false then
     begin
          qrybusca.close();
          qrybusca.sql.clear();
          qrybusca.sql.add('select sequencia_resposta from cliente_respostas_pesquisa where '+
                           '     cod_cliente    = '+dmPrincipal.cdsClientescod_cliente.asstring+
                           ' and sequencia = '+dmPrincipal.cdscliente_perguntas_pesquisasequencia.asstring+
                           ' order by cod_cliente,sequencia,sequencia_resposta desc limit 1');
          qrybusca.open();

          dmPrincipal.cdscliente_respostas_pesquisa.Append();
          dmPrincipal.cdscliente_respostas_pesquisacod_cliente.asstring      := dmPrincipal.cdsClientescod_cliente.asstring;
          dmPrincipal.cdscliente_respostas_pesquisasequencia.asstring        := dmPrincipal.cdscliente_perguntas_pesquisasequencia.asstring;
          if qrybusca.isempty = true then
               dmPrincipal.cdscliente_respostas_pesquisasequencia_resposta.asinteger := 1
          else
               dmPrincipal.cdscliente_respostas_pesquisasequencia_resposta.asinteger := qrybusca.fieldbyname('sequencia_resposta').asinteger + 1;

          dmPrincipal.cdscliente_respostas_pesquisadescr_pergunta.asstring    := dmPrincipal.cdscliente_perguntas_pesquisadescr_pergunta.asstring;
          dmPrincipal.cdscliente_respostas_pesquisadata_inclusao.asdatetime   := data_sistema_login;
          dmPrincipal.cdscliente_respostas_pesquisahora_inclusao.asdatetime   := time;
          dmPrincipal.cdscliente_respostas_pesquisausr_inclusao.asinteger     := cod_usuario_login;

          Panel7.visible := true;
          DBMemo6.setfocus;
     end;
end;

procedure TfrmConClientes.DBGrid3CellClick(Column: TColumn);
begin
     if dmPrincipal.cdscliente_perguntas_pesquisa.isempty = false then
     begin
          dmPrincipal.qrycliente_respostas_pesquisa.Close();
          dmPrincipal.qrycliente_respostas_pesquisa.sql.text := 'select * from cliente_respostas_pesquisa where '+
                                                                ' cod_cliente    = '+dmPrincipal.cdsClientescod_cliente.asstring+
                                                                ' and sequencia = '+dmPrincipal.cdscliente_perguntas_pesquisasequencia.asstring+
                                                                ' order by sequencia_resposta';
          dmPrincipal.qrycliente_respostas_pesquisa.Open();
          dmPrincipal.cdscliente_respostas_pesquisa.Close();
          dmPrincipal.cdscliente_respostas_pesquisa.Open();
     end
     else
     begin
          dmPrincipal.cdscliente_respostas_pesquisa.Close();
     end;
end;

procedure TfrmConClientes.BitBtn13Click(Sender: TObject);
begin
     if dmPrincipal.cdscliente_respostas_pesquisa.IsEmpty = false then
     begin
          Panel7.visible := true;
          dmPrincipal.cdscliente_respostas_pesquisa.edit;
          DBMemo6.setfocus;
     end;
end;

procedure TfrmConClientes.DBGrid3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if dmPrincipal.cdscliente_perguntas_pesquisa.isempty = false then
     begin
          dmPrincipal.qrycliente_respostas_pesquisa.Close();
          dmPrincipal.qrycliente_respostas_pesquisa.sql.text := 'select * from cliente_respostas_pesquisa where '+
                                                                ' cod_cliente    = '+dmPrincipal.cdsClientescod_cliente.asstring+
                                                                ' and sequencia = '+dmPrincipal.cdscliente_perguntas_pesquisasequencia.asstring+
                                                                ' order by sequencia_resposta';
          dmPrincipal.qrycliente_respostas_pesquisa.Open();
          dmPrincipal.cdscliente_respostas_pesquisa.Close();
          dmPrincipal.cdscliente_respostas_pesquisa.Open();
     end
     else
     begin
          dmPrincipal.cdscliente_respostas_pesquisa.Close();
     end;
end;

procedure TfrmConClientes.BitBtn14Click(Sender: TObject);
begin
     if (MessageDlg('Deseja excluir a resposta selecionada ?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     begin
          dmPrincipal.cdscliente_respostas_pesquisa.Delete;
          dmPrincipal.cdscliente_respostas_pesquisa.ApplyUpdates(0);
     end;
end;

end.

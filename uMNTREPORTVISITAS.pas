unit uMNTREPORTVISITAS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, Mask, DBCtrls, StdCtrls, ComCtrls, DB,
  FMTBcd, SqlExpr, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, IdAttachment, Grids, DBGrids,
  IdExplicitTLSClientServerBase, IdSMTPBase;

type
  TfrmReportVisita = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtCodReport: TEdit;
    edtCodCliente: TDBEdit;
    edtNomeCliente: TEdit;
    edtCodUsuario: TDBEdit;
    edtNomeUsuario: TEdit;
    Panel1: TPanel;
    Label4: TLabel;
    btnBuscaCliente: TSpeedButton;
    btnBuscaUsuario: TSpeedButton;
    edtData: TDateTimePicker;
    Label5: TLabel;
    edtTempoGasto: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    mmoMotivoVisita: TDBMemo;
    mmoTarefaExecutada: TDBMemo;
    chxNovaVisita: TDBCheckBox;
    Label8: TLabel;
    mmoNovaVisita: TDBMemo;
    Label9: TLabel;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    dsReport: TDataSource;
    edtContato: TDBEdit;
    Label10: TLabel;
    mmoResultados: TDBMemo;
    Label11: TLabel;
    Label12: TLabel;
    edtCompromisso: TEdit;
    Label14: TLabel;
    edtHrIni: TMaskEdit;
    edtHrFim: TMaskEdit;
    Label13: TLabel;
    qrytempo_total: TSQLQuery;
    IdEnvioCli: TIdSMTP;
    IdMsg: TIdMessage;
    Label15: TLabel;
    edtCaminho: TDBEdit;
    btnAbrir: TBitBtn;
    OpenDialog: TOpenDialog;
    Panel2: TPanel;
    Label16: TLabel;
    Panel3: TPanel;
    grdModulo: TDBGrid;
    dsDetalhe: TDataSource;
    mmoDetalhamento: TDBMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label17: TLabel;
    Label18: TLabel;
    chxMotivo1: TDBCheckBox;
    chxMotivo2: TDBCheckBox;
    chxMotivo3: TDBCheckBox;
    chxMotivo4: TDBCheckBox;
    chxMotivo5: TDBCheckBox;
    chxMotivo6: TDBCheckBox;
    chxMotivo7: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure chxNovaVisitaClick(Sender: TObject);
    procedure edtCodClienteExit(Sender: TObject);
    procedure btnBuscaClienteClick(Sender: TObject);
    procedure edtCodUsuarioExit(Sender: TObject);
    procedure btnBuscaUsuarioClick(Sender: TObject);
    procedure mmoMotivoVisitaKeyPress(Sender: TObject; var Key: Char);
    procedure mmoTarefaExecutadaKeyPress(Sender: TObject; var Key: Char);
    procedure mmoNovaVisitaKeyPress(Sender: TObject; var Key: Char);
    procedure mmoResultadosKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtHrFimExit(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure enviaEmailCliente;
  end;

var
  frmReportVisita: TfrmReportVisita;
  bGeraNovaVisita : Boolean;
implementation

uses DTMPRINCIPAL, uPRINCIPAL, uCONCLIENTES, uUSUARIOS, uMNTCOMPCLIENTE,
  uMNTCHAMADOS, uLOGIN, Math, uMNTDETALHEMODULO, uPROCEDIMENTOADOTADO;

{$R *.dfm}

procedure TfrmReportVisita.FormClose(Sender: TObject; var Action: TCloseAction);
var
     sdata : string;
begin
     sdata := '';
     sdata := FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsCompromissosdata_chamado.AsDateTime);

     if dsReport.State in [dsInsert] then
     begin
          dmPrincipal.cdsReport.CancelUpdates;
          dmPrincipal.qryCompromissos.Close;
          dmPrincipal.qryCompromissos.SQL.Text := 'select * from compromissos_cliente where cod_chamado = '+ dmPrincipal.cdsCompromissoscod_chamado.AsString+
                                             ' and data_chamado = '+QuotedStr(sdata)+' and cod_compromisso = '+dmPrincipal.cdsCompromissoscod_compromisso.AsString;
          dmPrincipal.qryCompromissos.open;
          dmPrincipal.cdsCompromissos.close;
          dmPrincipal.cdsCompromissos.open;
          dmPrincipal.cdsCompromissos.Edit;
          dmPrincipal.cdsCompromissosfinalizado.AsString := 'N';
          dmPrincipal.cdsCompromissos.Post;
          dmPrincipal.cdsCompromissos.ApplyUpdates(0);

          dmPrincipal.qryCompromissos.Close;
          dmPrincipal.qryCompromissos.SQL.Text := 'select * from compromissos_cliente where cod_chamado = '+ dmPrincipal.cdsCompromissoscod_chamado.AsString+
                                             ' and data_chamado = '+QuotedStr(sdata);
          dmPrincipal.qryCompromissos.open;
          dmPrincipal.cdsCompromissos.close;
          dmPrincipal.cdsCompromissos.open;
          //-------------------------------------------------------------------------------------------------------//
          dmPrincipal.qryDetalheModulo.SQL.Text := 'delete from detalhe_modulo_atendimento where'+
                                                       ' cod_compromisso  = '+dmPrincipal.cdsCompromissoscod_compromisso.AsString+
                                                       ' and cod_report   = '+dmPrincipal.cdsReportcod_report.AsString+
                                                       ' and cod_chamado  = '+dmPrincipal.cdsCompromissoscod_chamado.AsString+
                                                       ' and data_chamado = '+QuotedStr(sdata);
          dmPrincipal.qryDetalheModulo.ExecSQL;
          //-----------------------------------------------------------------------------------------------------------------//
     end;
     if dsReport.State in [dsEdit] then
     begin
          dmPrincipal.cdsReport.CancelUpdates;
     end;
end;

procedure TfrmReportVisita.btnCancelarClick(Sender: TObject);
var
     sdata : string;
begin
     sdata := '';
     sdata := FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsCompromissosdata_chamado.AsDateTime);

     if dsReport.State in [dsInsert] then
     begin
       //--------------------------------------------------------------------------------------------//
          dmPrincipal.qryDetalheModulo.SQL.Text := 'delete from detalhe_modulo_atendimento where'+
                                                       ' cod_compromisso  = '+dmPrincipal.cdsCompromissoscod_compromisso.AsString+
                                                       ' and cod_report   = '+dmPrincipal.cdsReportcod_report.AsString+
                                                       ' and cod_chamado  = '+dmPrincipal.cdsCompromissoscod_chamado.AsString+
                                                       ' and data_chamado = '+QuotedStr(sdata);
          dmPrincipal.qryDetalheModulo.ExecSQL;
       //-----------------------------------------------------------------------------------------------------//

          dmPrincipal.cdsReport.CancelUpdates;
          dmPrincipal.qryCompromissos.Close;
          dmPrincipal.qryCompromissos.SQL.Text := 'select * from compromissos_cliente where cod_chamado = '+ dmPrincipal.cdsCompromissoscod_chamado.AsString+
                                             ' and data_chamado = '+QuotedStr(sdata)+' and cod_compromisso = '+dmPrincipal.cdsCompromissoscod_compromisso.AsString;
          dmPrincipal.qryCompromissos.open;
          dmPrincipal.cdsCompromissos.close;
          dmPrincipal.cdsCompromissos.open;
          dmPrincipal.cdsCompromissos.Edit;
          dmPrincipal.cdsCompromissosfinalizado.AsString := 'N';
          dmPrincipal.cdsCompromissos.Post;
          dmPrincipal.cdsCompromissos.ApplyUpdates(0);

          dmPrincipal.qryCompromissos.Close;
          dmPrincipal.qryCompromissos.SQL.Text := 'select * from compromissos_cliente where cod_chamado = '+ dmPrincipal.cdsCompromissoscod_chamado.AsString+
                                                  ' and data_chamado = '+QuotedStr(sdata);
          dmPrincipal.qryCompromissos.open;
          dmPrincipal.cdsCompromissos.close;
          dmPrincipal.cdsCompromissos.open;


     end;
     if dsReport.State in [dsEdit] then
     begin
          dmPrincipal.cdsReport.CancelUpdates;
     end;
     close;
end;

procedure TfrmReportVisita.FormShow(Sender: TObject);
var
     cod_report :Integer;
     sdata : string;
begin
     bGeraNovaVisita := false;
     if dsReport.State in [dsEdit] then
     begin
          edtHrIni.Text          := FormatDateTime('hh:nn',dmPrincipal.cdsReporthora_ini.AsDateTime);
          edtHrFim.Text          := FormatDateTime('hh:nn',dmPrincipal.cdsReporthora_fim.AsDateTime);
          chxNovaVisita.ReadOnly := True;
          mmoNovaVisita.ReadOnly := True;
          edtCompromisso.Text    := dmPrincipal.cdsReportcod_compromisso.AsString;
          edtCodReport.Text      := IntToStr(dmPrincipal.cdsReportcod_report.AsInteger);
          edtData.Enabled        := False;
          edtData.Date           := dmPrincipal.cdsReportdata_visita.AsDateTime;
          edtCodCliente.OnExit(Self);
          edtCodUsuario.OnExit(Self);
        //-------------------------------------------------------------------------------------//
          sdata := FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsReportdata_chamado.AsDateTime);
          dmPrincipal.qryDetalheModulo.Close;
          dmPrincipal.qryDetalheModulo.SQL.Text := 'select * from detalhe_modulo_atendimento where '+
                                                       ' cod_compromisso  = '+dmPrincipal.cdsReportcod_compromisso.AsString+
                                                       ' and cod_report   = '+dmPrincipal.cdsReportcod_report.AsString+
                                                       ' and cod_chamado  = '+dmPrincipal.cdsReportcod_chamado.AsString+
                                                       ' and data_chamado = '+QuotedStr(sdata);

          dmPrincipal.qryDetalheModulo.Open;
          dmPrincipal.cdsDetalheModulo.Close;
          dmPrincipal.cdsDetalheModulo.Open;
        //----------------------------------------------------------------------------//
     end;

     if dsReport.State in [dsInsert] then
     begin
          chxNovaVisita.ReadOnly := False;
          mmoNovaVisita.ReadOnly := False;
          dmPrincipal.cdsReportnecessita_nova_visita.AsString     := 'N';
          dmPrincipal.cdsReportmotivo_treinamento.AsString        := 'N';
          dmPrincipal.cdsReportmotivo_duvidas_cliente.AsString    := 'N';
          dmPrincipal.cdsReportmotivo_levantamento_dados.AsString := 'N';
          dmPrincipal.cdsReportmotivo_outros.AsString             := 'N';
          dmPrincipal.cdsReportmotivo_analise_oper.AsString       := 'N';
          dmPrincipal.cdsReportmotivo_config_sistema.AsString     := 'N';
          dmPrincipal.cdsReportmotivo_analise_erro.AsString       := 'N';
          edtData.Enabled := true;
          edtData.Date := Date;
          edtCompromisso.Text := dmPrincipal.cdsCompromissoscod_compromisso.AsString;
          edtCodCliente.Text  := dmPrincipal.cdsCompromissoscod_cliente.AsString;
          edtNomeCliente.Text := dmPrincipal.cdsCompromissosnome_cliente.AsString;
          edtCodUsuario.Text  := dmPrincipal.cdsCompromissoscod_usuario.AsString;
          edtNomeUsuario.Text := dmPrincipal.cdsCompromissosnome_usuario.AsString;

         //--------------------------------------------------------------------------//
          dmPrincipal.qryDetalheModulo.Close;
          dmPrincipal.qryDetalheModulo.SQL.Text := 'select * from detalhe_modulo_atendimento where '+
                                                       ' cod_modulo    ='+ '-1'+
                                                       ' order by cod_modulo desc limit 1';
          dmPrincipal.qryDetalheModulo.Open;
          dmPrincipal.cdsDetalheModulo.Close;
          dmPrincipal.cdsDetalheModulo.Open;
         //--------------------------------------------------------//

          sdata := FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsCompromissosdata_chamado.AsDateTime);
          dmPrincipal.qryTemp.close;
          dmPrincipal.qryTemp.SQL.Clear;
          dmPrincipal.qryTemp.SQL.Add('select max(cod_report) as codigo from report_visita where cod_compromisso = '+
                                      dmPrincipal.cdsCompromissoscod_compromisso.AsString+' and cod_chamado = '+dmPrincipal.cdsCompromissoscod_chamado.AsString+
                                      ' and data_chamado = '+QuotedStr(sdata));
          dmPrincipal.qryTemp.open;
          cod_report := dmPrincipal.qryTemp.FieldByName('codigo').AsInteger;
          dmPrincipal.cdsReportcod_report.AsInteger := cod_report + 1;
     end;
end;

procedure TfrmReportVisita.btnSalvarClick(Sender: TObject);
var
     cod_report :Integer;
     sdata : string;
     tmp_movimento : Currency;
     tmp_report    : Currency;
begin
     tmp_movimento := 0;
     tmp_report    := 0;
     sdata := '';
     edtCodCliente.OnExit(Self);
     edtCodUsuario.OnExit(Self);
     if (edtCodCliente.Text = '') or (edtNomeCliente.Text = '') then
     begin
          ShowMessage('O cliente n?o pode ser nulo! ');
          edtCodCliente.SetFocus;
          Abort;
     end;
     if (edtCodUsuario.Text = '') or (edtNomeUsuario.Text = '') then
     begin
          ShowMessage('O usu?rio n?o pode ser nulo! ');
          edtCodUsuario.SetFocus;
          Abort;
     end;
     if edtContato.Text = '' then
     begin
          ShowMessage('O contato n?o pode ser nulo! ');
          edtContato.SetFocus;
          Abort;
     end;
     if edtData.Date = Null then
     begin
          ShowMessage('A data da visita n?o pode ser nula! ');
          edtData.SetFocus;
          Abort;
     end;
     if edtHrIni.Text = '  :  ' then
     begin
          ShowMessage('A hora inicial da visita n?o pode ser nula! ');
          edtHrIni.SetFocus;
          Abort;
     end;
     if edtHrFim.Text = '  :  ' then
     begin
          ShowMessage('A hora final da visita n?o pode ser nula! ');
          edtHrFim.SetFocus;
          Abort;
     end;
     if edtTempoGasto.Text = '' then
     begin
          ShowMessage('O tempo gasto n?o pode ser nulo! ');
          edtTempoGasto.SetFocus;
          Abort;
     end;
     if mmoMotivoVisita.Text = '' then
     begin
          ShowMessage('O motivo da visita n?o pode ser nulo! ');
          mmoMotivoVisita.SetFocus;
          Abort;
     end;
     if mmoTarefaExecutada.Text = '' then
     begin
          ShowMessage('A tarefa executada n?o pode ser nula! ');
          mmoTarefaExecutada.SetFocus;
          Abort;
     end;

     {if dsReport.State in [dsInsert] then
     begin
          sdata := FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsCompromissosdata_chamado.AsDateTime);
          dmPrincipal.qryTemp.close;
          dmPrincipal.qryTemp.SQL.Clear;
          dmPrincipal.qryTemp.SQL.Add('select max(cod_report) as codigo from report_visita where cod_compromisso = '+
                                      dmPrincipal.cdsCompromissoscod_compromisso.AsString+' and cod_chamado = '+dmPrincipal.cdsCompromissoscod_chamado.AsString+
                                      ' and data_chamado = '+QuotedStr(sdata));
          dmPrincipal.qryTemp.open;
          cod_report := dmPrincipal.qryTemp.FieldByName('codigo').AsInteger;
          dmPrincipal.cdsReportcod_report.AsInteger := cod_report + 1;

     end;}
     if not chxNovaVisita.Checked then
          dmPrincipal.cdsReportmotivo_nova_visita.Clear;


     dmPrincipal.cdsReportdata_visita.AsDateTime   := edtData.Date;
     dmPrincipal.cdsReportnome_usuario.AsString    := edtNomeUsuario.Text;
     dmPrincipal.cdsReportnome_cliente.AsString    := edtNomeCliente.Text;
     dmPrincipal.cdsReportcod_compromisso.AsString := edtCompromisso.Text;
     dmPrincipal.cdsReportcod_chamado.AsInteger    := dmPrincipal.cdsCompromissoscod_chamado.AsInteger;
     dmPrincipal.cdsReportdata_chamado.AsDateTime  := dmPrincipal.cdsCompromissosdata_chamado.AsDateTime;
     dmPrincipal.cdsReporthora_ini.AsDateTime      := StrToTime(edtHrIni.Text);
     dmPrincipal.cdsReporthora_fim.AsDateTime      := StrToTime(edtHrFim.Text);
     dmPrincipal.cdsReport.Post;
     dmPrincipal.cdsReport.ApplyUpdates(0);

     //----------------------- Soma o tempo total do chamado -------------------------------------//
     sdata := FormatDateTime('yyyy/mm/dd', dmPrincipal.cdsCompromissosdata_chamado.AsDateTime);
     dmPrincipal.qryChamados.Close;
     dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where cod_chamado = '+ dmPrincipal.cdsCompromissoscod_chamado.AsString+
                                              ' and data_chamado = '+QuotedStr(sdata); ;
     dmPrincipal.qryChamados.open;
     dmPrincipal.cdsChamados.close;
     dmPrincipal.cdsChamados.open;
     dmPrincipal.cdsChamados.Edit;
     qrytempo_total.Close;
     qrytempo_total.SQL.Text := 'select sum(tempo_gasto) as total from movimento_chamado where cod_chamado = '+IntToStr(dmPrincipal.cdsCompromissoscod_chamado.Asinteger)+
                                ' and data_chamado = '+QuotedStr(sdata);
     qrytempo_total.open;
     tmp_movimento := qrytempo_total.fieldbyname('total').AsCurrency;

     qrytempo_total.Close;
     qrytempo_total.SQL.Text := 'select sum(tempo_gasto) as total from report_visita where cod_chamado = '+IntToStr(dmPrincipal.cdsCompromissoscod_chamado.AsInteger)+
                                ' and data_chamado = '+QuotedStr(sdata);
     qrytempo_total.open;
     tmp_report := qrytempo_total.fieldbyname('total').AsCurrency;
     dmPrincipal.cdsChamadostempo_gasto.AsCurrency := (tmp_movimento + tmp_report);
    //----------------------------------------------------------------------------------//

     dmPrincipal.cdsChamados.Post;
     dmPrincipal.cdsChamados.ApplyUpdates(0);


     if (dmPrincipal.cdsReportnecessita_nova_visita.AsString = 'N') and (chxNovaVisita.ReadOnly = false) then
     begin
          sdata := FormatDateTime('yyyy/mm/dd', dmPrincipal.cdsCompromissosdata_chamado.AsDateTime);
          dmPrincipal.qryChamados.Close;
          dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where cod_chamado = '+ dmPrincipal.cdsCompromissoscod_chamado.AsString+
                                              ' and data_chamado = '+QuotedStr(sdata); ;
          dmPrincipal.qryChamados.open;
          dmPrincipal.cdsChamados.close;
          dmPrincipal.cdsChamados.open;
          dmPrincipal.cdsChamados.Edit;
          dmPrincipal.cdsChamadoscod_status.AsInteger  := 3;
          dmPrincipal.cdsChamadosdesc_status.AsString  := 'FINALIZADO';
          dmPrincipal.cdsChamadoshora_final.AsDateTime := dmPrincipal.cdsReporthora_fim.AsDateTime;
          dmPrincipal.cdsChamadosdata_final.AsDateTime := dmPrincipal.cdsReportdata_visita.AsDateTime;
          //========= Soma o tempo total do chamado ======//
          {qrytempo_total.Close;
          qrytempo_total.SQL.Text := 'select sum(tempo_gasto) as total from movimento_chamado where cod_chamado = '+IntToStr(dmPrincipal.cdsCompromissoscod_chamado.Asinteger)+
                                ' and data_chamado = '+QuotedStr(sdata);
          qrytempo_total.open;
          tmp_movimento := qrytempo_total.fieldbyname('total').AsCurrency;

          qrytempo_total.Close;
          qrytempo_total.SQL.Text := 'select sum(tempo_gasto) as total from report_visita where cod_chamado = '+IntToStr(dmPrincipal.cdsCompromissoscod_chamado.AsInteger)+
                                ' and data_chamado = '+QuotedStr(sdata);
          qrytempo_total.open;
          tmp_report := qrytempo_total.fieldbyname('total').AsCurrency;
          dmPrincipal.cdsChamadostempo_gasto.AsCurrency := (tmp_movimento + tmp_report);}

          dmPrincipal.cdsChamados.Post;
          dmPrincipal.cdsChamados.ApplyUpdates(0);

          dmPrincipal.qryMovChamado.Close;
          dmPrincipal.qryMovChamado.SQL.Text := 'select * from movimento_chamado where cod_chamado = '+ dmPrincipal.cdsChamadoscod_chamado.AsString+
                                                ' and data_chamado = '+QuotedStr(sdata)+' order by cod_movimento desc limit 1';
          dmPrincipal.qryMovChamado.open;
          if not dmPrincipal.qryMovChamado.IsEmpty then
          begin
               dmPrincipal.cdsMovChamado.close;
               dmPrincipal.cdsMovChamado.open;
               dmPrincipal.cdsMovChamado.Edit;
               dmPrincipal.cdsMovChamadocod_status.AsInteger := 3;
               dmPrincipal.cdsMovChamadodesc_status.AsString := 'FINALIZADO';
               //dmPrincipal.cdsMovChamadohora_fim.AsDateTime  := dmPrincipal.cdsReporthora_fim.AsDateTime;
               //dmPrincipal.cdsMovChamadodata_fim.AsDateTime  := dmPrincipal.cdsReportdata_visita.AsDateTime;
               dmPrincipal.cdsMovChamado.Post;
               dmPrincipal.cdsMovChamado.ApplyUpdates(0);
          end;
          enviaEmailCliente;

     end
     else if (dmPrincipal.cdsReportnecessita_nova_visita.AsString = 'S') and (chxNovaVisita.ReadOnly = false) then
     begin
          bGeraNovaVisita := true;
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

     close;

end;

procedure TfrmReportVisita.chxNovaVisitaClick(Sender: TObject);
begin
     if dsReport.State in [dsInsert] then
     begin
          if chxNovaVisita.Checked then
          begin
               mmoNovaVisita.Enabled := True;
               mmoNovaVisita.SetFocus;
          end
          else
          begin
               mmoNovaVisita.Enabled := False;
               mmoNovaVisita.Clear;
          end;
     end;
end;

procedure TfrmReportVisita.edtCodClienteExit(Sender: TObject);
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

procedure TfrmReportVisita.btnBuscaClienteClick(Sender: TObject);
var result : boolean;
begin
     if (edtCodCliente.enabled  = false) or
        (edtCodCliente.readonly = true)  then
          Exit;

     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConClientes <> nil then
          frmConClientes := nil;

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
          dmPrincipal.cdsReportcod_cliente.AsString := edtCodCliente.Text;
     end;

     edtCodCliente.OnExit(Self);
     edtCodCliente.SetFocus;
end;

procedure TfrmReportVisita.edtCodUsuarioExit(Sender: TObject);
begin
     if (edtCodUsuario.Text <> '')  and
        (edtCodUsuario.Text <> '0') then
     begin
          dmPrincipal.qryUsuarios.Close();
          dmPrincipal.qryUsuarios.sql.text := 'select * from usuario order by cod_usuario';
          dmPrincipal.qryUsuarios.Open();
          if dmPrincipal.qryUsuarios.Locate('cod_usuario',edtCodUsuario.Text,[]) then
               edtNomeUsuario.Text  := dmPrincipal.qryUsuariosnome_usuario.AsString
          else
               edtNomeUsuario.Text := '';
     end
     else
          edtNomeUsuario.Text := '';
end;

procedure TfrmReportVisita.btnBuscaUsuarioClick(Sender: TObject);
var result : boolean;
begin
     if (edtCodUsuario.enabled  = false) or
        (edtCodUsuario.readonly = true)  then
          Exit;

     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConUsuarios <> nil then
          frmConUsuarios := nil;

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
          edtCodUsuario.Text := dmPrincipal.cdsUsuariocod_usuario.AsString;
          dmPrincipal.cdsReportcod_usuario_visita.AsString := edtCodUsuario.Text;
     end;

     edtCodUsuario.OnExit(Self);
     edtCodUsuario.SetFocus;

end;

procedure TfrmReportVisita.mmoMotivoVisitaKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=Upcase(key);
     if (Key = #13) then
          key := #0;
end;

procedure TfrmReportVisita.mmoTarefaExecutadaKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=Upcase(key);
     if (Key = #13) then
          key := #0;
end;

procedure TfrmReportVisita.mmoNovaVisitaKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=Upcase(key);
     if (Key = #13) then
          key := #0;
end;

procedure TfrmReportVisita.mmoResultadosKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=Upcase(key);
     if (Key = #13) then
          key := #0;
end;

procedure TfrmReportVisita.enviaEmailCliente;
var
     conectar   : integer;
     conectado  : Boolean;
     sprotocolo : string;
     i : integer;
     senha, senhainv, decrip : String;
     attach: TIdAttachment;
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
                    conectar := 0;
                    conectado := false;
                    while conectar < 10 do
                    begin
                         try
                              IdEnvioCli.Connect;
                              conectar := 20;
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
                    IdMsg.Recipients.EMailAddresses := dmPrincipal.qryClientesmail.AsString+';'+dmPrincipal.cdsChamadosemail_solicitante.AsString;

               if conectado = false then
               begin
                    ShowMessage('N?o foi poss?vel conectar ao provedor de e-mail !'+#13+
                              'Por favor, envie e-mail manualmente para: '+dmPrincipal.qryClientesmail.AsString);
                    Exit;
               end;

               try
                    sprotocolo := FormatDateTime('yyyymmdd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime);
                    IdMsg.Subject := 'Oracullos - Finaliza??o de Atendimento';
                    IdMsg.Body.Text := 'Oracullos - Mensagem Autom?tica: '+#13+
                                       'Caro Cliente '+dmPrincipal.cdsChamadosnome_cliente.AsString+'.'+#13+
                                       'Informamos a finaliza??o do chamado N?: '+sprotocolo+dmPrincipal.cdsChamadoscod_chamado.AsString+'.'+#13+
                                       '- Data e Hora de Abertura: '+dmPrincipal.cdsChamadosdata_chamado.AsString+' - '+dmPrincipal.cdsChamadoshora_chamado.AsString+ #13+
                                       '- Solicitante: '+dmPrincipal.cdsChamadosfuncionario_emp.AsString+#13+
                                       '- Solicita??o: '+dmPrincipal.cdsChamadossolicitacao.AsString+'.'+#13+
                                       '- Atendente : '+nome_usuario_login+#13+
                                       '- Procedimento Adotado: '+Proc_Adotado+'.'+#13+
                                       '- Data e Hora de Finaliza??o: '+dmPrincipal.cdsChamadosdata_final.AsString+' - '+dmPrincipal.cdsChamadoshora_final.AsString;

                    if (sArq <> '') then
                    begin
                         attach := TIdAttachment.Create(IdMsg.MessageParts);
                         attach.FileName := sArq;
                    end;
                    IdMsg.Priority := mpHigh;
                    IdMsg.From.Name := nome_usuario_login;
                    IdMsg.From.Address := dmPrincipal.qryUsuariosmail.AsString;
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

procedure TfrmReportVisita.edtCodClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
         btnBuscaCliente.Click();
end;

procedure TfrmReportVisita.edtCodUsuarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
         btnBuscaUsuario.Click();
end;

procedure TfrmReportVisita.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmReportVisita.edtHrFimExit(Sender: TObject);
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
     if (edtHrIni.Text <> '  :  ') and (edtHrFim.Text <> '  :  ') then
     begin
          horaini      := StrToInt(copy(edtHrIni.text,1,2));
          minini       := StrToInt(copy(edtHrIni.text,4,2));
          mintohoraIni := (minini / 60);
          TotalIni     := (mintohoraIni + horaini);

          horafim      := StrToInt(copy(edtHrFim.text,1,2));
          minfim       := StrToInt(copy(edtHrFim.text,4,2));
          mintohoraFim := (minfim / 60);
          TotalFim     := (mintohoraFim + horafim);
          if (TotalIni <= TotalFim) then
          begin
               HoraTotal := (TotalFim - TotalIni);
               //==== Arredonda para duas casas decimais =====//
               HoraTotal := RoundTo(HoraTotal,-2);
               dmPrincipal.cdsReporttempo_gasto.AsCurrency := HoraTotal;
          end
          else
          begin
               ShowMessage('Hora inicial da visita ? maior que a hora de finaliza??o. Por favor, verifique!');
               edtHrFim.SetFocus;
               Abort;
          end;
     end
     else
          dmPrincipal.cdsReporttempo_gasto.AsCurrency := 0.00;


end;

procedure TfrmReportVisita.btnAbrirClick(Sender: TObject);
var
     arq : string;
begin
     OpenDialog.FileName   := edtCaminho.Text;
     OpenDialog.InitialDir := OpenDialog.FileName;
     if OpenDialog.Execute then
     begin
          arq := OpenDialog.FileName;
          dmPrincipal.cdsReportcaminho_arq.AsString := arq;
     end;

end;

procedure TfrmReportVisita.BitBtn1Click(Sender: TObject);
var
     sdata : string;
begin
     dmPrincipal.qryDetalheModulo.Close;
     dmPrincipal.qryDetalheModulo.SQL.Text := 'select * from detalhe_modulo_atendimento where '+
                                              ' cod_modulo    ='+ '-1'+
                                              ' order by cod_modulo desc limit 1';
     dmPrincipal.qryDetalheModulo.Open;
     dmPrincipal.cdsDetalheModulo.Close;
     dmPrincipal.cdsDetalheModulo.Open;
     dmPrincipal.cdsDetalheModulo.Insert;
     if not Assigned(frmDetalheModulo) then
          frmDetalheModulo := TfrmDetalheModulo.Create(Self);
     try
          frmDetalheModulo.ShowModal;
     finally
          frmDetalheModulo.Free;
     end;
   //----------------------------------------------------------------------------------------------//
     sdata := FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsCompromissosdata_chamado.AsDateTime);
     dmPrincipal.qryDetalheModulo.Close;
     dmPrincipal.qryDetalheModulo.SQL.Text := 'select * from detalhe_modulo_atendimento where '+
                                                       ' cod_compromisso  = '+dmPrincipal.cdsCompromissoscod_compromisso.AsString+
                                                       ' and cod_report   = '+dmPrincipal.cdsReportcod_report.AsString+
                                                       ' and cod_chamado  = '+dmPrincipal.cdsCompromissoscod_chamado.AsString+
                                                       ' and data_chamado = '+QuotedStr(sdata);
     dmPrincipal.qryDetalheModulo.Open;
     dmPrincipal.cdsDetalheModulo.Close;
     dmPrincipal.cdsDetalheModulo.Open;
     //---------------------------------------------------------------------------------------//
     frmDetalheModulo := nil;
     grdModulo.SetFocus;
end;

procedure TfrmReportVisita.BitBtn2Click(Sender: TObject);
begin
     if not Assigned(frmDetalheModulo) then
          frmDetalheModulo := TfrmDetalheModulo.Create(Self);
     try
     begin
          dmPrincipal.cdsDetalheModulo.Edit;
          frmDetalheModulo.ShowModal;
     end;
     finally
          frmDetalheModulo.Free;
     end;
     frmDetalheModulo := nil;
     grdModulo.SetFocus;
end;

procedure TfrmReportVisita.BitBtn3Click(Sender: TObject);
begin
     if (MessageDlg('Deseja excluir o m?dulo selecionado ?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     begin
          dmPrincipal.cdsDetalheModulo.Delete;
          dmPrincipal.cdsDetalheModulo.ApplyUpdates(0);
     end;
end;

end.

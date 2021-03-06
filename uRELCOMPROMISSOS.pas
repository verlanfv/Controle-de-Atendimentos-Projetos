unit uRELCOMPROMISSOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, FMTBcd, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient, Provider,
  SqlExpr, ppCtrls, ppPrnabl, ppBands, ppCache, ppVar, ppStrtch, ppMemo,
  dxGDIPlusClasses;

type
  TfrmRelCompromissos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtChamInic: TEdit;
    edtChamFim: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edtDataIni: TDateTimePicker;
    edtDataFim: TDateTimePicker;
    Label5: TLabel;
    Label6: TLabel;
    edtCliInic: TEdit;
    edtCliFim: TEdit;
    Panel2: TPanel;
    btnGerar: TBitBtn;
    btnSair: TBitBtn;
    qryRelCompromissos: TSQLQuery;
    dspCompromissos: TDataSetProvider;
    cdsRelCompromissos: TClientDataSet;
    qryRelCompromissoscod_cliente: TIntegerField;
    qryRelCompromissosnome_cliente: TStringField;
    qryRelCompromissossolicitante: TStringField;
    qryRelCompromissoscod_usuario: TIntegerField;
    qryRelCompromissosnome_usuario: TStringField;
    qryRelCompromissosdata: TDateField;
    qryRelCompromissoshora: TTimeField;
    qryRelCompromissoslocal: TStringField;
    qryRelCompromissosobservacao: TStringField;
    qryRelCompromissoscod_compromisso: TIntegerField;
    qryRelCompromissosfinalizado: TStringField;
    qryRelCompromissoscod_chamado: TIntegerField;
    qryRelCompromissosdata_chamado: TDateField;
    cdsRelCompromissoscod_cliente: TIntegerField;
    cdsRelCompromissosnome_cliente: TStringField;
    cdsRelCompromissossolicitante: TStringField;
    cdsRelCompromissoscod_usuario: TIntegerField;
    cdsRelCompromissosnome_usuario: TStringField;
    cdsRelCompromissosdata: TDateField;
    cdsRelCompromissoshora: TTimeField;
    cdsRelCompromissoslocal: TStringField;
    cdsRelCompromissosobservacao: TStringField;
    cdsRelCompromissoscod_compromisso: TIntegerField;
    cdsRelCompromissosfinalizado: TStringField;
    cdsRelCompromissoscod_chamado: TIntegerField;
    cdsRelCompromissosdata_chamado: TDateField;
    dsRelatorio: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    Label7: TLabel;
    Label8: TLabel;
    edtUserIni: TEdit;
    edtUserFim: TEdit;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText1: TppDBText;
    ppLine1: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine2: TppLine;
    ppLabel11: TppLabel;
    ppDBText10: TppDBText;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppAnalitico: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    rdSintetico: TRadioButton;
    rdAnalitico: TRadioButton;
    ppLabel27: TppLabel;
    GroupBox1: TGroupBox;
    rdSim: TRadioButton;
    rdNao: TRadioButton;
    rdTodos: TRadioButton;
    ppLabel17: TppLabel;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppLabel65: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLine3: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppShape1: TppShape;
    ppLabel12: TppLabel;
    ppLabel24: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine5: TppLine;
    ppLabel22: TppLabel;
    ppLine6: TppLine;
    ppLabel23: TppLabel;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel25: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLine30: TppLine;
    ppDBText20: TppDBText;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppShape2: TppShape;
    ppLabel26: TppLabel;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppImage1: TppImage;
    ppImage2: TppImage;
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure edtCliInicDblClick(Sender: TObject);
    procedure edtCliFimDblClick(Sender: TObject);
    procedure edtUserIniDblClick(Sender: TObject);
    procedure edtUserFimDblClick(Sender: TObject);
    procedure ppLabel30Print(Sender: TObject);
    procedure ppLabel31Print(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCompromissos: TfrmRelCompromissos;
  sFinalizado : string;
  dataini     : string;
  datafim     : string;

implementation

uses DTMPRINCIPAL, uCONCLIENTES, uPRINCIPAL, uUSUARIOS;

{$R *.dfm}

procedure TfrmRelCompromissos.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmRelCompromissos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (Key = 4100)       or
        (Key = 4101)       or
        (Key = VK_RETURN)  or
        (Key = vk_RETURN)  or
        (Key = 13)         then
          SelectNext(ActiveControl, True, True );
     if (Key = 4145)   or
        (key = VK_F2)  or
        (Key = vk_F2)  or
        (Key = 113)    then
          btnGerar.Click();
     if (Key = 4096)       or
        (key = VK_ESCAPE)  or
        (key = vk_ESCAPE)  or
        (Key = 27)         then
          btnSair.Click();
end;

procedure TfrmRelCompromissos.FormShow(Sender: TObject);
begin
     edtDataIni.Date := Date;
     edtDataFim.Date := Date;
end;

procedure TfrmRelCompromissos.btnGerarClick(Sender: TObject);
begin
     sFinalizado := '';
     dataini     := '';
     datafim     := '';

     if edtChamInic.Text = '' then
     begin
          ShowMessage('Informe um c?digo inicial para o chamado!');
          edtChamInic.SetFocus;
          Abort;
     end;
     if edtChamFim.Text = '' then
     begin
          ShowMessage('Informe um c?digo final para o chamado!');
          edtChamFim.SetFocus;
          Abort;
     end;
     if (StrToInt(edtChamInic.Text) > StrToInt(edtChamFim.Text)) then
     begin
          ShowMessage('O c?digo inicial do chamado n?o pode ser maior que o c?digo final!!');
          edtChamInic.SetFocus;
          Abort;
     end;

     if edtDataIni.Date > edtDataFim.Date then
     begin
          ShowMessage('A data inicial n?o pode ser maior que a data final');
          edtDataIni.SetFocus;
          Abort;
     end;

     if edtCliInic.Text = '' then
     begin
          ShowMessage('Informe um c?digo inicial para o cliente!');
          edtCliInic.SetFocus;
          Abort;
     end;
     if edtCliFim.Text = '' then
     begin
          ShowMessage('Informe um c?digo final para o cliente!');
          edtCliFim.SetFocus;
          Abort;
     end;
     if (StrToInt(edtCliInic.Text) > StrToInt(edtCliFim.Text)) then
     begin
          ShowMessage('O c?digo inicial do cliente n?o pode ser maior que o c?digo final!');
          edtCliInic.SetFocus;
          Abort;
     end;


     if edtUserIni.Text = '' then
     begin
          ShowMessage('Informe um c?digo inicial para o usu?rio !');
          edtUserIni.SetFocus;
          Abort;
     end;
     if edtUserFim.Text = '' then
     begin
          ShowMessage('Informe um c?digo final para o usu?rio!');
          edtUserFim.SetFocus;
          Abort;
     end;
     if (StrToInt(edtUserIni.Text) > StrToInt(edtUserFim.Text)) then
     begin
          ShowMessage('O c?digo inicial do usu?rio n?o pode ser maior que o c?digo final!');
          edtUserIni.SetFocus;
          Abort;
     end;

     //==========formatando data do chamado =========//
     dataini := FormatDateTime('yyyy/mm/dd',edtDataIni.Date);
     datafim := FormatDateTime('yyyy/mm/dd',edtDataFim.Date);
     //=================== Verifica status do compromisso ======================//
     if (rdSim.Checked = true) then
          sFinalizado := 'S'
     else if (rdNao.Checked = true) then
          sFinalizado := 'N'
     else
          sFinalizado := '%';


     qryRelCompromissos.Close;
     qryRelCompromissos.SQL.Text := 'select * from compromissos_cliente where cod_cliente between '+edtCliInic.Text+' and '+edtCliFim.text+
                                   ' and cod_usuario between '+edtUserIni.text+' and '+edtUserFim.text+
                                   ' and data_chamado between '+QuotedStr(dataini)+' and '+QuotedStr(datafim)+
                                   ' and cod_chamado between '+edtChamInic.text+' and '+edtChamFim.text+
                                   ' and finalizado like'+QuotedStr(sFinalizado)+
                                   ' order by cod_chamado';

     qryRelCompromissos.open;
     cdsRelCompromissos.Close;
     cdsRelCompromissos.Open;

     //================verifica se encontrou algum dado... ====================//
     if rdSintetico.Checked = true then
     begin
          if cdsRelCompromissos.RecordCount = 0 then
          begin
               ShowMessage('Nenhum dado foi encontrado para os par?metros informados !!');
               edtChamInic.SetFocus;
          end
          else
          begin
               ppLabel27.Text := 'Sint?tico';
               ppReport1.PrintReport;
          end;
     end;
     if rdAnalitico.Checked = true then
     begin
          if cdsRelCompromissos.RecordCount = 0 then
          begin
               ShowMessage('Nenhum dado foi encontrado para os par?metros informados !!');
               edtChamInic.SetFocus;
          end
          else
          begin
               ppLabel13.Text := 'Anal?tico';
               ppAnalitico.PrintReport;
          end;
     end;

end;

procedure TfrmRelCompromissos.edtCliInicDblClick(Sender: TObject);
var result : boolean;
begin
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
          edtCliInic.Text := dmPrincipal.cdsClientescod_cliente.AsString;
     end;
     edtCliInic.SetFocus;

end;

procedure TfrmRelCompromissos.edtCliFimDblClick(Sender: TObject);
var result : boolean;
begin
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
          edtCliFim.Text := dmPrincipal.cdsClientescod_cliente.AsString;
     end;
     edtCliFim.SetFocus;

end;

procedure TfrmRelCompromissos.edtUserIniDblClick(Sender: TObject);
var result : boolean;
begin
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
          edtUserIni.Text := dmPrincipal.cdsUsuariocod_usuario.AsString;
     end;
     edtUserIni.SetFocus;

end;

procedure TfrmRelCompromissos.edtUserFimDblClick(Sender: TObject);
var result : boolean;
begin
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
          edtUserFim.Text := dmPrincipal.cdsUsuariocod_usuario.AsString;
     end;
     edtUserFim.SetFocus;

end;

procedure TfrmRelCompromissos.ppLabel30Print(Sender: TObject);
begin
     if cdsRelCompromissosfinalizado.AsString = 'S' then
          ppLabel30.Caption := 'Sim'
     else
           ppLabel30.Caption := 'N?o';
end;

procedure TfrmRelCompromissos.ppLabel31Print(Sender: TObject);
begin
     if cdsRelCompromissosfinalizado.AsString = 'S' then
          ppLabel31.Caption := 'Sim'
     else
           ppLabel31.Caption := 'N?o';
end;

end.

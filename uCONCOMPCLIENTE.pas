unit uCONCOMPCLIENTE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxLookAndFeels, cxLookAndFeelPainters;

type
  TfrmCompromissos = class(TForm)
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
    dsCompromisso: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1cod_cliente: TcxGridDBColumn;
    cxGrid1DBTableView1nome_cliente: TcxGridDBColumn;
    cxGrid1DBTableView1solicitante: TcxGridDBColumn;
    cxGrid1DBTableView1cod_usuario: TcxGridDBColumn;
    cxGrid1DBTableView1nome_usuario: TcxGridDBColumn;
    cxGrid1DBTableView1data: TcxGridDBColumn;
    cxGrid1DBTableView1hora: TcxGridDBColumn;
    cxGrid1DBTableView1local: TcxGridDBColumn;
    cxGrid1DBTableView1observacao: TcxGridDBColumn;
    cxGrid1DBTableView1cod_compromisso: TcxGridDBColumn;
    Panel1: TPanel;
    cxGrid1DBTableView1finalizado: TcxGridDBColumn;
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnVisualizaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1ColumnHeaderClick(
      Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure edtOrdemChange(Sender: TObject);
    procedure btnAdicionaClick(Sender: TObject);
    procedure btnAlteraClick(Sender: TObject);
  private
    { Private declarations }
  public
     ordem_final : String;
     ordem_ant   : String;
     carac_pesq  : String;
     function on_change(texto,indice,ordem_final : String): Boolean;
  end;

var
  frmCompromissos: TfrmCompromissos;

implementation

uses DTMPRINCIPAL, uMNTCOMPCLIENTE;

{$R *.dfm}

procedure TfrmCompromissos.btnPrimeiroClick(Sender: TObject);
begin
     dmPrincipal.cdsCompromissos.First;
end;

procedure TfrmCompromissos.btnAnteriorClick(Sender: TObject);
begin
     dmPrincipal.cdsCompromissos.Prior;
end;

procedure TfrmCompromissos.btnProximoClick(Sender: TObject);
begin
     dmPrincipal.cdsCompromissos.Next;
end;

procedure TfrmCompromissos.btnUltimoClick(Sender: TObject);
begin
     dmPrincipal.cdsCompromissos.Last;
end;

procedure TfrmCompromissos.btnVisualizaClick(Sender: TObject);
begin
     dmPrincipal.qryCompromissos.Close;
     dmPrincipal.qryCompromissos.SQL.Text := 'select * from compromissos_cliente order by '+ edtIndice.Text;
     dmPrincipal.qryCompromissos.Open;
     dmPrincipal.cdsCompromissos.Close;
     dmPrincipal.cdsCompromissos.Open;
end;

procedure TfrmCompromissos.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmCompromissos.btnExcluiClick(Sender: TObject);
begin
     if (MessageDlg('Deseja excluir compromisso com o cliente selecionado ?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     begin
          dmPrincipal.cdsCompromissos.Delete;
          dmPrincipal.cdsCompromissos.ApplyUpdates(0);
     end;
end;

procedure TfrmCompromissos.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if (Key = 4100)       or
        (Key = 4101)       or
        (Key = VK_RETURN) or
        (Key = vk_RETURN)  or
        (Key = 13)         then
        btnAltera.Click;
end;

procedure TfrmCompromissos.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
     btnAltera.Click;
end;

procedure TfrmCompromissos.FormShow(Sender: TObject);
begin
     ActiveControl:=edtOrdem;
     dmPrincipal.qryCompromissos.Close;
     dmPrincipal.qryCompromissos.SQL.Text := 'select * from compromissos_cliente order by cod_compromisso';
     dmPrincipal.qryCompromissos.Open;
     dmPrincipal.cdsCompromissos.Close;
     dmPrincipal.cdsCompromissos.Open;
end;

function TfrmCompromissos.on_change(texto, indice,
  ordem_final: String): Boolean;
begin
     texto := StringReplace(texto,'*','%',[rfReplaceAll]);
     indice := AnsiLowerCase(indice);

     if texto <> '' then
     begin
           dmPrincipal.qryCompromissos.Close;
           dmPrincipal.qryCompromissos.SQL.Text := 'select * from compromissos_cliente where cast(' + indice +' as TEXT)'+
           ' like '+ '''' + texto + '''' +
           ' order by ' + ansilowercase(ordem_final);

           dmPrincipal.qryCompromissos.Open;

           dmPrincipal.cdsCompromissos.Close;
           dmPrincipal.cdsCompromissos.Open;
     end;
end;

procedure TfrmCompromissos.cxGrid1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
     edtindice.text := trim(copy(AColumn.name,20,100));
     edtOrdem.setfocus;
end;

procedure TfrmCompromissos.edtOrdemChange(Sender: TObject);
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

procedure TfrmCompromissos.btnAdicionaClick(Sender: TObject);
begin
     dmPrincipal.qryCompromissos.Close;
     dmPrincipal.qryCompromissos.SQL.Text := 'select * from compromissos_cliente where '+
                                             ' cod_compromisso    ='+ '-1'+
                                             ' order by cod_compromisso desc limit 1';
     dmPrincipal.qryCompromissos.Open;
     dmPrincipal.cdsCompromissos.Close;
     dmPrincipal.cdsCompromissos.Open;
     dmPrincipal.cdsCompromissos.Insert;
     if not Assigned(frmCadCompromisso) then
          frmCadCompromisso := TfrmCadCompromisso.Create(Self);
     try
          frmCadCompromisso.ShowModal;
     finally
          frmCadCompromisso.Free;
     end;
     frmCadCompromisso := nil;
     cxGrid1.SetFocus;
end;

procedure TfrmCompromissos.btnAlteraClick(Sender: TObject);
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
     cxGrid1.SetFocus;
end;

end.

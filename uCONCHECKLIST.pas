unit uCONCHECKLIST;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TfrmConItensChecklist = class(TForm)
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
    grditens_ckecklist: TDBGrid;
    dsClientes: TDataSource;
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
    procedure grditens_ckecklistTitleClick(Column: TColumn);
    procedure edtOrdemChange(Sender: TObject);
    procedure grditens_ckecklistDblClick(Sender: TObject);
    procedure grditens_ckecklistKeyDown(Sender: TObject; var Key: Word;
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
  frmConItensChecklist: TfrmConItensChecklist;

implementation

uses DTMPRINCIPAL, uPRINCIPAL, uLOGIN, uMNTCHECKLIST;

{$R *.dfm}

procedure TfrmConItensChecklist.btnAdicionaClick(Sender: TObject);
var sequencia_incluir : integer;
begin
     dmPrincipal.qryitens_ckecklist.Close;
     dmPrincipal.qryitens_ckecklist.SQL.Text := 'select * from itens_ckecklist '+
                                                ' order by sequencia_item ';
     dmPrincipal.qryitens_ckecklist.Open;
     dmPrincipal.cdsitens_ckecklist.Close;
     dmPrincipal.cdsitens_ckecklist.Open;
     dmPrincipal.cdsitens_ckecklist.last;

     if dmPrincipal.cdsitens_ckecklist.isempty = true then
          sequencia_incluir := 100
     else
          sequencia_incluir := dmPrincipal.cdsitens_ckecklistsequencia_item.asinteger + 100;

     dmPrincipal.cdsitens_ckecklist.Insert;

     dmPrincipal.cdsitens_ckecklistsequencia_item.asinteger := sequencia_incluir;

     if not Assigned(frmCadChecklist) then
          frmCadChecklist := TfrmCadChecklist.Create(Self);
     try
          frmCadChecklist.ShowModal;
     finally
          begin
               frmCadChecklist.Free;
          end;
     end;
     frmCadChecklist := nil;
     grditens_ckecklist.SetFocus;
end;

procedure TfrmConItensChecklist.btnAlteraClick(Sender: TObject);
begin
     if not Assigned(frmCadChecklist) then
          frmCadChecklist := TfrmCadChecklist.Create(Self);
     try
     begin
          dmPrincipal.cdsitens_ckecklist.Edit;
               frmCadChecklist.ShowModal;
     end;
     finally
          begin
               frmCadChecklist.Free;
          end;
     end;
     frmCadChecklist := nil;
     grditens_ckecklist.SetFocus
end;

procedure TfrmConItensChecklist.btnExcluiClick(Sender: TObject);
begin
     if (MessageDlg('Deseja excluir o item selecionado ?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     begin
          dmPrincipal.cdsitens_ckecklist.Delete;
          dmPrincipal.cdsitens_ckecklist.ApplyUpdates(0);
     end;
end;

procedure TfrmConItensChecklist.btnSairClick(Sender: TObject);
begin
     if chamou_zoom = true then
          cancelou_zoom := true;
     Close;
end;

procedure TfrmConItensChecklist.btnVisualizaClick(Sender: TObject);
begin
     dmPrincipal.qryitens_ckecklist.Close;
     dmPrincipal.qryitens_ckecklist.SQL.Text := 'select * from itens_ckecklist order by '+ edtIndice.Text;
     dmPrincipal.qryitens_ckecklist.Open;
     dmPrincipal.cdsitens_ckecklist.Close;
     dmPrincipal.cdsitens_ckecklist.Open;
end;

procedure TfrmConItensChecklist.FormShow(Sender: TObject);
begin
     {if definicao = 'USUARIO' then
     begin
          btnAdiciona.Enabled := False;
          btnExclui.Enabled   := False;
     end;}

     ActiveControl:=edtOrdem;
     dmPrincipal.qryitens_ckecklist.Close;
     dmPrincipal.qryitens_ckecklist.SQL.Text := 'select * from itens_ckecklist order by sequencia_item';
     dmPrincipal.qryitens_ckecklist.Open;
     dmPrincipal.cdsitens_ckecklist.Close;
     dmPrincipal.cdsitens_ckecklist.Open;
end;

procedure TfrmConItensChecklist.btnPrimeiroClick(Sender: TObject);
begin
     dmPrincipal.cdsitens_ckecklist.First;
end;

procedure TfrmConItensChecklist.btnAnteriorClick(Sender: TObject);
begin
     dmPrincipal.cdsitens_ckecklist.Prior;
end;

procedure TfrmConItensChecklist.btnProximoClick(Sender: TObject);
begin
     dmPrincipal.cdsitens_ckecklist.Next;
end;

procedure TfrmConItensChecklist.btnUltimoClick(Sender: TObject);
begin
     dmPrincipal.cdsitens_ckecklist.Last;
end;

function TfrmConItensChecklist.on_change(texto, indice,
  ordem_final: String): Boolean;
begin
     texto := StringReplace(texto,'*','%',[rfReplaceAll]);
     indice := AnsiLowerCase(indice);

     if texto <> '' then
     begin
           dmPrincipal.qryitens_ckecklist.Close;
           dmPrincipal.qryitens_ckecklist.SQL.Text := 'select * from itens_ckecklist where cast(' + indice +' as TEXT)'+
           ' like '+ '''' + texto + '''' +
           ' order by ' + ansilowercase(ordem_final);

           dmPrincipal.qryitens_ckecklist.Open;

           dmPrincipal.cdsitens_ckecklist.Close;
           dmPrincipal.cdsitens_ckecklist.Open;
     end;
end;

procedure TfrmConItensChecklist.grditens_ckecklistTitleClick(Column: TColumn);
var
     i : integer;
begin
     i := column.Index + 1;
     if ordem_ant <> Column.FieldName then
     begin
          ordem_final := Column.FieldName;                               
          edtIndice.Text := Column.FieldName;
          ordem_final := '';
          dmPrincipal.qryitens_ckecklist.close;
          dmPrincipal.qryitens_ckecklist.SQL.Text := 'select * from itens_ckecklist order by '+ edtIndice.Text;
          dmPrincipal.qryitens_ckecklist.open;
          dmPrincipal.cdsitens_ckecklist.close;
          dmPrincipal.cdsitens_ckecklist.Open;
          edtOrdem.Clear;
     end;
     with TStringGrid(grditens_ckecklist) do
     begin
          Row := 1;
          Col := i;
          SetFocus;
     end;
          edtOrdem.setfocus;

end;

procedure TfrmConItensChecklist.edtOrdemChange(Sender: TObject);
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

procedure TfrmConItensChecklist.grditens_ckecklistDblClick(Sender: TObject);
begin
     btnAltera.Click;
end;

procedure TfrmConItensChecklist.grditens_ckecklistKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if (Key = 4100)       or
        (Key = 4101)       or
        (Key = VK_RETURN) or
        (Key = vk_RETURN)  or
        (Key = 13)         then
        btnAltera.Click;
end;

procedure TfrmConItensChecklist.btnExportaClick(Sender: TObject);
begin
     if chamou_zoom = true then
          Close;
end;

procedure TfrmConItensChecklist.FormKeyDown(Sender: TObject; var Key: Word;
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

end.

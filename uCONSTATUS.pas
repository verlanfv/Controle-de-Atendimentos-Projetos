unit uCONSTATUS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DB;

type
  TfrmConStatus = class(TForm)
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
    grdStatus: TDBGrid;
    dsStatus: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btnAdicionaClick(Sender: TObject);
    procedure btnAlteraClick(Sender: TObject);
    procedure btnVisualizaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure grdStatusTitleClick(Column: TColumn);
    procedure edtOrdemChange(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure grdStatusDblClick(Sender: TObject);
    procedure grdStatusKeyDown(Sender: TObject; var Key: Word;
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
  frmConStatus: TfrmConStatus;

implementation

uses DTMPRINCIPAL, uMNTSTATUS, uPRINCIPAL, uLOGIN;

{$R *.dfm}

procedure TfrmConStatus.FormShow(Sender: TObject);
begin
     {if definicao = 'USUARIO' then
     begin
          btnAdiciona.Enabled := False;
          btnAltera.Enabled   := False;
          btnExclui.Enabled   := False;
     end;}
     ActiveControl:=edtOrdem;
     dmPrincipal.qryStatus.Close;
     dmPrincipal.qryStatus.SQL.Text := 'select * from status_chamado order by cod_status';
     dmPrincipal.qryStatus.Open;
     dmPrincipal.cdsStatus.Close;
     dmPrincipal.cdsStatus.Open;


     if cod_status_zoom <> 0 then
     begin
          dmPrincipal.cdsStatus.IndexName := 'COD_STATUS';
          dmPrincipal.cdsStatus.FindKey([cod_status_zoom ]);
          dmPrincipal.cdsStatus.IndexName := '';
          grdStatus.SetFocus;
     end;
end;

procedure TfrmConStatus.btnAdicionaClick(Sender: TObject);
begin
     dmPrincipal.qryStatus.Close;
     dmPrincipal.qryStatus.SQL.Text := 'select * from status_chamado where '+
                                        ' cod_status    ='+ '-1'+
                                        ' order by cod_status desc limit 1';
     dmPrincipal.qryStatus.Open;
     dmPrincipal.cdsStatus.Close;
     dmPrincipal.cdsStatus.Open;
     dmPrincipal.cdsStatus.Insert;
     if not Assigned(frmStatus) then
          frmStatus := TfrmStatus.Create(Self);
     try
          frmStatus.ShowModal;
     finally
          frmStatus.Free;
     end;
     frmStatus := nil;
     grdStatus.SetFocus;
end;

procedure TfrmConStatus.btnAlteraClick(Sender: TObject);
begin
     if (dmPrincipal.cdsStatuscod_status.AsInteger = 1) and (dmPrincipal.cdsStatusdescricao_status.AsString = 'AGUARDANDO ATENDIMENTO') then
     begin
          ShowMessage('O status selecionado ? padr?o do sistema e n?o pode ser alterado !');
          Abort;
     end
     else if (dmPrincipal.cdsStatuscod_status.AsInteger = 2) and (dmPrincipal.cdsStatusdescricao_status.AsString = 'ABERTO') then
     begin
          ShowMessage('O status selecionado ? padr?o do sistema e n?o pode ser alterado !');
          Abort;
     end
     else if (dmPrincipal.cdsStatuscod_status.AsInteger = 3) and (dmPrincipal.cdsStatusdescricao_status.AsString = 'FINALIZADO') then
     begin
          ShowMessage('O status selecionado ? padr?o do sistema e n?o pode ser alterado !');
          Abort;
     end
     else if (dmPrincipal.cdsStatuscod_status.AsInteger = 4) and (dmPrincipal.cdsStatusdescricao_status.AsString = 'EM COMPROMISSO') then
     begin
          ShowMessage('O status selecionado ? padr?o do sistema e n?o pode ser alterado !');
          Abort;
     end
     else
     begin
          if not Assigned(frmStatus) then
               frmStatus := TfrmStatus.Create(Self);
          try
          begin
               dmPrincipal.cdsStatus.Edit;
               frmStatus.ShowModal;
          end;
          finally
               frmStatus.Free;
          end;
          frmStatus := nil;
          grdStatus.SetFocus;
     end;
end;

procedure TfrmConStatus.btnVisualizaClick(Sender: TObject);
begin
     dmPrincipal.qryStatus.Close;
     dmPrincipal.qryStatus.SQL.Text := 'select * from status_chamado order by '+ edtIndice.Text;
     dmPrincipal.qryStatus.Open;
     dmPrincipal.cdsStatus.Close;
     dmPrincipal.cdsStatus.Open;
end;

procedure TfrmConStatus.btnSairClick(Sender: TObject);
begin
     if chamou_zoom = true then
          cancelou_zoom := true;
     Close;
end;

procedure TfrmConStatus.btnExcluiClick(Sender: TObject);
begin
     if (MessageDlg('Deseja excluir o status selecionado?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     begin
          if (dmPrincipal.cdsStatuscod_status.AsInteger = 1) and (dmPrincipal.cdsStatusdescricao_status.AsString = 'AGUARDANDO ATENDIMENTO') then
          begin
               ShowMessage('O status selecionado ? padr?o do sistema e n?o pode ser exclu?do !');
               Abort;
          end
          else if (dmPrincipal.cdsStatuscod_status.AsInteger = 2) and (dmPrincipal.cdsStatusdescricao_status.AsString = 'ABERTO') then
          begin
               ShowMessage('O status selecionado ? padr?o do sistema e n?o pode ser exclu?do !');
               Abort;
          end
          else if (dmPrincipal.cdsStatuscod_status.AsInteger = 3) and (dmPrincipal.cdsStatusdescricao_status.AsString = 'FINALIZADO') then
          begin
               ShowMessage('O status selecionado ? padr?o do sistema e n?o pode ser exclu?do !');
               Abort;
          end
          else if (dmPrincipal.cdsStatuscod_status.AsInteger = 4) and (dmPrincipal.cdsStatusdescricao_status.AsString = 'EM COMPROMISSO') then
          begin
               ShowMessage('O status selecionado ? padr?o do sistema e n?o pode ser exclu?do !');
               Abort;
          end
          else
          begin
               dmPrincipal.cdsStatus.Delete;
               dmPrincipal.cdsStatus.ApplyUpdates(0);
          end;
     end;
end;

function TfrmConStatus.on_change(texto, indice,
  ordem_final: String): Boolean;
begin
     texto := StringReplace(texto,'*','%',[rfReplaceAll]);
     indice := AnsiLowerCase(indice);

     if texto <> '' then
     begin
           dmPrincipal.qryStatus.Close;
           dmPrincipal.qryStatus.SQL.Text := 'select * from status_chamado where cast(' + indice +' as TEXT)'+
           ' like '+ '''' + texto + '''' +
           ' order by ' + ansilowercase(ordem_final);

           dmPrincipal.qryStatus.Open;

           dmPrincipal.cdsStatus.Close;
           dmPrincipal.cdsStatus.Open;
     end;
end;

procedure TfrmConStatus.grdStatusTitleClick(Column: TColumn);
begin
     if ordem_ant <> Column.FieldName then
     begin
          ordem_final := Column.FieldName;                               
          edtIndice.Text := Column.FieldName;
          ordem_final := '';
          dmPrincipal.qryStatus.close;
          dmPrincipal.qryStatus.SQL.Text := 'select * from status_chamado order by '+ edtIndice.Text;
          dmPrincipal.qryStatus.open;
          dmPrincipal.cdsStatus.close;
          dmPrincipal.cdsStatus.Open;
          edtOrdem.Clear;
          edtOrdem.setfocus;
     end;
end;

procedure TfrmConStatus.edtOrdemChange(Sender: TObject);
var result : Boolean;
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

procedure TfrmConStatus.btnPrimeiroClick(Sender: TObject);
begin
     dmPrincipal.cdsStatus.First;
end;

procedure TfrmConStatus.btnAnteriorClick(Sender: TObject);
begin
     dmPrincipal.cdsStatus.Prior;
end;

procedure TfrmConStatus.btnProximoClick(Sender: TObject);
begin
     dmPrincipal.cdsStatus.Next;
end;

procedure TfrmConStatus.btnUltimoClick(Sender: TObject);
begin
     dmPrincipal.cdsStatus.Last;
end;

procedure TfrmConStatus.grdStatusDblClick(Sender: TObject);
begin
     //if btnAltera.Enabled then
     btnAltera.Click;
end;

procedure TfrmConStatus.grdStatusKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (Key = 4100)       or
        (Key = 4101)       or
        (Key = VK_RETURN) or
        (Key = vk_RETURN)  or
        (Key = 13)         then
     if btnAltera.Enabled then
        btnAltera.Click;
end;

procedure TfrmConStatus.btnExportaClick(Sender: TObject);
begin
     if chamou_zoom = true then
          Close;
end;

procedure TfrmConStatus.FormKeyDown(Sender: TObject; var Key: Word;
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

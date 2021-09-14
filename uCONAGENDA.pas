unit uCONAGENDA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, DBCtrls, Buttons, ExtCtrls, dxGDIPlusClasses, Mask;

type
  TfrmConAgenda = class(TForm)
    grdAgenda: TcxGrid;
    grdAgendaDBTableView1: TcxGridDBTableView;
    grdAgendaLevel1: TcxGridLevel;
    pnlOrdem: TPanel;
    edtOrdem: TEdit;
    edtIndice: TEdit;
    cbxAtivo: TComboBox;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    DBMemo3: TDBMemo;
    btnSair: TImage;
    btnExclui: TImage;
    btnAltera: TImage;
    btnAdiciona: TImage;
    btnVisualiza: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    dsAgenda: TDataSource;
    grdAgendaDBTableView1nome_usuario: TcxGridDBColumn;
    grdAgendaDBTableView1data_saida: TcxGridDBColumn;
    grdAgendaDBTableView1hora_saida: TcxGridDBColumn;
    grdAgendaDBTableView1prev_data_retorno: TcxGridDBColumn;
    grdAgendaDBTableView1prev_hora_retorno: TcxGridDBColumn;
    grdAgendaDBTableView1observacao: TcxGridDBColumn;
    grdAgendaDBTableView1ativo: TcxGridDBColumn;
    grdAgendaDBTableView1seq_agenda: TcxGridDBColumn;
    DBEdit1: TDBEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSairClick(Sender: TObject);
    procedure btnAdicionaClick(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure btnVisualizaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdAgendaDBTableView1DblClick(Sender: TObject);
    procedure grdAgendaDBTableView1ColumnHeaderClick(
      Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure edtOrdemChange(Sender: TObject);
    procedure grdAgendaDBTableView1EditValueChanged(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
    procedure grdAgendaDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
  frmConAgenda: TfrmConAgenda;

implementation

uses DTMPRINCIPAL, uMNTAGENDA, uLOGIN;

{$R *.dfm}

procedure TfrmConAgenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key = VK_ESCAPE then
          btnSair.OnClick(Self);

     if(key = VK_F2) or
        (Key = vk_F2)  or
        (Key = 113)    then
          btnAdiciona.OnClick(Self);

     if(key = VK_F6) or
        (Key = vk_F6)  or
        (Key = 117)    then
          btnAltera.OnClick(Self);

     if(key = VK_F5) or
        (Key = vk_F5)  or
        (Key = 116)    then
          btnVisualiza.OnClick(Self);
end;

procedure TfrmConAgenda.btnSairClick(Sender: TObject);
begin
     close;
end;

procedure TfrmConAgenda.btnAdicionaClick(Sender: TObject);
begin
     dmPrincipal.qryAgenda.Close;
     dmPrincipal.qryAgenda.SQL.Text := 'select * from agenda where '+
                                        ' seq_agenda    ='+ '-1'+
                                        ' order by seq_agenda desc limit 1';
     dmPrincipal.qryAgenda.Open;
     dmPrincipal.cdsAgenda.Close;
     dmPrincipal.cdsAgenda.Open;
     dmPrincipal.cdsAgenda.Insert;

     if not Assigned(frmMntAgenda) then
          frmMntAgenda := TfrmMntAgenda.Create(Self);
     try
          frmMntAgenda.ShowModal;
     finally
          begin
               frmMntAgenda.Free;
          end;
     end;
     frmMntAgenda := nil;
     grdAgenda.SetFocus;
end;

procedure TfrmConAgenda.btnExcluiClick(Sender: TObject);
begin
     if dmPrincipal.cdsAgendaseq_agenda.Value <> 0 then
     begin
          if (dmPrincipal.cdsAgendanome_usuario.AsString = nome_usuario_login) then
          begin
               if (MessageDlg('Deseja excluir o agendamento selecionado ?',
                              mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
               begin
                    dmPrincipal.cdsAgenda.Delete;
                    dmPrincipal.cdsAgenda.ApplyUpdates(0);
               end;
          end
          else
               ShowMessage('Apenas o usuário: '+dmPrincipal.cdsAgendanome_usuario.AsString+' pode alterar este agendamento.');
     end;
end;

procedure TfrmConAgenda.btnVisualizaClick(Sender: TObject);
begin
     if cbxAtivo.Text = 'ATIVO' then
     begin
          dmPrincipal.qryAgenda.Close;
          dmPrincipal.qryAgenda.SQL.Text := 'select * from agenda where ativo = true order by data_saida, '+ edtIndice.Text;
          dmPrincipal.qryAgenda.Open;
          dmPrincipal.cdsAgenda.Close;
          dmPrincipal.cdsAgenda.Open;
     end
     else if cbxAtivo.Text = 'INATIVO' then
     begin
          dmPrincipal.qryAgenda.Close;
          dmPrincipal.qryAgenda.SQL.Text := 'select * from agenda where ativo = false order by data_saida, '+ edtIndice.Text;
          dmPrincipal.qryAgenda.Open;
          dmPrincipal.cdsAgenda.Close;
          dmPrincipal.cdsAgenda.Open;
     end
     else if cbxAtivo.Text = 'TODOS' then
     begin
          dmPrincipal.qryAgenda.Close;
          dmPrincipal.qryAgenda.SQL.Text := 'select * from agenda order by data_saida,'+ edtIndice.Text;
          dmPrincipal.qryAgenda.Open;
          dmPrincipal.cdsAgenda.Close;
          dmPrincipal.cdsAgenda.Open;
     end;
end;

function TfrmConAgenda.on_change(texto, indice,
  ordem_final: String): Boolean;
begin
     texto := StringReplace(texto,'*','%',[rfReplaceAll]);
     indice := AnsiLowerCase(indice);

     if cbxAtivo.Text = 'ATIVO' then
     begin
          if texto <> '' then
          begin
                dmPrincipal.qryAgenda.Close;
                dmPrincipal.qryAgenda.SQL.Text := 'select * from agenda where cast(' + indice +' as TEXT)'+
                ' like '+ '''' + texto + '''' +
                ' and ativo = true'+
                ' order by data_saida, ' + ansilowercase(ordem_final);

                dmPrincipal.qryAgenda.Open;

                dmPrincipal.cdsAgenda.Close;
                dmPrincipal.cdsAgenda.Open;
          end;
     end
     else if cbxAtivo.Text = 'INATIVO' then
     
     begin
          if texto <> '' then
          begin
                dmPrincipal.qryAgenda.Close;
                dmPrincipal.qryAgenda.SQL.Text := 'select * from agenda where cast(' + indice +' as TEXT)'+
                ' like '+ '''' + texto + '''' +
                ' and ativo = false'+
                ' order by data_saida, ' + ansilowercase(ordem_final);

                dmPrincipal.qryAgenda.Open;

                dmPrincipal.cdsAgenda.Close;
                dmPrincipal.cdsAgenda.Open;
          end;
     end
     else if cbxAtivo.Text = 'TODOS' then
     begin
          if texto <> '' then
          begin
                dmPrincipal.qryAgenda.Close;
                dmPrincipal.qryAgenda.SQL.Text := 'select * from agenda where cast(' + indice +' as TEXT)'+
                ' like '+ '''' + texto + '''' +
                ' order by data_saida, ' + ansilowercase(ordem_final);

                dmPrincipal.qryAgenda.Open;

                dmPrincipal.cdsAgenda.Close;
                dmPrincipal.cdsAgenda.Open;
          end;
     end;
end;

procedure TfrmConAgenda.FormShow(Sender: TObject);
begin
     dmPrincipal.qryAgenda.Close;
     dmPrincipal.qryAgenda.SQL.Text := 'select * from agenda where ativo = true order by data_saida';
     dmPrincipal.qryAgenda.Open;
     dmPrincipal.cdsAgenda.Close;
     dmPrincipal.cdsAgenda.Open;
end;

procedure TfrmConAgenda.grdAgendaDBTableView1DblClick(Sender: TObject);
begin
     if btnAltera.Enabled = True then
     begin
          btnAltera.OnClick(Self);
     end;
end;

procedure TfrmConAgenda.grdAgendaDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
     edtIndice.text := trim(copy(AColumn.name,22,100));
     edtOrdem.setfocus;
end;

procedure TfrmConAgenda.edtOrdemChange(Sender: TObject);
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

procedure TfrmConAgenda.grdAgendaDBTableView1EditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
begin
     if (dmPrincipal.cdsAgendanome_usuario.AsString = nome_usuario_login) then
     begin
          if (MessageDlg('Deseja prosseguir com a alteração no agendamento?',
                              mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
          begin
               dmPrincipal.cdsAgenda.Post;
               dmPrincipal.cdsAgenda.ApplyUpdates(0);
               btnVisualiza.OnClick(Self);
          end
          else
               btnVisualiza.OnClick(Self);
     end
     else
     begin
          ShowMessage('Apenas o usuário: '+dmPrincipal.cdsAgendanome_usuario.AsString+' pode alterar este agendamento.');
          btnVisualiza.OnClick(Self);
     end;
end;

procedure TfrmConAgenda.grdAgendaDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if btnAltera.Enabled = True then
     begin
          if (Key = 4100)       or
             (Key = 4101)       or
             (Key = VK_RETURN) or
             (Key = vk_RETURN)  or
             (Key = 13)         then
             btnAltera.OnClick(Self);
     end;
end;

procedure TfrmConAgenda.btnAlteraClick(Sender: TObject);
begin
     if dmPrincipal.cdsAgendaseq_agenda.Value <> 0 then
     begin
          if (dmPrincipal.cdsAgendanome_usuario.AsString = nome_usuario_login) then
          begin
               if not Assigned(frmMntAgenda) then
                    frmMntAgenda := TfrmMntAgenda.Create(Self);
               try
                    begin
                         dmPrincipal.qryAgenda.SQL.Text := 'select * from agenda where seq_agenda = '+dmPrincipal.cdsAgendaseq_agenda.AsString;
                         dmPrincipal.cdsAgenda.close;
                         dmPrincipal.cdsAgenda.open;
                         dmPrincipal.cdsAgenda.Edit;
                              frmMntAgenda.ShowModal;
                    end;
               finally
                    frmMntAgenda.Free;
               end;
               frmMntAgenda := nil;
               grdAgenda.SetFocus
          end
          else
               ShowMessage('Apenas o usuário: '+dmPrincipal.cdsAgendanome_usuario.AsString+' pode alterar este agendamento.');
     end;


end;

end.

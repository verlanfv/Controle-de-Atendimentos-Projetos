unit uMNTBASEDADOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, StdCtrls, ComCtrls, Buttons, DB;

type
  TfrmBaseDados = class(TForm)
    PageControl1: TPageControl;
    btnSalvar: TSpeedButton;
    TabSheet1: TTabSheet;
    btnCancelar: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtCodSolucao: TEdit;
    mmoProblema: TDBMemo;
    mmoSolucao: TDBMemo;
    edtPalavraChave: TDBEdit;
    dsBaseDados: TDataSource;
    Label5: TLabel;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure mmoProblemaKeyPress(Sender: TObject; var Key: Char);
    procedure mmoSolucaoKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaseDados: TfrmBaseDados;

implementation

uses DTMPRINCIPAL, uMNTCHAMADOS, uMNTMOVIMENTOCHAMADO;

{$R *.dfm}

procedure TfrmBaseDados.btnCancelarClick(Sender: TObject);
begin
     if dsBaseDados.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsBaseConhecimento.CancelUpdates;
     Close;
end;

procedure TfrmBaseDados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if dsBaseDados.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsBaseConhecimento.CancelUpdates;
end;

procedure TfrmBaseDados.FormShow(Sender: TObject);
begin
     if dsBaseDados.State in [dsEdit] then
          edtCodSolucao.Text := IntToStr(dmPrincipal.cdsBaseConhecimentocod_solucao.AsInteger);
     if dsBaseDados.State in [dsInsert] then
     begin
          if sCadSolucao = 'S' then
               dmPrincipal.cdsBaseConhecimentodesc_problema.AsString := sDescChamado
          else if sCadSolucaoMov = 'S' then
               dmPrincipal.cdsBaseConhecimentodesc_problema.AsString := sDescChamadoMov;
     end;

end;

procedure TfrmBaseDados.btnSalvarClick(Sender: TObject);
var
     cod_base :Integer;
begin
     if dsBaseDados.State in [dsInsert] then
     begin
          dmPrincipal.qryTemp.close;
          dmPrincipal.qryTemp.SQL.Clear;
          dmPrincipal.qryTemp.SQL.Add('select max(cod_solucao) as codigo from base_conhecimento');
          dmPrincipal.qryTemp.open;
          cod_base := dmPrincipal.qryTemp.FieldByName('codigo').AsInteger;

          dmPrincipal.cdsBaseConhecimentocod_solucao.AsInteger := cod_base + 1;
     end;
     dmPrincipal.cdsBaseConhecimento.Post;
     dmPrincipal.cdsBaseConhecimento.ApplyUpdates(0);

     close;
end;

procedure TfrmBaseDados.mmoProblemaKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=Upcase(key);
     if (Key = #13) then
          key := #0;
end;

procedure TfrmBaseDados.mmoSolucaoKeyPress(Sender: TObject; var Key: Char);
begin
     key:=Upcase(key);
     if (Key = #13) then
          key := #0;
end;

procedure TfrmBaseDados.FormKeyDown(Sender: TObject; var Key: Word;
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

end.

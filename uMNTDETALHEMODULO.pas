unit uMNTDETALHEMODULO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, StdCtrls, ExtCtrls, DBCtrls, Mask;

type
  TfrmDetalheModulo = class(TForm)
    edtCodModulo: TDBEdit;
    edtNomeModulo: TEdit;
    mmoDetalhamento: TDBMemo;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    btnBuscaModulo: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    dsDetalhe: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnBuscaModuloClick(Sender: TObject);
    procedure edtCodModuloKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodModuloExit(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure mmoDetalhamentoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheModulo: TfrmDetalheModulo;

implementation

uses DTMPRINCIPAL, uCONMODULOS, uPRINCIPAL, uMNTREPORTVISITAS;

{$R *.dfm}

procedure TfrmDetalheModulo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if dsDetalhe.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsDetalheModulo.CancelUpdates;
end;

procedure TfrmDetalheModulo.FormKeyDown(Sender: TObject; var Key: Word;
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
          btnSalvar.Click();
     if (Key = 4096)       or
        (key = VK_ESCAPE)  or
        (key = vk_ESCAPE)  or
        (Key = 27)         then
          btnCancelar.Click();
end;

procedure TfrmDetalheModulo.FormShow(Sender: TObject);
begin
     if dsDetalhe.State in [dsEdit] then
          edtCodModulo.OnExit(Self);
end;

procedure TfrmDetalheModulo.btnBuscaModuloClick(Sender: TObject);
var result : boolean;
begin
     if (edtCodModulo.enabled  = false) or
        (edtCodModulo.readonly = true)  then
          Exit;

     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConModulo <> nil then
          frmConModulo := nil;

     frmConModulo := TfrmConModulo.Create(Application);
     try
     begin
          frmConModulo.btnExporta.Enabled := True;
          frmConModulo.ShowModal();
     end
     finally
          frmConModulo.Free();
     end;
     frmConModulo := nil;

     if cancelou_zoom = false then
     begin
          edtCodModulo.Text := dmPrincipal.cdsModulocod_modulo.AsString;
          dmPrincipal.cdsDetalheModulocod_modulo.AsString := edtCodModulo.Text;
     end;

     edtCodModulo.OnExit(Self);
     edtCodModulo.SetFocus;

end;

procedure TfrmDetalheModulo.edtCodModuloKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
         btnBuscaModulo.Click();
end;

procedure TfrmDetalheModulo.edtCodModuloExit(Sender: TObject);
begin
     if (edtCodModulo.Text <> '')  and
        (edtCodModulo.Text <> '0') then
     begin
          dmPrincipal.qryModulo.Close();
          dmPrincipal.qryModulo.sql.text := 'select * from modulos_atendimento order by cod_modulo';
          dmPrincipal.qryModulo.Open();
          if dmPrincipal.qryModulo.Locate('cod_modulo',edtCodModulo.Text,[]) then
               edtNomeModulo.Text  := dmPrincipal.qryModulodesc_modulo.AsString
          else
               edtNomeModulo.Text := '';
     end
     else
          edtNomeModulo.Text := '';
end;

procedure TfrmDetalheModulo.btnCancelarClick(Sender: TObject);
begin
     if dsDetalhe.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsDetalheModulo.CancelUpdates;
     Close;
end;

procedure TfrmDetalheModulo.btnSalvarClick(Sender: TObject);
var
     cod_detalhe :Integer;
begin
     if (edtCodModulo.Text = '') or (edtNomeModulo.Text = '') then
     begin
          ShowMessage('O módulo não pode ser nulo! ');
          edtCodModulo.SetFocus;
          Abort;
     end;
     if mmoDetalhamento.Text = '' then
     begin
          ShowMessage('O detalhamento do módulo não pode ser nulo! ');
          mmoDetalhamento.SetFocus;
          Abort;
     end;
     {if dsDetalhe.State in [dsInsert] then
     begin
          dmPrincipal.qryTemp.close;
          dmPrincipal.qryTemp.SQL.Clear;
          dmPrincipal.qryTemp.SQL.Add('select max(cod_detalhe) as codigo from detalhe_modulo_atendimento');
          dmPrincipal.qryTemp.open;
          cod_detalhe := dmPrincipal.qryTemp.FieldByName('codigo').AsInteger;

          dmPrincipal.cdsDetalheModulocod_detalhe.AsInteger := cod_detalhe + 1;
     end;}
     dmPrincipal.cdsDetalheModulonome_modulo.AsString     := edtNomeModulo.Text;
     dmPrincipal.cdsDetalheModulocod_chamado.AsInteger    := dmPrincipal.cdsCompromissoscod_chamado.AsInteger;
     dmPrincipal.cdsDetalheModulodata_chamado.AsDateTime  := dmPrincipal.cdsCompromissosdata_chamado.AsDateTime;
     dmPrincipal.cdsDetalheModulocod_compromisso.AsString := frmReportVisita.edtCompromisso.Text;
     dmPrincipal.cdsDetalheModulocod_report.AsInteger     := dmPrincipal.cdsReportcod_report.AsInteger;
     dmPrincipal.cdsDetalheModulo.Post;
     dmPrincipal.cdsDetalheModulo.ApplyUpdates(0);

     close;

end;

procedure TfrmDetalheModulo.mmoDetalhamentoKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=Upcase(key);
     if (Key = #13) then
          key := #0;
end;

end.

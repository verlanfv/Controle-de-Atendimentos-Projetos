unit uBUSCAEMAIL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Buttons;

type
  TfrmBuscaEmail = class(TForm)
    btnbusca: TBitBtn;
    btnExportaEmail: TBitBtn;
    edtCodCliente: TEdit;
    edtNome: TEdit;
    btnBuscaEmail: TBitBtn;
    Label1: TLabel;
    lstEmails: TListBox;
    procedure btnBuscaEmailClick(Sender: TObject);
    procedure edtCodClienteExit(Sender: TObject);
    procedure btnbuscaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExportaEmailClick(Sender: TObject);
    procedure lstEmailsDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuscaEmail: TfrmBuscaEmail;
  EmailSelect  : String;
implementation

uses uCONCLIENTES, DTMPRINCIPAL, uPRINCIPAL;

{$R *.dfm}

procedure TfrmBuscaEmail.btnBuscaEmailClick(Sender: TObject);
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
          edtCodCliente.Text:= dmPrincipal.cdsClientescod_cliente.AsString;
     end;

     edtCodCliente.OnExit(Self);
     edtCodCliente.SetFocus;

end;

procedure TfrmBuscaEmail.edtCodClienteExit(Sender: TObject);
begin
     if (edtCodCliente.Text <> '')  and
        (edtCodCliente.Text <> '0') then
     begin
          dmPrincipal.qryClientes.Close();
          dmPrincipal.qryClientes.sql.text := 'select * from cliente order by cod_cliente';
          dmPrincipal.qryClientes.Open();
          if dmPrincipal.qryClientes.Locate('cod_cliente',edtCodCliente.Text,[]) then
               edtNome.Text  := dmPrincipal.qryClientesnome_cliente.AsString
          else
               edtNome.Text := '';
     end
     else
          edtNome.Text := '';

end;

procedure TfrmBuscaEmail.btnbuscaClick(Sender: TObject);
begin
     if (edtCodCliente.Text = '') or (edtNome.Text = '') then
     begin
          ShowMessage('Informe um cliente v?lido!');
          edtCodCliente.SetFocus;
          Abort;
     end;

     lstEmails.Items.Clear;
     dmPrincipal.qryBuscaEmails.Close;
     dmPrincipal.qryBuscaEmails.SQL.text := 'select * from email_cliente '+
                                            'where cod_cliente = '+edtCodCliente.Text;
     dmPrincipal.qryBuscaEmails.open;
     if not dmPrincipal.qryBuscaEmails.IsEmpty then
     begin
          if dmPrincipal.qryBuscaEmailsemail_1.AsString <> '' then
               lstEmails.Items.Add(dmPrincipal.qryBuscaEmailsemail_1.AsString+' - '+dmPrincipal.qryBuscaEmailscontato_1.AsString);
          if dmPrincipal.qryBuscaEmailsemail_2.AsString <> '' then
               lstEmails.Items.Add(dmPrincipal.qryBuscaEmailsemail_2.AsString+' - '+dmPrincipal.qryBuscaEmailscontato_2.AsString);
          if dmPrincipal.qryBuscaEmailsemail_3.AsString <> '' then
               lstEmails.Items.Add(dmPrincipal.qryBuscaEmailsemail_3.AsString+' - '+dmPrincipal.qryBuscaEmailscontato_3.AsString);
          if dmPrincipal.qryBuscaEmailsemail_4.AsString <> '' then
               lstEmails.Items.Add(dmPrincipal.qryBuscaEmailsemail_4.AsString+' - '+dmPrincipal.qryBuscaEmailscontato_4.AsString);
          if dmPrincipal.qryBuscaEmailsemail_5.AsString <> '' then
               lstEmails.Items.Add(dmPrincipal.qryBuscaEmailsemail_5.AsString+' - '+dmPrincipal.qryBuscaEmailscontato_5.AsString);
          if dmPrincipal.qryBuscaEmailsemail_6.AsString <> '' then
               lstEmails.Items.Add(dmPrincipal.qryBuscaEmailsemail_6.AsString+' - '+dmPrincipal.qryBuscaEmailscontato_6.AsString);
          if dmPrincipal.qryBuscaEmailsemail_7.AsString <> '' then
               lstEmails.Items.Add(dmPrincipal.qryBuscaEmailsemail_7.AsString+' - '+dmPrincipal.qryBuscaEmailscontato_7.AsString);
          if dmPrincipal.qryBuscaEmailsemail_8.AsString <> '' then
               lstEmails.Items.Add(dmPrincipal.qryBuscaEmailsemail_8.AsString+' - '+dmPrincipal.qryBuscaEmailscontato_8.AsString);
     end;
     if (dmPrincipal.qryBuscaEmailsemail_1.AsString = '') and (dmPrincipal.qryBuscaEmailsemail_2.AsString = '') and (dmPrincipal.qryBuscaEmailsemail_3.AsString = '') and
        (dmPrincipal.qryBuscaEmailsemail_4.AsString = '') and (dmPrincipal.qryBuscaEmailsemail_5.AsString = '') and (dmPrincipal.qryBuscaEmailsemail_6.AsString = '') and
        (dmPrincipal.qryBuscaEmailsemail_7.AsString = '') and (dmPrincipal.qryBuscaEmailsemail_8.AsString = '') then

          ShowMessage('Nenhum e-mail foi encontrado para esse cliente!');
end;

procedure TfrmBuscaEmail.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key = VK_ESCAPE then
          close();
     if (Key = 4100)       or
        (Key = 4101)       or
        (Key = VK_RETURN) or
        (Key = vk_RETURN)  or
        (Key = 13)         then
          SelectNext(ActiveControl, True, True );
end;

procedure TfrmBuscaEmail.btnExportaEmailClick(Sender: TObject);
var
     sSelect : string;
     i : integer;
begin
     sSelect := '';
     sSelect := lstEmails.Items.Strings[lstEmails.itemindex];
     for i := 1 to length(sSelect) do
     begin
          if copy(sSelect,i,1) = ' ' then
               Break
          else
               EmailSelect := EmailSelect + copy(sSelect,i,1);
     end;
     Close();
end;

procedure TfrmBuscaEmail.lstEmailsDblClick(Sender: TObject);
begin
     btnExportaEmail.OnClick(Self);
end;

procedure TfrmBuscaEmail.FormShow(Sender: TObject);
begin
     EmailSelect := '';
end;

end.

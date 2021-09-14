unit uMNTUSUARIO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Mask, DBCtrls, StdCtrls, ComCtrls, ExtCtrls, DB;

type
  TfrmCadUsuario = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    edtCodUsuario: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edtNomeArea: TEdit;
    edtNomeUsuario: TDBEdit;
    cbxDefinicao: TDBComboBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btnBuscaArea: TSpeedButton;
    chxTodosChamados: TDBCheckBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtMail: TDBEdit;
    edtHost: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    edtLogin: TDBEdit;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    chxAtivo: TDBCheckBox;
    dsUsuario: TDataSource;
    edtSenhaConta: TMaskEdit;
    edtSenhaLogin: TMaskEdit;
    Label10: TLabel;
    Label11: TLabel;
    edtUsuarioConta: TDBEdit;
    edtPortaSaida: TDBEdit;
    chxRecebeEmail: TDBCheckBox;
    edtCodArea: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure edtCodAreaExit(Sender: TObject);
    procedure btnBuscaAreaClick(Sender: TObject);
    procedure cbxDefinicaoChange(Sender: TObject);
    procedure edtCodAreaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadUsuario: TfrmCadUsuario;

implementation

uses DTMPRINCIPAL, uPRINCIPAL, uCONAREA, uLOGIN;

{$R *.dfm}

procedure TfrmCadUsuario.FormShow(Sender: TObject);
var
     i : integer;
     senha, senhainv, decrip : String;
begin
     cod_area_zoom := 0;
     if dsUsuario.State in [dsEdit] then
     begin
          if (dmPrincipal.cdsUsuariocod_usuario.AsInteger  = cod_usuario_login) and (definicao <> 'ADMINISTRADOR') then
          begin
               Panel1.Enabled           := false;
               edtNomeUsuario.Enabled   := false;
               cbxDefinicao.Enabled     := false;
               chxTodosChamados.Enabled := true;
               chxRecebeEmail.Enabled   := true;
               edtMail.Enabled          := true;
               edtHost.Enabled          := true;
               edtSenhaConta.Enabled    := true;
               edtUsuarioConta.Enabled  := true;
               edtPortaSaida.Enabled    := true;
               edtLogin.Enabled         := true;
               edtSenhaLogin.Enabled    := true;
               //edtLogin.color           := cl3DLight;
               //edtSenhaLogin.color      := cl3DLight;

          end
          else if (definicao = 'ADMINISTRADOR') then
          begin
               Panel1.Enabled           := true;
               edtNomeUsuario.Enabled   := true;
               cbxDefinicao.Enabled     := true;
               chxTodosChamados.Enabled := true;
               chxRecebeEmail.Enabled   := true;
               edtMail.Enabled          := true;
               edtHost.Enabled          := true;
               edtSenhaConta.Enabled    := true;
               edtUsuarioConta.Enabled  := true;
               edtPortaSaida.Enabled    := true;
               edtLogin.Enabled         := true;
               edtSenhaLogin.Enabled    := true;
               //edtLogin.color           := cl3DLight;
               //edtSenhaLogin.color      := cl3DLight;
          end;

          edtCodUsuario.Text := IntToStr(dmPrincipal.cdsUsuariocod_usuario.AsInteger);
          //desencriptando senha da conta de email//
          senha    := dmPrincipal.cdsUsuariosenha_conta.AsString;
          senhainv := '';
          i :=0;
          for i := length(senha) downto 1 do
               senhainv := senhainv + copy(senha,i,1);

          senha              := senhainv;
          decrip             := frmPrincipal.desencrip(senha);
          edtSenhaConta.Text := decrip;

          //desencriptando senha de login//
          senha    := dmPrincipal.cdsUsuariosenha.AsString;
          senhainv := '';
          i :=0;
          for i := length(senha) downto 1 do
               senhainv := senhainv + copy(senha,i,1);

          senha              := senhainv;
          decrip             := frmPrincipal.desencrip(senha);
          edtSenhaLogin.Text := decrip;

          edtCodArea.OnExit(Self);
     end;

     if dsUsuario.State in [dsInsert] then
     begin
          dmPrincipal.cdsUsuarioativo.AsString                     := 'S';
          dmPrincipal.cdsUsuariopermite_ver_todos_chmados.AsString := 'N';
          dmPrincipal.cdsUsuarioreceber_reg_alteracao.AsString     := 'N';

          if (dmPrincipal.cdsUsuariocod_usuario.AsInteger  = cod_usuario_login) and (definicao <> 'ADMINISTRADOR') then
          begin
               Panel1.Enabled           := false;
               edtNomeUsuario.Enabled   := false;
               cbxDefinicao.Enabled     := false;
               chxTodosChamados.Enabled := true;
               chxRecebeEmail.Enabled   := true;
               edtMail.Enabled          := true;
               edtHost.Enabled          := true;
               edtSenhaConta.Enabled    := true;
               edtUsuarioConta.Enabled  := true;
               edtPortaSaida.Enabled    := true;
               edtLogin.Enabled         := true;
               edtSenhaLogin.Enabled    := true;
               //edtLogin.color           := cl3DLight;
               //edtSenhaLogin.color      := cl3DLight;

          end
          else if (definicao = 'ADMINISTRADOR') then
          begin
               Panel1.Enabled           := true;
               edtNomeUsuario.Enabled   := true;
               cbxDefinicao.Enabled     := true;
               chxTodosChamados.Enabled := true;
               chxRecebeEmail.Enabled   := true;
               edtMail.Enabled          := true;
               edtHost.Enabled          := true;
               edtSenhaConta.Enabled    := true;
               edtUsuarioConta.Enabled  := true;
               edtPortaSaida.Enabled    := true;
               edtLogin.Enabled         := true;
               edtSenhaLogin.Enabled    := true;
               //edtLogin.color           := cl3DLight;
               //edtSenhaLogin.color      := cl3DLight;
          end;
     end;
end;

procedure TfrmCadUsuario.btnCancelarClick(Sender: TObject);
begin
     if dsUsuario.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsUsuario.CancelUpdates;
     Close;
end;

procedure TfrmCadUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if dsUsuario.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsUsuario.CancelUpdates;
end;

procedure TfrmCadUsuario.btnSalvarClick(Sender: TObject);
var campos        : array[0..92] of string;
    senha, senha_encrip, senhainv : string;
    i,j : integer;
    cod_user :Integer;
begin
     edtCodArea.OnExit(Self);
     if (edtCodArea.Text = '') or (edtNomeArea.Text = '') then
     begin
          ShowMessage('A área não pode ser nula! ');
          edtCodArea.SetFocus;
          Abort;
     end;
     if edtNomeUsuario.Text = '' then
     begin
          ShowMessage('O nome do usuário não pode ser nulo! ');
          edtNomeUsuario.SetFocus;
          Abort;
     end;
     if cbxDefinicao.Text = '' then
     begin
          ShowMessage('A definição do usuário não pode ser nula! ');
          cbxDefinicao.SetFocus;
          Abort;
     end;
     if edtMail.Text = '' then
     begin
          ShowMessage('O e-mail do usuário não pode ser nulo! ');
          edtMail.SetFocus;
          Abort;
     end;
     if edtLogin.Text = '' then
     begin
          ShowMessage('O login do usuário não pode ser nulo! ');
          edtLogin.SetFocus;
          Abort;
     end;
     if edtUsuarioConta.Text = '' then
     begin
          ShowMessage('O usuário da conta de e-mail não pode ser nulo! ');
          edtUsuarioConta.SetFocus;
          Abort;
     end;
     if edtPortaSaida.Text = '' then
     begin
          ShowMessage('A porta do servidor de saída não pode ser nula! ');
          edtPortaSaida.SetFocus;
          Abort;
     end;

     if dsUsuario.State in [dsInsert] then
     begin
          dmPrincipal.qryTemp.close;
          dmPrincipal.qryTemp.SQL.Clear;
          dmPrincipal.qryTemp.SQL.Add('select max(cod_usuario) as codigo from usuario');
          dmPrincipal.qryTemp.open;
          cod_user := dmPrincipal.qryTemp.FieldByName('codigo').AsInteger;

          dmPrincipal.cdsUsuariocod_usuario.AsInteger := cod_user + 1;
     end;

     if edtSenhaConta.Text <> '' then
     begin
          campos[0]  := 'a'; campos[1]  := 'b'; campos[2]  := 'c'; campos[3]  := 'd';
          campos[4]  := 'e'; campos[5]  := 'f'; campos[6]  := 'g'; campos[7]  := 'h';
          campos[8]  := 'i'; campos[9]  := 'j'; campos[10] := 'k'; campos[11] := 'l';
          campos[12] := 'm'; campos[13] := 'n'; campos[14] := 'o'; campos[15] := 'p';
          campos[16] := 'q'; campos[17] := 'r'; campos[18] := 's'; campos[19] := 't';
          campos[20] := 'u'; campos[21] := 'v'; campos[22] := 'w'; campos[23] := 'x';
          campos[24] := 'y'; campos[25] := 'z';
          campos[26] := 'A'; campos[27] := 'B'; campos[28] := 'C'; campos[29] := 'D';
          campos[30] := 'E'; campos[31] := 'F'; campos[32] := 'G'; campos[33] := 'H';
          campos[34] := 'I'; campos[35] := 'J'; campos[36] := 'K'; campos[37] := 'L';
          campos[38] := 'M'; campos[39] := 'N'; campos[40] := 'O'; campos[41] := 'P';
          campos[42] := 'Q'; campos[43] := 'R'; campos[44] := 'S'; campos[45] := 'T';
          campos[46] := 'U'; campos[47] := 'V'; campos[48] := 'W'; campos[49] := 'X';
          campos[50] := 'Y'; campos[51] := 'Z';
          campos[52] := '0'; campos[53] := '1'; campos[54] := '2'; campos[55] := '3';
          campos[56] := '4'; campos[57] := '5'; campos[58] := '6'; campos[59] := '7';
          campos[60] := '8'; campos[61] := '9'; campos[62] := ' ';
          campos[63] := '@';
          campos[64] := '~'; campos[65] := '!'; campos[66] := '$'; campos[67] := '%';
          campos[68] := '^'; campos[69] := '&'; campos[70] := '('; campos[71] := ')';
          campos[72] := '_'; campos[73] := '-'; campos[74] := '+'; campos[75] := '=';
          campos[76] := '{'; campos[77] := '}'; campos[78] := '['; campos[79] := ']';
          campos[80] := '\'; campos[81] := '|'; campos[82] := ':'; campos[83] := ';';
          campos[84] := '"'; campos[85] := '<'; campos[86] := '>'; campos[87] := ',';
          campos[88] := '.'; campos[89] := '?'; campos[90] := '/'; campos[91] := '*';
          campos[92] := '#';

          senha := edtSenhaConta.Text;

          senha_encrip := frmPrincipal.encrip(senha);

          i:= 0;
          senhainv := '';
          for i := 1 to length(senha_encrip) do
               senhainv := copy(senha_encrip,i,1) + senhainv;
          dmPrincipal.cdsUsuariosenha_conta.AsString := senhainv;
     end
     else
           dmPrincipal.cdsUsuariosenha_conta.AsString := '';

     if edtSenhaLogin.Text <> '' then
     begin
          campos[0]  := 'a'; campos[1]  := 'b'; campos[2]  := 'c'; campos[3]  := 'd';
          campos[4]  := 'e'; campos[5]  := 'f'; campos[6]  := 'g'; campos[7]  := 'h';
          campos[8]  := 'i'; campos[9]  := 'j'; campos[10] := 'k'; campos[11] := 'l';
          campos[12] := 'm'; campos[13] := 'n'; campos[14] := 'o'; campos[15] := 'p';
          campos[16] := 'q'; campos[17] := 'r'; campos[18] := 's'; campos[19] := 't';
          campos[20] := 'u'; campos[21] := 'v'; campos[22] := 'w'; campos[23] := 'x';
          campos[24] := 'y'; campos[25] := 'z';
          campos[26] := 'A'; campos[27] := 'B'; campos[28] := 'C'; campos[29] := 'D';
          campos[30] := 'E'; campos[31] := 'F'; campos[32] := 'G'; campos[33] := 'H';
          campos[34] := 'I'; campos[35] := 'J'; campos[36] := 'K'; campos[37] := 'L';
          campos[38] := 'M'; campos[39] := 'N'; campos[40] := 'O'; campos[41] := 'P';
          campos[42] := 'Q'; campos[43] := 'R'; campos[44] := 'S'; campos[45] := 'T';
          campos[46] := 'U'; campos[47] := 'V'; campos[48] := 'W'; campos[49] := 'X';
          campos[50] := 'Y'; campos[51] := 'Z';
          campos[52] := '0'; campos[53] := '1'; campos[54] := '2'; campos[55] := '3';
          campos[56] := '4'; campos[57] := '5'; campos[58] := '6'; campos[59] := '7';
          campos[60] := '8'; campos[61] := '9'; campos[62] := ' ';
          campos[63] := '@';
          campos[64] := '~'; campos[65] := '!'; campos[66] := '$'; campos[67] := '%';
          campos[68] := '^'; campos[69] := '&'; campos[70] := '('; campos[71] := ')';
          campos[72] := '_'; campos[73] := '-'; campos[74] := '+'; campos[75] := '=';
          campos[76] := '{'; campos[77] := '}'; campos[78] := '['; campos[79] := ']';
          campos[80] := '\'; campos[81] := '|'; campos[82] := ':'; campos[83] := ';';
          campos[84] := '"'; campos[85] := '<'; campos[86] := '>'; campos[87] := ',';
          campos[88] := '.'; campos[89] := '?'; campos[90] := '/'; campos[91] := '*';
          campos[92] := '#';

          senha := edtSenhaLogin.Text;

          senha_encrip := frmPrincipal.encrip(senha);

          i:= 0;
          senhainv := '';
          for i := 1 to length(senha_encrip) do
               senhainv := copy(senha_encrip,i,1) + senhainv;
          dmPrincipal.cdsUsuariosenha.AsString := senhainv;
     end
     else
          dmPrincipal.cdsUsuariosenha.AsString := '';

     dmPrincipal.cdsUsuario.Post;
     dmPrincipal.cdsUsuario.ApplyUpdates(0);

     close;

end;

procedure TfrmCadUsuario.edtCodAreaExit(Sender: TObject);
begin
     if (edtCodArea.Text <> '')  and
        (edtCodArea.Text <> '0') then
     begin
          dmPrincipal.qryArea.Close();
          dmPrincipal.qryArea.sql.text := 'select * from area_usuario order by cod_area';
          dmPrincipal.qryArea.Open();
          if dmPrincipal.qryArea.Locate('cod_area',edtCodArea.Text,[]) then
               edtNomeArea.Text  := dmPrincipal.qryAreadescricao_area.AsString
          else
               edtNomeArea.Text := '';
     end
     else
          edtNomeArea.Text := '';
end;

procedure TfrmCadUsuario.btnBuscaAreaClick(Sender: TObject);
var result : boolean;
begin
     if (edtCodArea.enabled  = false) or
        (edtCodArea.readonly = true)  then
          Exit;

     chamou_zoom := true;
     cancelou_zoom := false;
     if frmConAreas <> nil then
          frmConAreas := nil;

     if (edtCodArea.Text <> '') then
          cod_area_zoom := strtoint(edtCodArea.Text);


     frmConAreas := TfrmConAreas.Create(Application);
     try
     begin
          frmConAreas.btnExporta.Enabled := True;
          frmConAreas.ShowModal();
     end
     finally
          frmConAreas.Free();
     end;
     frmConAreas := nil;

     if cancelou_zoom = false then
     begin
          edtCodArea.Text := dmPrincipal.cdsAreacod_area.AsString;
          dmPrincipal.cdsUsuariocod_area.AsString := edtCodArea.Text;
     end;

     edtCodArea.OnExit(Self);
     edtCodArea.SetFocus;

end;

procedure TfrmCadUsuario.cbxDefinicaoChange(Sender: TObject);
begin
     if cbxDefinicao.ItemIndex in [1,2] then
     begin
          chxTodosChamados.Checked := True;
          dmPrincipal.cdsUsuariopermite_ver_todos_chmados.AsString := 'S';
     end
     else
     begin
          chxTodosChamados.Checked := False;
          dmPrincipal.cdsUsuariopermite_ver_todos_chmados.AsString := 'N';
     end;
end;

procedure TfrmCadUsuario.edtCodAreaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     inherited;
     if (Key = 4146)   or
        (key = VK_F3) or
        (Key = vk_F3)  or
        (Key = 114)    then
         btnBuscaArea.Click();
end;

procedure TfrmCadUsuario.FormKeyDown(Sender: TObject; var Key: Word;
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

end.

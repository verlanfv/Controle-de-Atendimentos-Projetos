unit uLOGIN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, Mask, dxGDIPlusClasses;

type
  TfrmLogin = class(TForm)
    Panel1: TPanel;
    pnlLogin: TPanel;
    pnlBotoes: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtCodigo: TEdit;
    edtNome: TEdit;
    edtSenha: TMaskEdit;
    MaskEdit1: TMaskEdit;
    pnlData: TPanel;
    edtData: TMaskEdit;
    edtData_extenso: TEdit;
    Label4: TLabel;
    edtNomeUser: TEdit;
    edtDefinicao: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    btnRetornar: TBitBtn;
    btnAcessar: TBitBtn;
    btnSair: TBitBtn;
    btnConfirma: TBitBtn;
    Panel2: TPanel;
    Image1: TImage;
    procedure edtCodigoExit(Sender: TObject);
    procedure edtNomeExit(Sender: TObject);
    procedure btnAcessarClick(Sender: TObject);
    procedure edtDataExit(Sender: TObject);
    procedure btnRetornarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;
  cod_usuario_login,cod_setor_login : integer;
  nome_usuario_login, login_login, definicao, des_area, ver_todos : string;
  confirma_senha : boolean;
  data_sistema_login : TDateTime;

implementation

uses DTMPRINCIPAL, uPRINCIPAL, DB;

{$R *.dfm}

procedure TfrmLogin.edtCodigoExit(Sender: TObject);
begin
     if trim(edtCodigo.Text) <> '' then
     begin
          try
               strtoint(edtCodigo.Text)
          except
               MessageDlg('Informe somente número para o código do usuário',
                          mtError, [mbOk], 0);
               edtCodigo.setfocus;
               Abort();
          end;
     end;

     if (trim(edtCodigo.Text) <> '')  and
        (trim(edtCodigo.Text) <> '0') then
     begin
          dmPrincipal.qryUsuarios.Close;
          dmPrincipal.qryUsuarios.SQL.text := ansilowercase('SELECT * FROM USUARIO '+
                                             ' ORDER BY COD_USUARIO');
          dmPrincipal.qryUsuarios.Open;
          dmPrincipal.cdsUsuario.Close;
          dmPrincipal.cdsUsuario.Open;
          if dmPrincipal.cdsUsuario.Locate(ansilowercase('COD_USUARIO'),edtCodigo.Text,[]) then
          begin
               edtNome.Text := dmPrincipal.cdsUsuariologin.AsString;
          end
          else
               edtNome.Text := '';
     end;
end;

procedure TfrmLogin.edtNomeExit(Sender: TObject);
begin
     if trim(edtNome.Text) <> '' then
     begin
          dmPrincipal.cdsUsuario.Open();
          if dmPrincipal.cdsUsuario.Locate(ansilowercase('login'),edtNome.Text,[]) then
               edtCodigo.Text := dmPrincipal.cdsUsuariocod_usuario.AsString
          else
               edtCodigo.Text := '';
     end;
end;

procedure TfrmLogin.btnAcessarClick(Sender: TObject);
var campos        : array[0..92] of string;
    senha, senha_encrip, senhainv, res : string;
    i,j,icod_user_login : integer;
    achou,result  : boolean;
begin
     edtCodigo.OnExit(self);
     edtCodigo.OnExit(Self);
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
     
     senha := edtSenha.Text;

     senha_encrip := frmPrincipal.encrip(senha);

     i:= 0;
     senhainv := '';
     for i := 1 to length(senha_encrip) do
          senhainv := copy(senha_encrip,i,1) + senhainv;


     dmPrincipal.qryUsuarios.Close();
     dmPrincipal.qryUsuarios.Open();
     dmPrincipal.cdsUsuario.Active := false;
     dmPrincipal.cdsUsuario.Active := true;

     if dmPrincipal.cdsUsuario.Locate(ansilowercase('LOGIN;SENHA'),VarArrayOf([edtNome.Text,senhainv]),[]) then
     begin
          if dmPrincipal.cdsUsuarioativo.Value = 'N' then
          begin
               MessageDlg('Usuário marcado como não ativo não pode acessar o sistema !',
                                           mtError, [mbOk], 0);
          end
          else
          begin
               pnlLogin.Visible     := false;
               pnlData.Visible      := true;
               btnRetornar.visible  := true;
               btnAcessar.Visible   := false;
               btnConfirma.Visible  := true;
               edtData.Text         := FormatDateTime('dd/mm/yyyy',date);
               edtNomeUser.Text     := dmPrincipal.cdsUsuarionome_usuario.AsString;
               edtDefinicao.Text    := dmPrincipal.cdsUsuariodefinicao_usuario.AsString;
               res                  := frmPrincipal.dataporextenso(strtodate(edtData.Text));
               edtData_extenso.Text := res;
          end; // else if sai = 'cancela' then
     end
     else
     begin
          MessageDlg('Login ou Senha inválido. Tente novamente',
                                      mtError, [mbOk], 0);
          abort();
     end;
end;

procedure TfrmLogin.edtDataExit(Sender: TObject);
var data : TDateTime;
    data1 : string;
    result : string;
begin
     {result := frmMaster.Formata_Data(edtData.Text);
     if result <> '' then
          edtData.Text := result;
     try
          StrToDate(edtData.Text)
     except
          MessageDlg('Informe uma data válida !',
                                 mtError, [mbOk], 0);
          edtData.SetFocus;
          Abort();
     end;}

     //result               := frmPrincipal.dataporextenso(strtodate(edtData.Text));
     //edtData_extenso.Text := result;

end;

procedure TfrmLogin.btnRetornarClick(Sender: TObject);
begin
     pnlLogin.Visible    := true;
     pnlData.Visible     := false;
     btnRetornar.visible := false;
     btnConfirma.visible := false;
     btnAcessar.visible  := true;
     edtCodigo.text      := '0';
     edtNome.text        := '';
     edtSenha.text       := '';
     edtCodigo.setfocus;
end;

procedure TfrmLogin.btnSairClick(Sender: TObject);
begin
     confirma_senha := false;
     Close;
end;

procedure TfrmLogin.btnConfirmaClick(Sender: TObject);
begin
     //Passa os valores para as variáveis do sistema
     data_sistema_login := strtodate(edtData.Text);
     cod_usuario_login  := dmPrincipal.cdsUsuariocod_usuario.AsInteger;
     nome_usuario_login := dmPrincipal.cdsUsuarionome_usuario.AsString;
     login_login        := edtNome.Text;
     cod_setor_login    := dmPrincipal.cdsUsuariocod_area.AsInteger;
     definicao          := dmPrincipal.cdsUsuariodefinicao_usuario.AsString;
     ver_todos          := dmPrincipal.cdsUsuariopermite_ver_todos_chmados.AsString;
     //busca a descrição da area do usuário//
     dmPrincipal.qryArea.Close;
     dmPrincipal.qryArea.Open;
     dmPrincipal.cdsArea.Close;
     dmPrincipal.cdsArea.open;
     if dmPrincipal.cdsArea.Locate('cod_area',inttostr(cod_setor_login),[]) then
          des_area := dmPrincipal.cdsAreadescricao_area.AsString;
     //confirma a senha p/ abertura do menu//
     confirma_senha := True;
     //Para realizar a troca de usuário//
     if Assigned(frmPrincipal) then
          frmPrincipal.OnShow(Self);
     Close;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
     edtData.text := formatdatetime('dd/mm/yyyy',date);
end;

procedure TfrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
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
          btnAcessar.Click();
     if (Key = 4096)       or
        (key = VK_ESCAPE) or
        (key = vk_ESCAPE)  or
        (Key = 27)         then
          btnSair.Click();
end;

end.

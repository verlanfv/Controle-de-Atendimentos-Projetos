unit uMNTCLIENTES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, Mask, ExtCtrls, DB, Buttons,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit;

type
  TfrmCadClientes = class(TForm)
    PageControl1: TPageControl;
    tsGeral: TTabSheet;
    Label1: TLabel;
    edtCodCliente: TEdit;
    cbxAtivo: TDBCheckBox;
    rgTipo: TRadioGroup;
    lblCPF: TLabel;
    edtCPF: TMaskEdit;
    edtCNPJ: TMaskEdit;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    edtNomeCliente: TDBEdit;
    edtNomeFantasia: TDBEdit;
    mmoObservacao: TDBMemo;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    dsCliente: TDataSource;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    edtEndereco: TDBEdit;
    Label8: TLabel;
    edtCidade: TDBEdit;
    Label7: TLabel;
    edtBairro: TDBEdit;
    Label9: TLabel;
    edtUF: TDBEdit;
    Label10: TLabel;
    edtfone: TMaskEdit;
    GroupBox3: TGroupBox;
    Label11: TLabel;
    edtMail: TDBEdit;
    Label12: TLabel;
    edtHostMail: TDBEdit;
    Label5: TLabel;
    Label13: TLabel;
    edtArqCliente: TDBEdit;
    Label14: TLabel;
    tsEmail: TTabSheet;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    edtmail_1: TDBEdit;
    edtmail_2: TDBEdit;
    edtmail_3: TDBEdit;
    edtmail_4: TDBEdit;
    edtmail_5: TDBEdit;
    dsMail: TDataSource;
    edtmail_6: TDBEdit;
    edtmail_7: TDBEdit;
    edtmail_8: TDBEdit;
    edtcontato1: TDBEdit;
    edtcontato2: TDBEdit;
    edtcontato3: TDBEdit;
    edtcontato4: TDBEdit;
    edtcontato5: TDBEdit;
    edtcontato6: TDBEdit;
    edtcontato7: TDBEdit;
    edtcontato8: TDBEdit;
    Label23: TLabel;
    Label31: TLabel;
    edtDtAtualizacao: TcxDBDateEdit;
    Label32: TLabel;
    edtfone1: TMaskEdit;
    edtfone2: TMaskEdit;
    edtfone3: TMaskEdit;
    edtfone4: TMaskEdit;
    edtfone5: TMaskEdit;
    edtfone6: TMaskEdit;
    edtfone7: TMaskEdit;
    edtfone8: TMaskEdit;
    tsRemoto: TTabSheet;
    edtDistancia: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    edtEmailNfe: TDBEdit;
    mmoDados: TMemo;
    DBComboBox1: TDBComboBox;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label20: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    Panel2: TPanel;
    TabSheet1: TTabSheet;
    GroupBox4: TGroupBox;
    Label21: TLabel;
    DBEdit3: TDBEdit;
    Label22: TLabel;
    DBEdit4: TDBEdit;
    Label24: TLabel;
    DBEdit5: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure mmoObservacaoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure mmoDadosEnter(Sender: TObject);
    procedure mmoDadosExit(Sender: TObject);
  private
    function Crypt(Action, Src: String): String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadClientes: TfrmCadClientes;

implementation

uses DTMPRINCIPAL, uMAIL, uPRINCIPAL, uLOGIN;

{$R *.dfm}

procedure TfrmCadClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     //Excluir registro bloqueado
     if dsCliente.State in [dsEdit] then
     begin
          dmPrincipal.cdsBloqueados.Close();
          dmPrincipal.cdsBloqueados.Open();
          if dmPrincipal.cdsBloqueados.Locate('tabela;chave1;chave2;chave3;chave4;chave5',VarArrayOf(['cliente',IntToStr(dmPrincipal.cdsClientescod_cliente.AsInteger),
                                                  '0','0','0','0']),[]) then
          begin
               dmPrincipal.cdsBloqueados.Delete;
               dmPrincipal.cdsBloqueados.ApplyUpdates(0);
               dmPrincipal.qryBloqueados.Close();
               dmPrincipal.cdsBloqueados.Close();
               dmPrincipal.qryBloqueados.Open();
               dmPrincipal.cdsBloqueados.Open();
          end;
     end;
     
     if dsCliente.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsClientes.CancelUpdates;
     if dsMail.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsMail.CancelUpdates;
     
end;

procedure TfrmCadClientes.btnCancelarClick(Sender: TObject);
begin
     //Excluir registro bloqueado
     if dsCliente.State in [dsEdit] then
     begin
          dmPrincipal.cdsBloqueados.Close();
          dmPrincipal.cdsBloqueados.Open();
          if dmPrincipal.cdsBloqueados.Locate('tabela;chave1;chave2;chave3;chave4;chave5',VarArrayOf(['cliente',IntToStr(dmPrincipal.cdsClientescod_cliente.AsInteger),
                                                  '0','0','0','0']),[]) then
          begin
               dmPrincipal.cdsBloqueados.Delete;
               dmPrincipal.cdsBloqueados.ApplyUpdates(0);
               dmPrincipal.qryBloqueados.Close();
               dmPrincipal.cdsBloqueados.Close();
               dmPrincipal.qryBloqueados.Open();
               dmPrincipal.cdsBloqueados.Open();
          end;
     end;
     
     if dsCliente.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsClientes.CancelUpdates;
     if dsMail.State in [dsInsert,dsEdit] then
          dmPrincipal.cdsMail.CancelUpdates;

     Close;
end;

procedure TfrmCadClientes.FormShow(Sender: TObject);
begin
     if dsCliente.State in [dsEdit] then
     begin
          //Registro Bloqueado

          dmPrincipal.cdsBloqueados.InsertRecord(['cliente',
                                                    nome_usuario_login,
                                                    IntToStr(dmPrincipal.cdsClientescod_cliente.AsInteger),
                                                    '0',
                                                    '0',
                                                    '0',
                                                    '0']);
          dmPrincipal.cdsBloqueados.ApplyUpdates(0);
          dmPrincipal.qryBloqueados.Close();
          dmPrincipal.cdsBloqueados.Close();
          dmPrincipal.qryBloqueados.Open();
          dmPrincipal.cdsBloqueados.Open();


          edtfone.Text  := dmPrincipal.cdsClientesfone.AsString;
          edtfone1.text := dmPrincipal.cdsMailfone_1.AsString;
          edtfone2.text := dmPrincipal.cdsMailfone_2.AsString;
          edtfone3.text := dmPrincipal.cdsMailfone_3.AsString;
          edtfone4.text := dmPrincipal.cdsMailfone_4.AsString;
          edtCodCliente.Text := IntToStr(dmPrincipal.cdsClientescod_cliente.AsInteger);

          //mmoDados.text := dmPrincipal.cdsClientesacesso_remoto.AsString;

          mmoDados.Text := Crypt('D',dmPrincipal.cdsClientesacesso_remoto.AsString);

          {if dmPrincipal.cdsClientestipo_cliente.AsString = 'F' then
          begin
               rgTipo.ItemIndex := 0;
               edtCPF.Text := dmPrincipal.cdsClientescnpj_cpf_cliente.AsString;
          end
          else
          if dmPrincipal.cdsClientestipo_cliente.AsString = 'J' then
          begin
               rgTipo.ItemIndex := 1;
               edtCNPJ.Text := dmPrincipal.cdsClientescnpj_cpf_cliente.AsString;
          end;}
     end;
     if dsCliente.State in [dsInsert] then
     begin
          dmPrincipal.cdsClientesativo.AsString := 'S';
     end;
end;

procedure TfrmCadClientes.rgTipoClick(Sender: TObject);
begin
     {if rgTipo.ItemIndex = 0 then
     begin
          lblCPF.Caption := 'CPF';
          edtCNPJ.Visible := False;
          edtCPF.Visible  := True;
     end;
     if rgTipo.ItemIndex = 1 then
     begin
          lblCPF.Caption := 'CNPJ';
          edtCNPJ.Visible := True;
          edtCPF.Visible  := False;
     end;}
end;

procedure TfrmCadClientes.btnSalvarClick(Sender: TObject);
var
     cod_cliente :Integer;
begin
     {if (rgTipo.ItemIndex = 0) and (edtCPF.text = '   .   .   -  ') then
     begin
          ShowMessage('O CPF do cliente não pode ser nulo! ');
          PageControl1.ActivePageIndex :=0;
          edtCPF.SetFocus;
          Abort;
     end;

     if (rgTipo.ItemIndex = 1) and (edtCNPJ.text = '  .   .   /    -  ') then
     begin
          ShowMessage('O CNPJ do cliente não pode ser nulo! ');
          PageControl1.ActivePageIndex :=0;
          edtCNPJ.SetFocus;
          Abort;
     end;}

     if edtNomeCliente.Text = '' then
     begin
          ShowMessage('O nome do cliente não pode ser nulo! ');
          PageControl1.ActivePageIndex :=0;
          edtNomeCliente.SetFocus;
          Abort;
     end;
     if edtMail.Text = '' then
     begin
          ShowMessage('O e-mail do cliente não pode ser nulo! ');
          PageControl1.ActivePageIndex :=0;
          edtMail.SetFocus;
          Abort;
     end;
     if edtArqCliente.Text = '' then
     begin
          ShowMessage('O caminho da pasta do cliente não pode ser nulo! ');
          PageControl1.ActivePageIndex :=0;
          edtArqCliente.SetFocus;
          Abort;
     end;

     //Excluir registro bloqueado
     if dsCliente.State in [dsEdit] then
     begin
          dmPrincipal.cdsBloqueados.Close();
          dmPrincipal.cdsBloqueados.Open();
          if dmPrincipal.cdsBloqueados.Locate('tabela;chave1;chave2;chave3;chave4;chave5',VarArrayOf(['cliente',IntToStr(dmPrincipal.cdsClientescod_cliente.AsInteger),
                                                  '0','0','0','0']),[]) then
          begin
               dmPrincipal.cdsBloqueados.Delete;
               dmPrincipal.cdsBloqueados.ApplyUpdates(0);
               dmPrincipal.qryBloqueados.Close();
               dmPrincipal.cdsBloqueados.Close();
               dmPrincipal.qryBloqueados.Open();
               dmPrincipal.cdsBloqueados.Open();
          end;
     end;

     if dsCliente.State in [dsInsert] then
     begin
          dmPrincipal.qryTemp.close;
          dmPrincipal.qryTemp.SQL.Clear;
          dmPrincipal.qryTemp.SQL.Add('select max(cod_cliente) as codigo from cliente');
          dmPrincipal.qryTemp.open;
          cod_cliente := dmPrincipal.qryTemp.FieldByName('codigo').AsInteger;

          dmPrincipal.cdsClientescod_cliente.AsInteger := cod_cliente + 1;

     end;
     {if rgTipo.ItemIndex = 0 then
     begin
          dmPrincipal.cdsClientestipo_cliente.AsString := 'F';
          dmPrincipal.cdsClientescnpj_cpf_cliente.AsString := edtCPF.Text;
     end;
     if rgTipo.ItemIndex = 1 then
     begin
          dmPrincipal.cdsClientestipo_cliente.AsString := 'J';
          dmPrincipal.cdsClientescnpj_cpf_cliente.AsString := edtCNPJ.Text;
     end;}
     dmPrincipal.cdsClientesfone.AsString := edtfone.Text;

     dmPrincipal.cdsClientesacesso_remoto.AsString := Crypt('C',mmoDados.Text);


     dmPrincipal.cdsClientes.Post;
     dmPrincipal.cdsClientes.ApplyUpdates(0);

     dmPrincipal.cdsMailcod_cliente.AsInteger := dmPrincipal.cdsClientescod_cliente.AsInteger;
     dmPrincipal.cdsMailnome.AsString         := dmPrincipal.cdsClientesnome_cliente.AsString;

     dmPrincipal.cdsMailfone_1.AsString := edtfone1.Text;
     dmPrincipal.cdsMailfone_2.AsString := edtfone2.text;
     dmPrincipal.cdsMailfone_3.AsString := edtfone3.text;
     dmPrincipal.cdsMailfone_4.AsString := edtfone4.text;
     dmPrincipal.cdsMailfone_5.AsString := edtfone5.text;
     dmPrincipal.cdsMailfone_6.AsString := edtfone6.text;
     dmPrincipal.cdsMailfone_7.AsString := edtfone7.text;
     dmPrincipal.cdsMailfone_8.AsString := edtfone8.text;

     dmPrincipal.cdsMail.Post;
     dmPrincipal.cdsMail.ApplyUpdates(0);

     close;

end;

procedure TfrmCadClientes.mmoObservacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=Upcase(key);
     if (Key = #13) then
          key := #0;
end;

procedure TfrmCadClientes.FormCreate(Sender: TObject);
begin
     tsGeral.Show;
end;

procedure TfrmCadClientes.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmCadClientes.DBMemo1Enter(Sender: TObject);
begin
     KeyPreview := false;
end;

procedure TfrmCadClientes.DBMemo1Exit(Sender: TObject);
begin
     KeyPreview := True;
end;

function TfrmCadClientes.Crypt(Action, Src: String): String;
Label Fim;
var KeyLen : Integer;
        KeyPos : Integer;
        OffSet : Integer;
        Dest, Key : String;
        SrcPos : Integer;
        SrcAsc : Integer;
        TmpSrcAsc : Integer;
        Range : Integer;
begin
        if (Src = '') Then
        begin
                Result:= '';
                Goto Fim;
        end;
        Key := '@WSX#EDC';
        Dest := '';
        KeyLen := Length(Key);
        KeyPos := 0;
        SrcPos := 0;
        SrcAsc := 0;
        Range := 256;
        if (Action = UpperCase('C')) then
        begin
                Randomize;
                OffSet := Random(Range);
                Dest := Format('%1.2x',[OffSet]);
                for SrcPos := 1 to Length(Src) do
                begin
                        Application.ProcessMessages;
                        SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
                        if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;

                        SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
                        Dest := Dest + Format('%1.2x',[SrcAsc]);
                        OffSet := SrcAsc;
                end;
        end
        Else if (Action = UpperCase('D')) then
        begin
                OffSet := StrToInt('$' + copy(Src,1,2));
                SrcPos := 3;
                repeat
                        SrcAsc := StrToInt('$' + copy(Src,SrcPos,2));
                        if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
                        TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
                        if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
                        else TmpSrcAsc := TmpSrcAsc - OffSet;
                        Dest := Dest + Chr(TmpSrcAsc);
                        OffSet := SrcAsc;
                        SrcPos := SrcPos + 2;
                until (SrcPos >= Length(Src));
        end;
        Result:= Dest;
Fim:
end;

procedure TfrmCadClientes.mmoDadosEnter(Sender: TObject);
begin
     KeyPreview := false;
end;

procedure TfrmCadClientes.mmoDadosExit(Sender: TObject);
begin
     KeyPreview := true;
end;

end.

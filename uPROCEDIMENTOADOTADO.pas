unit uPROCEDIMENTOADOTADO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmProcedimentoAdotado = class(TForm)
    mmoProcedimento_Adotado: TMemo;
    Label1: TLabel;
    btnIncluir: TBitBtn;
    edtCaminho: TEdit;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    OpenDialog1: TOpenDialog;
    Label3: TLabel;
    edtCobranca: TEdit;
    procedure mmoProcedimento_AdotadoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcedimentoAdotado: TfrmProcedimentoAdotado;
  Proc_Adotado  : String;
  tempoCobranca : String;
  sArq          : string;

implementation

uses DTMPRINCIPAL, DB;

{$R *.dfm}

procedure TfrmProcedimentoAdotado.mmoProcedimento_AdotadoKeyPress(Sender: TObject;
  var Key: Char);
begin
     {if (Key = #13) then
          key := #0;}
end;

procedure TfrmProcedimentoAdotado.FormCreate(Sender: TObject);
begin
     Proc_Adotado := '';
     sArq := '';
end;

procedure TfrmProcedimentoAdotado.btnIncluirClick(Sender: TObject);
begin
     tempoCobranca := '';
     Proc_Adotado  := '';
     if mmoProcedimento_Adotado.Text = '' then
     begin
          ShowMessage('Informe o procedimento adotado no chamado!');
          mmoProcedimento_Adotado.SetFocus;
          Abort();
     end;
     if edtCobranca.Text <> '' then
          tempoCobranca := FormatFloat('0.00',StrToFloat(edtCobranca.Text));
     Proc_Adotado  := mmoProcedimento_Adotado.Text;
     dmPrincipal.qryChamados.Close;
     dmPrincipal.qryChamados.SQL.Text := 'select * from chamado where cod_chamado = '+IntToStr(dmPrincipal.cdsChamadoscod_chamado.AsInteger)+
                                         ' and data_chamado = '+QuotedStr(FormatDateTime('yyyy/mm/dd',dmPrincipal.cdsChamadosdata_chamado.AsDateTime));
     dmPrincipal.qryChamados.open;
     dmPrincipal.cdsChamados.close;
     dmPrincipal.cdsChamados.open;
     if not dmPrincipal.cdsChamados.IsEmpty then
     begin
          dmPrincipal.cdsChamados.Edit;
          dmPrincipal.cdsChamadosproc_adotado.AsString   := Proc_Adotado;
          if edtCobranca.Text <> '' then
               dmPrincipal.cdsChamadostempo_cobranca.AsFloat := (dmPrincipal.cdsChamadostempo_cobranca.AsFloat + StrToFloat(FormatFloat('0.00', StrToFloat(edtCobranca.Text))));
          dmPrincipal.cdsChamados.Post;
          dmPrincipal.cdsChamados.ApplyUpdates(0);
     end;
     Close();
end;

procedure TfrmProcedimentoAdotado.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if (Key = 4145)   or
        (key = VK_F2) or
        (Key = vk_F2)  or
        (Key = 113)    then
          btnIncluir.Click();
end;

procedure TfrmProcedimentoAdotado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if mmoProcedimento_Adotado.Text = '' then
     begin
          ShowMessage('Informe o procedimento adotado no chamado!');
          mmoProcedimento_Adotado.SetFocus;
          Abort();
     end;
     sArq := edtCaminho.Text;
     if (sArq <> '') and (not FileExists(sArq)) then
     begin
          ShowMessage('O arquivo não existe. Favor verifique!!');
          edtCaminho.SetFocus;
          Abort();
     end;
end;

procedure TfrmProcedimentoAdotado.BitBtn1Click(Sender: TObject);
begin
     if OpenDialog1.Execute then
     begin
          edtCaminho.Text := OpenDialog1.FileName;
          sArq := OpenDialog1.FileName;
     end;
end;

end.

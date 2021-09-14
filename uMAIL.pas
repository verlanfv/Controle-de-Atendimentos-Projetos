unit uMAIL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, Mask, DBCtrls;

type
  TfrmAddMail = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAddMail: TfrmAddMail;
  mail_1 : String;
  mail_2 : String;
  mail_3 : String;
  mail_4 : String;
  mail_5 : String;

implementation

uses DTMPRINCIPAL, uMNTCLIENTES;

{$R *.dfm}

end.

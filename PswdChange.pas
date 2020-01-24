unit PswdChange;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, wwdbedit, ExtCtrls, Buttons, IBSQL, IBDatabase, Like;

type
  TfrmPswdChange = class(TfrmLike)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbePassword: TwwDBEdit;
    dbeNewPassword: TwwDBEdit;
    dbeNewPasswordConfirm: TwwDBEdit;
    sbReFilter: TSpeedButton;
    ibsAux: TIBSQL;
    procedure sbReFilterClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPswdChange: TfrmPswdChange;

implementation

uses DM, Main, Misk;

{$R *.DFM}

procedure TfrmPswdChange.sbReFilterClick(Sender: TObject);
 var RowsAffected : Integer;
begin
 If (dbeNewPassword.Text<>dbeNewPasswordConfirm.Text) then
  Begin
   MessageDlg('Вы неверно подтвердили пароль!',mtError,[mbOK],0);
   Exit
  End;
 trMain.StartTransaction;
 ibsAux.ParamByName('FULL_USER_NAME').AsString := frmMain.StatusBar.Panels[1].Text;
 ibsAux.ParamByName('OLD_FULL_USER_PASSWORD').AsString := GetName(False,'psw'+dbePassword.Text,20);
 ibsAux.ParamByName('FULL_USER_PASSWORD').AsString := GetName(False,'psw'+dbeNewPassword.Text,20);
 ibsAux.ExecQuery;
 RowsAffected := ibsAux.RowsAffected;
 If (Black) and (RowsAffected=0) then
  Begin
   ibsAux.ParamByName('FULL_USER_NAME').AsString := frmMain.StatusBar.Panels[1].Text;
   ibsAux.ParamByName('OLD_FULL_USER_PASSWORD').AsString := GetName(True,'psw'+dbePassword.Text,20);
   ibsAux.ParamByName('FULL_USER_PASSWORD').AsString := GetName(True,'psw'+dbeNewPassword.Text,20);
   ibsAux.ExecQuery;
   RowsAffected := ibsAux.RowsAffected
  End;
 If (RowsAffected=0) then
  MessageDlg('Неверно введен старый пароль!',mtError,[mbOK],0)
 else
  Begin
   If (RowsAffected>1) then
    Begin
     MessageDlg('Ошибка обновления, обратитесь к администратору!',mtError,[mbOK],0);
     trMain.Rollback;
     Exit
    End;
   trMain.Commit;
   MessageDlg('Пароль успешно изменен.',mtConfirmation,[mbOK],0);
   Close
  End
end;

procedure TfrmPswdChange.FormCreate(Sender: TObject);
begin
 FName := 'Смена личного пароля';
 inherited;
 trMain.DefaultDatabase := nil;
 trMain.AddDatabase(frmDM.dbGenerators);
 ibsAux.Transaction := trMain
end;

end.

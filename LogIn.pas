unit LogIn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Registry,
  ExtCtrls, fcLabel, StdCtrls, fcCombo, fctreecombo, Buttons, IBServices,
  Db, IBDatabase, IBCustomDataSet, IBSQL, Mask, wwdbedit, wwdblook, LbCipher, LbString;

type
  TfrmLogIn = class(TForm)
    Panel1: TPanel;
    fcLabel1: TfcLabel;
    fcLabel2: TfcLabel;
    sbCancel: TSpeedButton;
    sbOK: TSpeedButton;
    dbLogin: TIBDatabase;
    ibdsUsers: TIBDataSet;
    ibsUser: TIBSQL;
    lcUserName: TwwDBLookupCombo;
    dbePassword: TwwDBEdit;
    trLogIn: TIBTransaction;
    ibdsUsersFULL_USER_NAME: TIBStringField;
    procedure sbCancelClick(Sender: TObject);
    procedure sbOKClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogIn: TfrmLogIn;

implementation

uses Misk, Main;

{$R *.DFM}

var
  Cnt : Integer = 0;

procedure TfrmLogIn.sbCancelClick(Sender: TObject);
begin
 ModalResult := mrCancel
end;

procedure TfrmLogIn.sbOKClick(Sender: TObject);
begin
 If (GetKeyState(VK_CONTROL)<0) then
  Begin
   trLogIn.Commit;
   dbLogin.Connected := False;
   dbLogin.Params.Clear;
   dbLogin.Params.Add('user_name='+lcUserName.Text);
   dbLogin.Params.Add('password='+dbePassword.Text);
   dbLogin.Params.Add('lc_ctype=WIN1251');
   try
    dbLogin.Connected := True;
    DefParamsBlack := TStringList.Create;
    DefParamsBlack.Clear;
    DefParamsBlack.Add('user_name='+lcUserName.Text);
    DefParamsBlack.Add('password='+dbePassword.Text);
    DefParamsBlack.Add('lc_ctype=WIN1251');
    DefParams := TStringList.Create;
    DefParams.Clear;
    DefParams.Add('user_name='+lcUserName.Text);
    DefParams.Add('password='+dbePassword.Text);
    DefParams.Add('lc_ctype=WIN1251');
    Black := True;
    ModalResult := mrOK
   except
    dbLogin.Connected := False;
    dbLogin.Params.Clear;
    dbLogin.Params.Add('user_name=UserList');
    dbLogin.Params.Add('password=qwerty');
    dbLogin.Params.Add('lc_ctype=WIN1251');
    FormCreate(frmLogIn)
   end;
  End
 else
  Begin
   ibsUser.SQL.Clear;
   ibsUser.SQL.Add('select USER_NAME, USER_PASSWORD, USER_ROLE from');
   ibsUser.SQL.Add('GET_USER('#39+lcUserName.Text+#39', '#39+GetName(True,'psw'+dbePassword.Text,20)+#39')');
   //ïðîáóåì ÷åðíûé àëãîðèòì
   ibsUser.ExecQuery;
   If (ibsUser.FieldByName('USER_NAME').IsNull) then
    Begin
     ibsUser.Close;
     ibsUser.SQL.Clear;
     ibsUser.SQL.Add('select USER_NAME, USER_PASSWORD, USER_ROLE from');
     ibsUser.SQL.Add('GET_USER('#39+lcUserName.Text+#39', '#39+GetName(False,'psw'+dbePassword.Text,20)+#39')');
     //ïðîáóåì áåëûé àëãîðèòì
     ibsUser.ExecQuery;
     If (ibsUser.FieldByName('USER_NAME').IsNull) then
      Begin
       dbePassword.Text := '';
       ibsUser.Close;
       Exit
      End
     else
      Black := False
    End
   else
    Black := True;
   If (Black) then
    Begin
     If (DefParamsBlack=nil) then
      DefParamsBlack := TStringList.Create;
     DefParamsBlack.Clear;
     DefParamsBlack.Add('user_name='+ibsUser.FieldByName('USER_NAME').AsString);
     DefParamsBlack.Add('password='+GetName(True,ibsUser.FieldByName('USER_PASSWORD').AsString,8));
     DefParamsBlack.Add('sql_role_name='+ibsUser.FieldByName('USER_ROLE').AsString);
     UserRole := Trim(ibsUser.FieldByName('USER_ROLE').AsString);
     DefParamsBlack.Add('lc_ctype=WIN1251');
     ibsUser.Close;
     ibsUser.SQL.Clear;
     ibsUser.SQL.Add('select USER_NAME, USER_PASSWORD from');
     ibsUser.SQL.Add('GET_USER2('#39+lcUserName.Text+#39', '#39+GetName(True,'psw'+dbePassword.Text,20)+#39')');
     ibsUser.ExecQuery;
     If (ibsUser.FieldByName('USER_NAME').IsNull) then
       Begin
        dbePassword.Text := '';
        ibsUser.Close
       End
     else
      Begin
       If (DefParams=nil) then
        DefParams := TStringList.Create;
       DefParams.Clear;
       DefParams.Add('user_name='+ibsUser.FieldByName('USER_NAME').AsString);
       DefParams.Add('password='+GetName(False,ibsUser.FieldByName('USER_PASSWORD').AsString,8));
       DefParams.Add(DefParamsBlack[2]);
       DefParams.Add('lc_ctype=WIN1251');
       ibsUser.Close;
       ModalResult := mrOK
      End
    End
   else
    Begin
     If (DefParams=nil) then
      DefParams := TStringList.Create;
     DefParams.Clear;
     DefParams.Add('user_name='+ibsUser.FieldByName('USER_NAME').AsString);
     DefParams.Add('password='+GetName(False,ibsUser.FieldByName('USER_PASSWORD').AsString,8));
     DefParams.Add('sql_role_name='+ibsUser.FieldByName('USER_ROLE').AsString);
     UserRole := Trim(ibsUser.FieldByName('USER_ROLE').AsString);
     DefParams.Add('lc_ctype=WIN1251');
     ibsUser.Close;
     ModalResult := mrOK
    End
  End
end;

procedure TfrmLogIn.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_Escape) then
  sbCancel.Click;
 If (Key=vk_Return) then
  sbOK.Click
end;

procedure TfrmLogIn.FormCreate(Sender: TObject);
 var Reg: TRegistry;
     Key256 : TKey256;
begin
 GenerateLMDKey(Key256, SizeOf(Key256), '¬¡ëìyW²Î=`áþÚ ÁºyX†f0“Úâš 845098yhfjb hJLUGLI,. ., **&*^#');
 dbLogin.DatabaseName := RDLEncryptStringCBCEx(Path2, Key256, 32, False);
 dbLogin.Connected := True;
 trLogIn.StartTransaction;
 ibdsUsers.Open;
 Reg := TRegistry.Create;
 Reg.RootKey := HKEY_CURRENT_USER;
 Reg.OpenKeyReadOnly('\Software\BertSoftware\Universal');
 lcUserName.Text := Reg.ReadString('LastLogOn');
 Reg.Free
end;

procedure TfrmLogIn.FormClose(Sender: TObject; var Action: TCloseAction);
 var Reg: TRegistry;
begin
 If (trLogIn.InTransaction) then
  Begin
   trLogIn.Commit;
   Reg := TRegistry.Create;
   Reg.RootKey := HKEY_CURRENT_USER;
   try
    Reg.OpenKey('\Software\BertSoftware\Universal',True);
    Reg.WriteString('LastLogOn', lcUserName.Text);
   finally
    Reg.Free
   end 
  End; 
 dbLogin.Connected := False
end;

end.

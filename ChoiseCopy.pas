unit ChoiseCopy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TfrmChoiseCopy = class(TForm)
    Panel8: TPanel;
    SpeedButton1: TSpeedButton;
    chbHeader: TCheckBox;
    chbBody: TCheckBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure chbHeaderClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChoiseCopy: TfrmChoiseCopy;

implementation

{$R *.DFM}

procedure TfrmChoiseCopy.SpeedButton1Click(Sender: TObject);
begin
 ModalResult := mrOK
end;

procedure TfrmChoiseCopy.chbHeaderClick(Sender: TObject);
begin
 chbBody.Enabled := chbHeader.Checked
end;

end.

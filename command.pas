unit command;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TcommandF = class(TForm)
    Memo2: TMemo;
    EditManually: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditManuallyClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  commandF: TcommandF;

implementation

uses main;

{$R *.DFM}

procedure TcommandF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 MainForm.neuzeichnen1Click(sender);
end;

procedure TcommandF.EditManuallyClick(Sender: TObject);
begin
 commandF.memo2.enabled:=CommandF.EditManually.Checked;
end;

end.

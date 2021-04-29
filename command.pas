unit command;

{$MODE Delphi}

interface

uses
{$IFnDEF FPC}
  Windows,
{$ELSE}
  LCLIntf, LCLType, LMessages,
{$ENDIF}
  Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
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

{$R *.lfm}

procedure TcommandF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainForm.neuzeichnen1Click(Sender);
end;

procedure TcommandF.EditManuallyClick(Sender: TObject);
begin
  commandF.memo2.Enabled := CommandF.EditManually.Checked;
end;

end.

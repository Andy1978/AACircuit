unit command;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

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

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure TcommandF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 MainForm.neuzeichnen1Click(sender);
end;

procedure TcommandF.EditManuallyClick(Sender: TObject);
begin
 commandF.memo2.enabled:=CommandF.EditManually.Checked;
end;

end.

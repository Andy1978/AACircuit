unit scanmemo;

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
  Tsresult = class(TForm)
    LB: TListBox;
    procedure LBClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  sresult: Tsresult;

implementation

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure Tsresult.LBClick(Sender: TObject);
begin
 modalresult:=mrok;
end;

procedure Tsresult.FormShow(Sender: TObject);
begin
 lb.ItemIndex:=-1;
end;

end.

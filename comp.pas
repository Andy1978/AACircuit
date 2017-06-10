unit comp;

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
  StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    PB: TPaintBox;
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form2: TForm2;

implementation

uses main;

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure TForm2.Button1Click(Sender: TObject);
begin
listbox1.Items:=form1.listbox1.items;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
z,mx,my,temp:Byte;
begin
For z:=1 to 4 Do
 Begin
 for mx:=0 to compx do
 for my:=0 to compy do
  Begin
   temp:=comp[Listbox1.ItemIndex+1,z,mx,my];
   If temp=0 then temp:=32;
   PB.Canvas.TextOut(mx*extentx,my*extenty+(compy*extenty*(z-1)),chr(temp));
  End;
 End;

 pb.canvas.pen.Color:=clyellow;
 for mx:=0 to compx do
 Begin
  pb.Canvas.MoveTo(mx*extentx,0);
  pb.Canvas.LineTo(mx*extentx,compy*4*extenty);
 End;
 for z:=1 to 4 Do
  for my:=0 to compy do
  Begin
   If my=0 Then pb.canvas.pen.color:=clred
   Else pb.canvas.pen.color:=clyellow;
   pb.Canvas.MoveTo(0,my*extenty+(compy*extenty*(z-1)));
   pb.Canvas.LineTo(compx*extentx,my*extenty+(compy*extenty*(z-1)));
 End;
end;

end.

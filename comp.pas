unit Comp;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages,
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
  public
  end;

var
  Form2: TForm2;

implementation

uses main;

{$R *.lfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  listbox1.Items := form1.listbox1.items;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  z, mx, my, temp: Byte;
begin
  for z := 1 to 4 do
  begin
    for mx := 0 to compx do
      for my := 0 to compy do
      begin
        temp := Comp[Listbox1.ItemIndex + 1, z, mx, my];
        if temp = 0 then
          temp := 32;
        PB.Canvas.TextOut(mx * extentx, my * extenty + (compy * extenty * (z - 1)), chr(temp));
      end;
  end;

  pb.canvas.pen.Color := clyellow;
  for mx := 0 to compx do
  begin
    pb.Canvas.MoveTo(mx * extentx, 0);
    pb.Canvas.LineTo(mx * extentx, compy * 4 * extenty);
  end;
  for z := 1 to 4 do
    for my := 0 to compy do
    begin
      if my = 0 then
        pb.canvas.pen.color := clred
      else
        pb.canvas.pen.color := clyellow;
      pb.Canvas.MoveTo(0, my * extenty + (compy * extenty * (z - 1)));
      pb.Canvas.LineTo(compx * extentx, my * extenty + (compy * extenty * (z - 1)));
    end;
end;

end.

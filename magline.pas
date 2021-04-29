unit magline;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType,
  SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, Buttons;

type
  TmaglineF = class(TForm)
    Button1: TButton;
    Button3: TButton;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    udindex: TUpDown;
    Label2: TLabel;
    Label1: TLabel;
    Button2: TButton;
    RG: TRadioGroup;
    startedit: TEdit;
    GB: TGroupBox;
    MLBox: TPaintBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure MLBoxMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure starteditChange(Sender: TObject);
    procedure starteditClick(Sender: TObject);
    procedure RGClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure udindexClick(Sender: TObject; Button: TUDBtnType);
  private
  public
  end;

var
  maglineF: TmaglineF;
  cursorx, cursory: Byte;
  MLBoxFocus: Boolean;

implementation

uses main;

{$R *.lfm}

procedure ClearCursor;
begin
  //alte Cursor-Box grau überschreiben
  MagLineF.MLBox.canvas.brush.Style := bsclear;
  MagLineF.MLBox.canvas.pen.color := clgray;
  MagLineF.MLBox.Canvas.Rectangle(cursorx * extentx, cursory * extenty, (cursorx + 1) * extentx + 1, (cursory + 1) * extenty + 1);
end;

procedure showcursor;
begin
  ;
  //neuer Cursor anzeigen
  MagLineF.MLBox.canvas.brush.Style := bsclear;
  MagLineF.MLBox.canvas.pen.color := clblue;
  MagLineF.MLBox.Canvas.Rectangle(cursorx * extentx, cursory * extenty, (cursorx + 1) * extentx + 1, (cursory + 1) * extenty + 1);
end;

procedure TmaglineF.Button1Click(Sender: TObject);
var
  datafile: TextFile;
  filename: shortstring;
  puffer: String;
  index, ml_index: Byte;
begin
  filename := ExtractFilePath(ParamStr(0)) + 'autoline.ini';
  Assignfile(datafile, filename);
  rewrite(datafile);
  for index := 0 to IDataItemIndex - 1 do
  begin
    puffer := '';
    for ml_index := 0 to 8 do
      puffer := puffer + chr(IData[index].field[ml_index]);
    puffer := puffer + IntToStr(IData[index].s_dir) + chr(IData[index].s_char);

    writeln(datafile, puffer);
  end;
  closefile(datafile);
end;

procedure ShowIdata;
var
  index: Byte;
begin
  //PaintBox lِschen und paint
  MagLineF.MLBox.Canvas.brush.Style := bssolid;
  MagLineF.MLBox.Canvas.Font.Color := ClBlack;
  MagLineF.MLBox.Canvas.FillRect(Rect(0, 0, 3 * extentx, 3 * extenty));
  for index := 0 to 8 do
  begin
    MagLineF.MLBox.Canvas.TextOut(index mod 3 * extentx, index div 3 * extenty, chr(Idata[MagLineF.udindex.Position].field[index]));
  end;
  MagLineF.startedit.Text := chr(IData[MagLineF.udindex.Position].s_char);
  MagLineF.RG.ItemIndex := IData[MagLineF.udindex.Position].s_dir;
end;

procedure TmaglineF.Button2Click(Sender: TObject);
begin
  showIdata;
  GB.SetFocus;
end;

procedure TmaglineF.MLBoxMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  GB.SetFocus;
  MLBoxFocus := True;
  clearcursor;
  cursorx := x div extentx;
  cursory := y div extenty;
  showcursor;
end;

procedure TmaglineF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if MLBoxFocus then
  begin
    clearcursor;
    Idata[udindex.position].field[cursory * 3 + cursorx] := Ord(key);
    ShowIdata;
    MLBoxFocus := True;
    if CursorX < 2 then
      Inc(cursorx)
    else
      //CarryReturn And LineFeed ;-)
    begin
      CursorX := 0;
      Inc(CursorY);
    end;
    if cursory >= 3 then
      cursory := 0;
    showcursor;
    key := chr(0);
  end;
end;


procedure TmaglineF.starteditChange(Sender: TObject);
begin
  MLBoxFocus := False;
  if length(startedit.Text) > 0 then
    IData[udindex.Position].s_char := Ord(startedit.Text[1]);
end;

procedure TmaglineF.starteditClick(Sender: TObject);
begin
  MLBoxFocus := False;
end;

procedure TmaglineF.RGClick(Sender: TObject);
begin
  MLBoxFocus := False;
  IData[udindex.Position].s_dir := RG.ItemIndex;
end;

procedure TmaglineF.Button3Click(Sender: TObject);
var
  x: Byte;
begin
  if IDataItemIndex < IDataMAXItems then
  begin
    Inc(IDataItemIndex);
    udindex.Max := IDataItemIndex - 1;
    udindex.Position := IDataItemIndex - 1;
    for x := 0 to 9 do
      IData[udindex.Position].field[x] := 64;
    IData[udindex.Position].s_dir := 0;
    IData[udindex.Position].s_char := 64;
    Button2.SetFocus;
  end;
  MLBoxFocus := True;
  showIdata;
end;

procedure TmaglineF.FormShow(Sender: TObject);
begin
  udindex.Max := IdataItemIndex - 1;
  showIdata;
  GB.SetFocus;
end;

procedure TmaglineF.udindexClick(Sender: TObject; Button: TUDBtnType);
begin
  showIdata;
end;

end.

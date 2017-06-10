unit main;

{$MODE Delphi}

interface


uses
  LCLIntf, LCLType, LMessages,
  Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls,
  ExtCtrls, INIFiles, Buttons, Math, Menus, ComCtrls, Printers, WinSpool,
  PrintersDlgs;

function LoadASC(const filename: String): Boolean;

type
  TmainForm = class(TForm)
    SaveDialog1: TSaveDialog;
    MainMenu1: TMainMenu;
    DF1: TMenuItem;
    Bearbeiten1: TMenuItem;
    Info1: TMenuItem;
    Neu1: TMenuItem;
    N1: TMenuItem;
    ffnen1: TMenuItem;
    Speichernunter1: TMenuItem;
    N2: TMenuItem;
    Beenden1: TMenuItem;
    Symbolbiliothekbearbeiten1: TMenuItem;
    Symbolbibliothekneuladen1: TMenuItem;
    SBar: TStatusBar;
    N5: TMenuItem;
    UnDo1: TMenuItem;
    N6: TMenuItem;
    neuzeichnen1: TMenuItem;
    N8: TMenuItem;
    Circuitffnen1: TMenuItem;
    Circuitspeichernunter1: TMenuItem;
    SaveAAC: TSaveDialog;
    openaac: TOpenDialog;
    N9: TMenuItem;
    Sprache1: TMenuItem;
    Symbol1: TMenuItem;
    N90rechtsdrehen1: TMenuItem;
    Symbolvertikalspiegelns1: TMenuItem;
    PrintDialog1: TPrintDialog;
    N7: TMenuItem;
    Drucken1: TMenuItem;
    Blink: TTimer;
    Zwischenablage1: TMenuItem;
    ganzeZeichnungindieZwischenablagekopieren1: TMenuItem;
    N3: TMenuItem;
    ASCIIauseinerDateiladenundPASTE1: TMenuItem;
    ZwischenablageaufdieZeichenflchekopieren1: TMenuItem;
    N4: TMenuItem;
    CommandsExpertsonly1: TMenuItem;
    Druckereinstellungen1: TMenuItem;
    FontDialog1: TFontDialog;
    openASC: TOpenDialog;
    N10: TMenuItem;
    IMPORTascLTSpice1: TMenuItem;
    AutoLineconfigurieren1: TMenuItem;
    Help1: TMenuItem;
    licenceandcredits1: TMenuItem;
    aboutAACircuit1: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    visitHomepage1: TMenuItem;
    SB: TScrollBox;
    PaintBox1: TPaintBox;
    Panel1: TPanel;
    SpeedButton8: TSpeedButton;
    SpeedButton1: TSpeedButton;
    lb1: TSpeedButton;
    lb2: TSpeedButton;
    lb3: TSpeedButton;
    InsertRowB: TSpeedButton;
    InsertColB: TSpeedButton;
    moveB: TSpeedButton;
    lb4: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    DeleteRowB: TSpeedButton;
    DeleteColB: TSpeedButton;
    selectB: TSpeedButton;
    ListBox1: TListBox;
    Panel2: TPanel;
    CharButton1: TButton;
    CharButton2: TButton;
    CharButton3: TButton;
    CharButton4: TButton;
    CharButton5: TButton;
    CharButton6: TButton;
    CharButton7: TButton;
    CharButton8: TButton;
    CharButton9: TButton;
    CharButton11: TButton;
    CharButton12: TButton;
    CharButton10: TButton;
    editModeB: TBitBtn;
    TextmodeB: TBitBtn;
    textedit: TEdit;
    Panel3: TPanel;
    e1: TSpeedButton;
    e2: TSpeedButton;
    e3: TSpeedButton;
    e4: TSpeedButton;
    Label2: TLabel;
    Label1: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Label3: TLabel;
    BClip: TBitBtn;
    pasteclipB: TBitBtn;
    loadpasteB: TBitBtn;
    size1: TMenuItem;
    size2: TMenuItem;
    size4: TMenuItem;
    size3: TMenuItem;
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure comploadClick(Sender: TObject);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ListBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CopytoClipClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bcompClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure TempCharButtonClick(Sender: TObject);
    procedure Beenden1Click(Sender: TObject);
    procedure Speichernunter1Click(Sender: TObject);
    procedure Neu1Click(Sender: TObject);
    procedure ffnen1Click(Sender: TObject);
    procedure srClick(Sender: TObject);
    procedure ssClick(Sender: TObject);
    procedure lb1Click(Sender: TObject);
    procedure InsertRowBClick(Sender: TObject);
    procedure InsertColBClick(Sender: TObject);
    procedure DeleteRowBClick(Sender: TObject);
    procedure DeleteColBClick(Sender: TObject);
    procedure UnDo1Click(Sender: TObject);
    procedure neuzeichnen1Click(Sender: TObject);
    procedure Circuitspeichernunter1Click(Sender: TObject);
    procedure Circuitffnen1Click(Sender: TObject);
    procedure moveBClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure e1Click(Sender: TObject);
    procedure spracheclick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Drucken1Click(Sender: TObject);
    procedure BlinkTimer(Sender: TObject);
    procedure editModeBClick(Sender: TObject);
    procedure TextmodeBClick(Sender: TObject);
    procedure pasteclipBClick(Sender: TObject);
    procedure CommandsExpertsonly1Click(Sender: TObject);
    procedure loadpasteBClick(Sender: TObject);
    procedure Druckereinstellungen1Click(Sender: TObject);
    procedure selectBClick(Sender: TObject);
    procedure IMPORTascLTSpice1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListBox1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure AutoLineconfigurieren1Click(Sender: TObject);
    procedure Help1Click(Sender: TObject);
    procedure licenceandcredits1Click(Sender: TObject);
    procedure visitHomepage1Click(Sender: TObject);
    procedure size1Click(Sender: TObject);
    procedure size2Click(Sender: TObject);
    procedure size4Click(Sender: TObject);
    procedure size3Click(Sender: TObject);
  private
    { Private-Deklarationen }
    procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
  public
    { Public-Deklarationen }
  end;

type
  Tselectbox = record
    Top: Byte;
    Left: Byte;
    Right: Byte;
    Bottom: Byte;
    rect_coord: Boolean;
    targetX: Byte;
    targetY: Byte;
    target_coord: Boolean;
    transparent: Boolean;
    mode: Byte;  //1=move, 2=copy 3=delete;
  end;

  TText_edit = record
    x, y, left: Byte;
    blink: Boolean;
    Text: shortstring;
    coherent: Boolean;
  end;

  TIdata = record
    field: array[0..9] of Byte;
    s_dir: Shortint;  //0=horizontal 1=vertikal
    s_char: Byte;
  end;

  TPPoint = record
    X: Shortint;
    Y: Shortint;
    XM: Shortint;
    YM: Shortint;
  end;
  PPickpoint = ^TPickpoint;
  TPickPoint = array[0..3] of TPPoint;

var
  IData: array[0..19] of TIData; //ILine(magline) Data
  IDataItemIndex: Byte;
  PickPointList: TList;
  PickPoints: PPickpoint;
  mainForm: TmainForm;
  Text_Editor: TText_edit;
  matrix: array[0..199, 0..69] of Byte; //damit bei ILine nicht Bereichsüberschreitung
  Comp: array[1..60, 1..4, 0..8, 0..5] of Byte;
  tempcomp: array[0..8, 0..5] of Byte;
  tempchar: Byte;
  mausx, mausy: Byte;
  showori, showcomp, extentx, extenty: Byte;
  NLine, ersterLPunkt, zweiterLPunkt, charmode, textmode, compmode, movemode, rectmode, ersterRPunkt, Iline, DLine, editmode, pastemode, selectmode: Boolean;
  linex1, linex2, liney1, liney2, rectx, recty: Byte;
  temptext: String;
  insertCol, insertROW, deleteCOL, deleteROW: Boolean;
  mausxsave, mausysave, eraser, sprache, NLinechar: Byte;
  edited, FirstImport, gespiegelt: Boolean;
  selectbox: Tselectbox;
  MatrixX, MatrixY: Byte;

const
  IDataMAXItems = 20; //maximal 20 Eintrنge siehe auch array oben
  AdvCursor1 = 1;
  AdvCursor2 = 2;
  AdvCursor3 = 3;
  compx = 9;
  compy = 6;
  version = 'v1.28.7 beta 10/23/16';

implementation

uses component, scanmemo, line, command, clipBformunit, selection, splash,
  magline, ImportASC;

{$R *.lfm}
{$R cursors.RES}

procedure gridrasterRECT(x1, y1, x2, y2: Integer);
var
  x, y: Byte;
begin
  if x1 < 0 then
    x1 := 0;
  if y1 < 0 then
    y1 := 0;
  Inc(x2);
  Inc(y2);
  if x2 > MatrixX then
    x2 := MatrixX;
  if y2 > MatrixY then
    y2 := MatrixY;
  MainForm.paintbox1.Canvas.pen.Color := clsilver;  //Raster clwhite
  for x := x1 to x2 do     //vertikale Linien
  begin
    MainForm.paintbox1.Canvas.MoveTo(x * extentx, y1 * extenty);
    MainForm.paintbox1.Canvas.LineTo(x * extentx, y2 * extenty);
  end;
  for y := y1 to y2 do     //horizontale Linien
  begin
    MainForm.paintbox1.Canvas.MoveTo(x1 * extentx, y * extenty);
    MainForm.paintbox1.Canvas.LineTo(x2 * extentx, y * extenty);
  end;
  //schwarze Rنnder nachzeichnen
  MainForm.Paintbox1.Canvas.pen.Color := clblack;
  if x1 = 0 then
  begin
    MainForm.Paintbox1.Canvas.MoveTo(0, y1 * extenty);
    MainForm.Paintbox1.Canvas.LineTo(0, (y2 + 1) * extenty);
  end;
  if y1 = 0 then
  begin
    MainForm.Paintbox1.Canvas.MoveTo(x1 * extentx, 0);
    MainForm.Paintbox1.Canvas.LineTo((x2 + 1) * extentx, 0);
  end;
  if x2 >= MatrixX then
  begin
    MainForm.Paintbox1.Canvas.MoveTo(MatrixX * extentx + 1, y1 * extenty);
    MainForm.Paintbox1.Canvas.LineTo(MatrixX * extentx + 1, (y2 + 1) * extenty);
  end;
  if y2 >= MatrixY then
  begin
    MainForm.Paintbox1.Canvas.MoveTo(x1 * extentx, MatrixY * extenty + 1);
    MainForm.Paintbox1.Canvas.LineTo((x2 + 1) * extentx, MatrixY * extenty + 1);
  end;
end;

procedure gridraster;
begin
  gridrasterrect(0, 0, matrixX - 1, matrixY - 1);
end;

procedure mRectRefresh(x1, y1, x2, y2: Smallint);
var
  x, y, temp: Byte;
begin
  if x1 < 0 then
    x1 := 0;
  if x1 >= MatrixX then
    x1 := MatrixX - 1;
  if y1 < 0 then
    y1 := 0;
  if y1 >= MatrixY then
    y1 := MatrixY - 1;
  if x2 < 0 then
    x2 := 0;
  if x2 >= MatrixX then
    x2 := MatrixX - 1;
  if y2 < 0 then
    y2 := 0;
  if y2 >= MatrixY then
    y2 := MatrixY - 1;
  if x1 > x2 then
  begin
    temp := x1;
    x1 := x2;
    x2 := temp;
  end;
  if y1 > y2 then
  begin
    temp := y1;
    y1 := y2;
    y2 := temp;
  end;
  //  MainForm.paintbox1.Canvas.FillRect(Rect(x1*extentx+1,y1*extenty+1,(x2+1)*extentx-1,(y2+1)*extenty-1)) ;
  for x := x1 to x2 do
    for y := y1 to y2 do
    begin
      if matrix[x, y] > 0 then
        temp := matrix[x, y]
      else
        temp := 32;
      MainForm.paintbox1.Canvas.TextOut(x * extentx, y * extenty, chr(temp));
    end;
  gridrasterRect(x1, y1, x2, y2);

end;

procedure mrefresh;
begin
  mRectRefresh(0, 0, matrixx - 1, matrixy - 1);
end;

procedure mboxrefresh;
//box wie sie bei rect oder select entsteht überschreiben
begin
  mrectrefresh(rectx, recty, mausxsave, recty);
  mrectrefresh(rectx, mausysave, mausxsave, mausysave);
  mrectrefresh(rectx, recty, rectx, mausysave);
  mrectrefresh(mausxsave, recty, mausxsave, mausysave);
end;

procedure PlaceEditorText;
begin
  if Text_Editor.coherent then
  begin  //es wurde ein Text eingegeben
    if length(Text_Editor.Text) = 1 then  //einzelner Buchstabe
      commandF.memo2.Lines.Add('char:' + IntToStr(Ord(Text_Editor.Text[1])) + ',' + IntToStr(Text_Editor.Left) + ',' + IntToStr(Text_Editor.Y));
    if length(Text_Editor.Text) > 1 then  //zusammenhنngender Text
      commandF.memo2.Lines.Add('text:' + Text_Editor.Text + ',' + IntToStr(Text_Editor.left) + ',' + IntToStr(Text_Editor.y));
    Text_Editor.Text := '';
    Text_Editor.coherent := False;
  end;
end;

procedure modeChangeRefresh;
begin
  if compmode then
    mrectrefresh(mausxsave, mausysave, mausxsave + compx, mausysave + compy);
  if (not ersterLpunkt) and (Iline or Dline or NLine) then
    mrectrefresh(linex1, liney1, mausx, mausy);
  if (not ersterRpunkt) and (rectmode or selectmode) then
    mboxrefresh;
  if (InsertRow or deleteRow) then
    mrectrefresh(0, mausysave, matrixX, mausysave + 1);
  if (InsertCol or deleteCol) then
    mrectrefresh(mausXsave, 0, mausXsave + 1, MatrixY);
  if textmode then
    mrectrefresh(mausXsave, MausySave, MausxSave + length(MainForm.textedit.Text), Mausysave);
  if charmode then
    mrectrefresh(MausXSave, MausYsave, MausXsave, MausYsave);
  if editmode then
    PlaceEditorText;
end;

procedure drawcursor;
begin
  Mainform.paintbox1.canvas.pen.color := clblue;
  MainForm.paintbox1.Canvas.Rectangle(Text_Editor.x * extentx, Text_Editor.Y * extentY, (Text_Editor.x + 1) * extentx, (Text_Editor.Y + 1) * extentY);
  Text_Editor.blink := True;
  MainForm.Blink.Enabled := True;
end;

procedure ResetALLModes;
begin
  if editmode then
    PlaceEditorText;
  insertCOL := False;
  insertROW := False;
  deleteCOL := False;
  deleteROW := False;
  charmode := False;
  textmode := False;
  compmode := False;
  movemode := False;
  NLine := False;
  ersterLpunkt := False;
  zweiterLpunkt := False;
  rectmode := False;
  ersterRpunkt := False;
  ILine := False;
  DLine := False;
  Editmode := False;
  MainForm.blink.Enabled := False;
  Pastemode := False;
  selectmode := False;
  selectbox.rect_coord := False;
  selectbox.target_coord := False;
end;

function FindCompByName(Name: shortstring): Integer;
var
  item: Integer;
begin
  Result := -1;
  for item := 0 to MainForm.ListBox1.Items.Count - 1 do
    if POS(AnsiLowerCase(Name), AnsiLowerCase(MainForm.ListBox1.Items[item])) > 0 then
    begin
      Result := item + 1;
      break;
    end;
  if Result = -1 then
    ShowMessage('Couldn''t find ' + Name + ' in component list. Please edit the component.ini');
end;

procedure copyselectbox;
var
  x, y: Byte;
  temp: Byte;
  stringpuffer: String;
begin
  //showmessage('select left:'+inttostr(selectbox.left)+' top:'+inttostr(selectbox.top)+' right:'+inttostr(selectbox.right)+' bottom:'+inttostr(selectbox.bottom));
  ClipBForm.ClipBMemo.Clear;
  for y := selectbox.Top to selectbox.Bottom do
  begin
    stringpuffer := '';
    for x := selectbox.Left to selectbox.Right do
    begin
      temp := matrix[x, y];
      if temp = 0 then
        temp := 32;
      stringpuffer := stringpuffer + chr(temp);
    end;
    ClipBForm.clipBmemo.Lines.Add(stringpuffer);  //temp);
  end;
  //selectbox.filled:=True;
  //selectmode:=false;
  //pastemode:=True;
  //MainForm.PaintBox1MouseMove(MainForm,[],1,1);
end;

procedure getcompdata(const memoline: Shortstring; var memocomp, memoori, mx, my: Byte; var gespiegeltchar: Char);
var
  scan, lastscan: Byte;
  temp: Shortstring;
begin
  try
    scan := 6;
    memocomp := 0;
    while (memoline[scan] <> ',') do
      Inc(scan);
    temp := copy(memoline, 6, scan - 6);
    if temp = '' then
      Temp := '0';
    memocomp := StrToInt(temp);
    Inc(scan);
    lastscan := scan;
    while (memoline[scan] <> ',') do
      Inc(scan);
    temp := copy(memoline, lastscan, scan - lastscan);
    if temp = '' then
      Temp := '0';
    memoori := StrToInt(temp);
    Inc(scan);
    lastscan := scan;
    while (memoline[scan] <> ',') do
      Inc(scan);
    temp := copy(memoline, lastscan, scan - lastscan);
    if temp = '' then
      Temp := '0';
    mx := StrToInt(temp);
    Inc(scan);
    lastscan := scan;
    while (memoline[scan] <> ',') do
      Inc(scan);
    my := StrToInt(copy(memoline, lastscan, scan - lastscan));
    Inc(scan);
    lastscan := scan;
    while (memoline[scan] <> ',') and (scan <= length(memoline)) do
      Inc(scan);
    gespiegeltchar := memoline[lastscan];
  except
    on EConvertError do
      ShowMessage(memoline + ' ist kein gültiges Zeichen-Kommando...');
  end;
end;


procedure getlinedata(const memoline: shortstring; var memocomp, mx, my, mx2, my2: Byte);
var
  scan, lastscan: Byte;
begin
  scan := 6;
  while (memoline[scan] <> ',') do
    Inc(scan);
  memocomp := StrToInt(copy(memoline, 6, scan - 6));
  Inc(scan);
  lastscan := scan;
  while (memoline[scan] <> ',') do
    Inc(scan);
  mx := StrToInt(copy(memoline, lastscan, scan - lastscan));
  Inc(scan);
  lastscan := scan;
  while (memoline[scan] <> ',') do
    Inc(scan);
  my := StrToInt(copy(memoline, lastscan, scan - lastscan));
  Inc(scan);
  lastscan := scan;
  while (memoline[scan] <> ',') do
    Inc(scan);
  mx2 := StrToInt(copy(memoline, lastscan, scan - lastscan));
  Inc(scan);
  lastscan := scan;
  while (memoline[scan] <> ',') and (scan <= length(memoline)) do
    Inc(scan);
  my2 := StrToInt(copy(memoline, lastscan, scan - lastscan));
end;

procedure gettextdata(const memoline: shortstring; var mtext: shortstring; var mx, my: Byte);
var
  scan, lastscan: Byte;
  commacount: Byte;
  commaindex: array [0..20] of Byte;
  LinePuffer: shortstring;
begin
  commacount := 0;
  LinePuffer := memoline;
  //commaindex[0]:=POS(',',memoline);
  scan := 6;
  repeat
    while ((memoline[scan] <> ',') and (scan < length(memoline))) do
      Inc(scan);
    if memoline[scan] = ',' then
    begin
      commaindex[commacount] := scan;
      Inc(scan);
      Inc(commacount);
    end;
  until scan = length(memoline);
  if commacount > 2 then
    scan := commaindex[commacount - 2]
  else
    scan := commaindex[0];
  mtext := copy(memoline, 6, scan - 6);
  Inc(scan);
  lastscan := scan;
  while (memoline[scan] <> ',') do
    Inc(scan);
  mx := StrToInt(copy(memoline, lastscan, scan - lastscan));
  Inc(scan);
  lastscan := scan;
  while (memoline[scan] <> ',') and (scan <= length(memoline)) do
    Inc(scan);
  my := StrToInt(copy(memoline, lastscan, scan - lastscan));
end;

procedure getchardata(const memoline: shortstring; var memocomp, mx, my: Byte);
var
  scan, lastscan: Byte;
begin
  scan := 6;
  while (memoline[scan] <> ',') do
    Inc(scan);
  memocomp := StrToInt(copy(memoline, 6, scan - 6));
  Inc(scan);
  lastscan := scan;
  while (memoline[scan] <> ',') do
    Inc(scan);
  mx := StrToInt(copy(memoline, lastscan, scan - lastscan));
  Inc(scan);
  lastscan := scan;
  while (memoline[scan] <> ',') and (scan <= length(memoline)) do
    Inc(scan);
  my := StrToInt(copy(memoline, lastscan, scan - lastscan));
end;

procedure DrawText(const Text: shortstring; const mx, my: Byte);
var
  Xchar: Byte;
begin
  if length(Text) > 0 then
    for xchar := 0 to length(Text) - 1 do
      if ((mx + xchar) < (matrixx - 1)) then
        if not ((selectbox.transparent) and (Text[xChar + 1] = CHR(32))) then //wenn transparent leerzeichen nicht zeichnen
          MainForm.paintbox1.Canvas.TextOut((mx + Xchar) * extentx, my * extenty, Text[xChar + 1]);
end;

procedure DrawfromClipBMemo(const mx, my: Byte);
var
  zeile: Word;
begin
  for zeile := 0 to ClipBForm.ClipBMemo.Lines.Count do
  begin
    DrawText(ClipBForm.ClipBMemo.Lines[zeile], mx, my + zeile);
  end;
end;

procedure lrectangle(x1, y1, x2, y2: Byte; toArray: Boolean);
var
  mx, my, temp: Byte;
begin
  if x2 > MatrixX then
    x2 := MatrixX;
  if y2 > MatrixY then
    y2 := MatrixY;
  if x1 > x2 then
  begin
    temp := x2;
    x2 := x1;
    x1 := temp;
  end;
  if y1 > y2 then
  begin
    temp := y2;
    y2 := y1;
    y1 := temp;
  end;
  if (x2 > x1) and (y2 > y1) then
  begin
    for mx := x1 + 1 to x2 - 1 do
    begin
      MainForm.paintbox1.Canvas.TextOut(mx * extentx, y1 * extenty, '-');
      if toArray then
        matrix[mx, y1] := Ord('-');
    end;
    for mx := x1 + 1 to x2 - 1 do
    begin
      MainForm.paintbox1.Canvas.TextOut(mx * extentx, y2 * extenty, '-');
      if toArray then
        matrix[mx, y2] := Ord('-');
    end;
    for my := y1 + 1 to y2 - 1 do
    begin
      MainForm.paintbox1.Canvas.TextOut(x1 * extentx, my * extenty, '|');
      if toArray then
        matrix[x1, my] := Ord('|');
    end;
    for my := y1 + 1 to y2 - 1 do
    begin
      MainForm.paintbox1.Canvas.TextOut(x2 * extentx, my * extenty, '|');
      if toArray then
        matrix[x2, my] := Ord('|');
    end;
    MainForm.paintbox1.Canvas.TextOut(x1 * extentx, y1 * extenty, '.');
    MainForm.paintbox1.Canvas.TextOut(x1 * extentx, y2 * extenty, '''');
    MainForm.paintbox1.Canvas.TextOut(x2 * extentx, y2 * extenty, '''');
    MainForm.paintbox1.Canvas.TextOut(x2 * extentx, y1 * extenty, '.');
    if toArray then
      matrix[x1, y1] := Ord('.');
    if toArray then
      matrix[x1, y2] := Ord('''');
    if toArray then
      matrix[x2, y2] := Ord('''');
    if toArray then
      matrix[x2, y1] := Ord('.');
  end;
end;

procedure SimpleLinePaint(x1, y1, x2, y2: Byte; linetyp: Byte; const toArray: Boolean);
var
  dx, dy, xystart, xyend, xy: Integer;
  lchar: Char;
  startc, endc: Byte;
begin
  if y1 >= matrixY then
    y1 := MatrixY - 1;
  if y2 >= matrixY then
    y2 := MAtrixY - 1;
  if x1 >= matrixX then
    x1 := MatrixX - 1;
  if x2 >= matrixX then
    x2 := MatrixX - 1;
  dx := x2 - x1;
  dy := y2 - y1;
  if (abs(dy) >= abs(dx)) then
  begin //senkrechte linie zeichnen
    lchar := '|';
    if dy > 0 then
    begin
      xystart := y1;
      xyend := y2;
    end
    else
    begin
      xystart := y2;
      xyend := y1;
    end;
    for xy := xystart + 1 to xyend - 1 do
    begin
      MainForm.paintbox1.Canvas.TextOut(x1 * extentx, xy * extenty, lchar);
      if toArray then
        matrix[x1, xy] := Ord(lchar);
    end;
  end
  else
  begin //waagerechte linie zeichnen
    lchar := '-';
    if dx > 0 then
    begin
      xystart := x1;
      xyend := x2;
    end
    else
    begin
      xystart := x2;
      xyend := x1;
    end;
    for xy := xystart + 1 to xyend - 1 do
    begin
      MainForm.paintbox1.Canvas.TextOut(xy * extentx, y1 * extenty, lchar);
      if toArray then
        matrix[xy, y1] := Ord(lchar);
    end;
  end;
  // Anfang- und End-Char zeichnen
  if ((lineTyp = 39) and (lchar = '|')) then
  begin
    if dy > 0 then
    begin
      startc := Ord('.');
      endc := Ord('''');
    end
    else
    begin
      startc := Ord('''');
      endc := Ord('.');
    end;
  end
  else
  if lineTyp = 0 then   //normale Linie
  begin
    startc := Ord(lchar);
    endc := startc;
  end
  else // o oder  + als start end...
  begin
    startc := lineTyp;
    endc := lineTyp;
  end;
  MainForm.paintbox1.Canvas.TextOut(x1 * extentx, y1 * extenty, chr(startc));
  MainForm.paintbox1.Canvas.TextOut(x2 * extentx, y2 * extenty, chr(endc));
  if toArray then
  begin
    matrix[x1, y1] := startc;
    matrix[x2, y2] := endc;
  end;
end;

procedure DLinePaint(const x1, y1, x2, y2: Byte; const toArray: Boolean);
var
  x, y, xstart, xend: Integer;
  x1p, x2p, y1p, y2p, xp, yp, dxp, dyp, yp_mod: Integer;
  x_save, y_save, yp_sum, x_count: Integer;
  yp_section: Integer;
  ypos: Integer;
  temp: Byte;
  c: Char;
  m: Real;
  m_deg: Integer;
  senkrecht, waagerecht: Boolean;
begin
  x1p := x1 * extentX + extentX div 2;
  x2p := x2 * extentX + extentX div 2;
  y1p := y1 * extentY + ExtentY div 2;
  y2p := y2 * extentY + ExtentY div 2;
  dyp := y1p - y2p;
  dxp := x2p - x1p;
  senkrecht := (x1 = x2);  //senkrechte Linie
  waagerecht := (y1 = y2); //waagerechte Linie
  m_deg := 0;
  m := 0;
  if not senkrecht then
  begin
    m := dyp / dxp;
    m_deg := round(arctan(m) * 180 / pi);
  end;
  if x2p > x1p then
  begin
    xstart := x1p;
    xend := x2p;
  end
  else
  begin
    xstart := x2p;
    xend := x1p;
  end;
  x_count := 0;
  yp_sum := 0;
  x_save := x2;
  y_save := y2;
  if (not senkrecht) then
    for xp := Xstart to Xend do
    begin
      yp := round(y1p - (xp - x1p) * m);
      y := yp div extentY;
      x := xp div ExtentX;
      if (x <> x_save) or (y <> y_save) then
      begin
        if x_count > 0 then
          yp_section := round(yp_sum / x_count)
        else
          yp_section := extentY div 2;

        if (x_count > 4) or (m_deg > 60) or (m_deg < -60) then
        begin
          case yp_section of
            1..4: c := '''';
            5..8: c := 'o';
            9..14: c := '.';
            else
              c := ' ';
          end;

          if c = 'o' then
            case m_deg of
              -90.. -70: c := '|';
              -69.. -35: c := '\';
              -34..34: c := '-';
              35..69: c := '/';
              70..90: c := '|';
            end;

          if c = '''' then
            case m_deg of
              -64.. -21: c := '`';
              -20..20: c := '''';
              21..64: c := ansichar($B4)//'´';
            end;

          if c = '.' then
            case m_deg of
              -20..20: c := '_';
              21..64: c := ',';
            end;

          MainForm.paintbox1.Canvas.TextOut(x_save * extentx, y_save * extenty, c);
          if toArray then
            matrix[x_save, y_save] := Ord(c);
        end;

        x_save := x;
        y_save := y;
        yp_sum := 0;
        x_count := 0;
      end;

      yp_sum := yp_sum + round((yp mod extentY) / extentY * 13);
      Inc(x_count);
    end
  else
    SimpleLinePaint(x1, y1, x2, y2, 0, toArray);

  gridraster;
end;

function checkILinematch(const search_dir: Shortint; const x, y, index: Byte; var direction, sechar: Byte): Boolean;
var
  ml_index, temp, d_cell: Byte;
  //match:boolean;
begin
  if (x < MatrixX - 1) and (y < MatrixY - 1) and (x > 0) and (y > 0) and not ((search_dir >= 0) and (search_dir <> IData[index].s_dir)) then
    // AND ((search_dir=-1) or (search_dir=IData[index].s_dir) ) Then

  begin
    Result := True;
    for ml_index := 0 to 8 do
    begin
      temp := IData[index].field[ml_index];
      if temp <> Ord('x') then
      begin
        d_cell := matrix[x - 1 + ml_index mod 3, y - 1 + ml_index div 3];
        if d_cell = 0 then
          d_cell := 32;
        if not (d_cell = temp) then
        begin
          Result := False;
          break;
        end;
      end;
    end;
    if Result = True then
    begin
      direction := IData[index].s_dir;
      sechar := IData[index].s_char;
    end;
  end
  else
    Result := False;
end;

procedure CornerLine(const dir, x1, y1, x2, y2: Byte; const toarray: Boolean);
var
  top, left, temp, startv, endv, corner_char: Byte;
  dy, dx: Shortint;
  p_char: Char;
  //dir 0=horizontal 1=vertikal 2=longest line first
begin
  dx := x2 - x1;
  dy := y2 - y1;
  top := 0;
  left := 0;
  if (dy >= 0) xor not (dir = 1) then
    corner_char := 39
  else
    corner_char := 46; //Corner character
  if dx > 0 then
  begin
    startv := x1;
    endv := x2;
  end
  else
  begin
    startv := x2;
    endv := x1;
  end;
  if dir = 0 then
  begin
    top := y1;
    left := x2;
  end;
  if dir = 1 then
  begin
    top := y2;
    left := x1;
  end;
  if abs(dx) > 1 then
    for temp := startv + 1 to endv - 1 do
    begin //horizontale linie zeichnen
      if matrix[temp, top] = 124 then
        p_char := ')'
      else
        p_char := '-';
      MainForm.paintbox1.Canvas.TextOut(temp * extentx, top * extenty, p_char);
      if toArray then
        matrix[temp, top] := Ord(p_char);
    end;
  if dy > 0 then
  begin
    startv := y1;
    endv := y2;
  end
  else
  begin
    startv := y2;
    endv := y1;
  end;
  if abs(dy) > 1 then
    for temp := startv + 1 to endv - 1 do
    begin //vertikale linie zeichnen
      if matrix[left, temp] = 45 then
        p_char := ')'
      else
        p_char := '|';
      MainForm.paintbox1.Canvas.TextOut(left * extentx, temp * extenty, p_char);
      if toArray then
        matrix[left, temp] := Ord(p_char);
    end;
  //Eckzeichen
  if ((dir = 0) and (abs(dy) > 0)) or ((dir = 1) and (abs(dx) > 0)) then  //gibt es überhaupt eine ecke?
    // If (abs(dx)>0) Then  //gibt es überhaupt eine ecke?
  begin
    MainForm.paintbox1.Canvas.TextOut(left * extentx, top * extenty, chr(corner_char));
    if toArray then
      matrix[left, top] := corner_char;
  end;
end;

procedure ILinePaint2(const x1, y1, x2, y2: Byte; const toArray: Boolean);
var
  index, se_c, dir, temp: Byte;
  dx, dy, s_dir: Shortint;
begin
  s_dir := 0;
  dx := x2 - x1;
  dy := y2 - y1;

  for index := 0 to IDataItemIndex - 1 do
    if checkILinematch(-1, x1, y1, index, dir, se_C) then
      //    If se_C<>32 Then
    begin
      MainForm.paintbox1.Canvas.TextOut(x1 * extentx, y1 * extenty, chr(se_c));
      if toArray then
        matrix[x1, y1] := se_c;
      break;
    end;

  if dir = 2 then  //longest line first
    if abs(dy) > abs(dx) then
      dir := 1
    else
      dir := 0;

  MainForm.SBar.Panels[5].Text := 'Start: D[' + IntToStr(index) + '] car:' + chr(se_c) + ' dir.' + IntToStr(dir);

  if (dir = 0) then
    if (abs(dy) > 0) then
      s_dir := 1
    else
      s_dir := 0;
  if (dir = 1) then
    if (abs(dx) > 0) then
      s_dir := 0
    else
      s_dir := 1;

  for index := 0 to IDataItemIndex - 1 do
    if checkILinematch(s_dir, x2, y2, index, temp, se_C) then
    begin
      MainForm.paintbox1.Canvas.TextOut(x2 * extentx, y2 * extenty, chr(se_c));
      if toArray then
        matrix[x2, y2] := se_c;
      break;
    end;
  MainForm.SBar.Panels[6].Text := 'End: D[' + IntToStr(index) + '] dir:' + IntToStr(s_dir) + ' char:' + chr(se_c);


  CornerLine(dir, x1, y1, x2, y2, toArray);
end;

procedure ILinepaint(const x1, y1, x2, y2: Byte; const toArray: Boolean);
var
  // alte MagLine, wegen abwنrtscompatibilitنt noch vorhanden
  mx, my, temp, xdiv, ydiv, eckx, ecky, SEcount: Byte;
  startC, endC, eckC: Char;
  startr: 1..2; //Startrichtung 1=oben/unten  2=rechts/links
begin
  MainForm.SBar.Panels[5].Text := '';
  Startc := '#';
  Startr := 1;
  eckx := 0;
  ecky := 0;
  EndC := '#';
  Eckc := '%';
  SECount := 0;
  if x2 >= x1 then
    xdiv := x2 - x1
  else
    xdiv := x1 - x2;  //Diffenernz x
  if y2 >= y1 then
    ydiv := y2 - y1
  else
    ydiv := y1 - y2;  //Diffenernz y
  // nichts drumherum     // geprüft
  if (matrix[x1 - 1, y1] = 0) and (matrix[x1 + 1, y1] = 0) and (matrix[x1, y1 - 1] = 0) and (matrix[x1, y1 + 1] = 0) then
  begin
    if xdiv > ydiv then
      startr := 2
    else
      startr := 1;
    if startr = 1 then
      StartC := '|'
    else
      StartC := '-';
    MainForm.SBar.Panels[5].Text := 'S:all free';
    Inc(SECount);
  end;
  // o/u=| , l/r free
  if ((matrix[x1, y1 - 1] = Ord('|')) or (matrix[x1, y1 + 1] = Ord('|'))) and (matrix[x1 - 1, y1] = 0) and (matrix[x1 + 1, y1] = 0) then
  begin
    if ydiv > 0 then
    begin
      StartC := '|';
      Startr := 1;
    end;
    if (ydiv = 0) then
    begin
      startr := 2;
      if (matrix[x1, y1 - 1] = Ord('|')) then
        StartC := '''';
      if (matrix[x1, y1 + 1] = Ord('|')) then
        StartC := '.';
    end;
    MainForm.SBar.Panels[5].Text := 'S:o/u,l/r=0';
    Inc(SECount);
  end;
  // oben .
  if (matrix[x1, y1 - 1] = Ord('.')) {AND (matrix[x1,y1+1]=0)} and (matrix[x1 - 1, y1] = 0) and (matrix[x1 + 1, y1] = 0) then
  begin
    if ydiv > 0 then
    begin
      StartC := '|';
      Startr := 1;
    end;
    if (ydiv = 0) then
    begin
      startr := 2;
      StartC := '''';
    end;
    MainForm.SBar.Panels[5].Text := 'S:o.;l/r/u=0';
    Inc(SECount);
  end;
  // unten '
  if (matrix[x1, y1 + 1] = Ord('''')) {AND (matrix[x1,y1-1]=0)} and (matrix[x1 - 1, y1] = 0) and (matrix[x1 + 1, y1] = 0) then
  begin
    if ydiv > 0 then
    begin
      StartC := '|';
      Startr := 1;
    end;
    if (ydiv = 0) then
    begin
      startr := 2;
      StartC := '.';
    end;
    MainForm.SBar.Panels[5].Text := 'S:u'''';l/r/0=0';
    Inc(SECount);
  end;
  // oben -
  if (matrix[x1, y1 - 1] = Ord('-')) and (matrix[x1, y1 + 1] = 0) and (matrix[x1 - 1, y1] = 0) and (matrix[x1 + 1, y1] = 0) then
  begin
    if ydiv > 0 then
    begin
      StartC := '|';
      Startr := 1;
    end;
    if (ydiv = 0) then
    begin
      startr := 2;
      StartC := '-';
    end;
    MainForm.SBar.Panels[5].Text := 'S:o-;l/r/u=0';
    Inc(SECount);
  end;
  // unten -
  if (matrix[x1, y1 + 1] = Ord('-')) and (matrix[x1, y1 - 1] = 0) and (matrix[x1 - 1, y1] = 0) and (matrix[x1 + 1, y1] = 0) then
  begin
    if ydiv > 0 then
    begin
      StartC := '|';
      Startr := 1;
    end;
    if (ydiv = 0) then
    begin
      startr := 2;
      StartC := '-';
    end;
    MainForm.SBar.Panels[5].Text := 'S:u-;l/r/u=0';
    Inc(SECount);
  end;
  // l/r=- , o/u free
  if ((matrix[x1 - 1, y1] = Ord('-')) or (matrix[x1 + 1, y1] = Ord('-'))) and (matrix[x1, y1 - 1] = 0) and (matrix[x1, y1 + 1] = 0) then
  begin
    if xdiv > 0 then
    begin
      StartC := '-';
      Startr := 2;
    end;
    if (xdiv = 0) then
    begin
      startr := 1;
      if y2 > y1 then
        StartC := '.';
      if y2 < y1 then
        StartC := '''';
    end;
    MainForm.SBar.Panels[5].Text := 'S:l/r,o/u=0';
    Inc(SECount);
  end;
  // links und recht - , oben kein |
  if (matrix[x1 - 1, y1] = Ord('-')) and (matrix[x1 + 1, y1] = Ord('-'))
  {AND NOT (matrix[x1,y1-1]=ord('|'))} then
  begin
    Startc := 'o';
    startr := 1; //oben/unten
    MainForm.SBar.Panels[5].Text := 'links und recht - , oben kein |';
    Inc(SECount);
  end;
  // oben und unten | , links kein -
  if (matrix[x1, y1 - 1] = Ord('|')) and (matrix[x1, y1 + 1] = Ord('|'))
  {AND NOT (matrix[x1,y1-1]=ord('|'))} then
  begin
    Startc := 'o';
    startr := 2; //oben/unten
    MainForm.SBar.Panels[5].Text := 'oben und unten | , links kein -';
    Inc(SECount);
  end;
  // links oder rechts o
  if (matrix[x1 - 1, y1] = Ord('o')) or (matrix[x1 + 1, y1] = Ord('o')) then
  begin
    startr := 2;
    StartC := '-';
    MainForm.SBar.Panels[5].Text := 'S:lVr=o;';
    Inc(SECount);
  end;
  // oben oder unten o
  if (matrix[x1, y1 - 1] = Ord('o')) or (matrix[x1, y1 + 1] = Ord('o')) then
  begin
    startr := 1;
    StartC := '|';
    MainForm.SBar.Panels[5].Text := 'S:oVu=o;';
    Inc(SECount);
  end;

  // End Char
  // nichts drumherum
  if (matrix[x2 - 1, y2] = 0) and (matrix[x2 + 1, y2] = 0) and (matrix[x2, y2 - 1] = 0) and (matrix[x2, y2 + 1] = 0) then
  begin
    if startr = 1 then  // Startrichtung oben/unten
    begin
      if (x1 = x2) then
        EndC := '|'
      else
        EndC := '-';
    end;
    if startr = 2 then  // Startrichtung linksrechts
    begin
      if (y1 = y2) then
        EndC := '-'
      else
        EndC := '|';
    end;
    MainForm.SBar.Panels[5].Text := MainForm.SBar.Panels[5].Text + 'E:all free';
    Inc(SECount);
  end;
  // von oben oder unten
  if ((matrix[x2, y2 - 1] = Ord('|')) or (matrix[x2, y2 + 1] = Ord('|'))) {AND (matrix[x2-1,y2]=0) AND (matrix[x2+1,y2]=0)} then
  begin
    if StartR = 1 then
      if x1 = x2 then
        EndC := '|'
      else
        EndC := 'o';
    if startr = 2 then
      if (y1 = y2) then
        EndC := 'o'
      else
        EndC := '|';
    MainForm.SBar.Panels[5].Text := MainForm.SBar.Panels[5].Text + 'E:o/u';
    Inc(SECount);
  end;
  // von links oder rechts
  if ((matrix[x2 - 1, y2] = Ord('-')) or (matrix[x2 + 1, y2] = Ord('-'))) and (matrix[x2, y2 - 1] = 0) and (matrix[x2, y2 + 1] = 0) then
  begin
    if StartR = 1 then
      if x1 = x2 then
      begin
        if y1 < y2 then
          EndC := '''';
        if y1 > y2 then
          Endc := '.';
      end
      else
        EndC := '-';
    if startr = 2 then
      if (y1 <> y2) then
      begin
        if y1 < y2 then
          EndC := '''';
        if y1 > y2 then
          Endc := '.';
      end
      else
        EndC := '-';
    Inc(SECount);
    MainForm.SBar.Panels[5].Text := MainForm.SBar.Panels[5].Text + 'END:l/r';
  end;
  // links UND rechts -
  if (matrix[x2 - 1, y2] = Ord('-')) and (matrix[x2 + 1, y2] = Ord('-')) then
  begin
    if ((StartR = 1) and (x1 = x2)) or ((StartR = 2) and (y1 <> y2)) then
      EndC := 'o';
    Inc(SECount);
  end;

  //generell, wenn EndC noch # ist
  if Endc = '#' then
  begin
    if StartR = 1 then
      if x1 = x2 then
        EndC := '|'
      else
        EndC := '-';
    if StartR = 2 then
      if (y1 <> y2) then
        EndC := '|'
      else
        EndC := '-';
  end;
  //generell, wenn StartC noch # ist
  if Startc = '#' then
  begin
    if StartR = 1 then
      StartC := '|';
    if StartR = 2 then
      StartC := '-';
  end;


  //Linie zeichnen
  if (startr = 1) then
  begin
    mx := x1;
    if y2 > y1 then
      EckC := ''''
    else
      EckC := '.';
    if y2 > y1 then
      for my := y1 + 1 to y2 - 1 do
      begin
        MainForm.paintbox1.Canvas.TextOut(mx * extentx, my * extenty, '|');
        if toArray then
          matrix[mx, my] := Ord('|');
      end;
    if y1 > y2 then
      for my := y1 - 1 downto y2 + 1 do
      begin
        MainForm.paintbox1.Canvas.TextOut(mx * extentx, my * extenty, '|');
        if toArray then
          matrix[mx, my] := Ord('|');
      end;
    my := y2;
    if x2 > x1 then
      for mx := x1 + 1 to x2 - 1 do
      begin
        MainForm.paintbox1.Canvas.TextOut(mx * extentx, my * extenty, '-');
        if toArray then
          matrix[mx, my] := Ord('-');
      end;
    if x1 > x2 then
      for mx := x1 - 1 downto x2 + 1 do
      begin
        MainForm.paintbox1.Canvas.TextOut(mx * extentx, my * extenty, '-');
        if toArray then
          matrix[mx, my] := Ord('-');
      end;
    ecky := y2;
    eckx := x1;
  end;
  if (startr = 2) then
  begin
    my := y1;
    if y2 < y1 then
      EckC := ''''
    else
      EckC := '.';
    if x2 > x1 then
      for mx := x1 + 1 to x2 - 1 do
      begin
        MainForm.paintbox1.Canvas.TextOut(mx * extentx, my * extenty, '-');
        if toArray then
          matrix[mx, my] := Ord('-');
      end;
    if x1 > x2 then
      for mx := x1 - 1 downto x2 + 1 do
      begin
        MainForm.paintbox1.Canvas.TextOut(mx * extentx, my * extenty, '-');
        if toArray then
          matrix[mx, my] := Ord('-');
      end;
    mx := x2;
    if y2 > y1 then
      for my := y1 + 1 to y2 - 1 do
      begin
        MainForm.paintbox1.Canvas.TextOut(mx * extentx, my * extenty, '|');
        if toArray then
          matrix[mx, my] := Ord('|');
      end;
    if y1 > y2 then
      for my := y1 - 1 downto y2 + 1 do
      begin
        MainForm.paintbox1.Canvas.TextOut(mx * extentx, my * extenty, '|');
        if toArray then
          matrix[mx, my] := Ord('|');
      end;
    ecky := y1;
    eckx := x2;
  end;

  //  showmessage(startc);
  // MainForm.paintbox1.Canvas.TextOut(1*extentx,1*extenty,startc);   //als Test
  MainForm.SBar.Panels[5].Text := MainForm.SBar.Panels[5].Text + ' ' + IntToStr(SECount);
  MainForm.paintbox1.Canvas.TextOut(eckx * extentx, ecky * extenty, eckC);
  MainForm.paintbox1.Canvas.TextOut(x1 * extentx, y1 * extenty, startc);
  MainForm.paintbox1.Canvas.TextOut(x2 * extentx, y2 * extenty, endc);
  if toArray then
    matrix[eckx, ecky] := Ord(eckC);
  if toArray then
    matrix[x1, y1] := Ord(StartC);
  if toArray then
    matrix[x2, y2] := Ord(EndC);
  MainForm.SBar.Panels[4].Text := IntToStr(x1) + ',' + IntToStr(y1) + ',' + IntToStr(x2) + ',' + IntToStr(y2);
end;

procedure comppaint(x, y: Byte; toArray: Boolean);
var
  mx, my, temp, right, bottom: Byte;
begin
  if (mausx >= 0) and (mausx < matrixx) and (mausy >= 0) and (mausy < matrixy) then
  begin
    right := mausx + compx - 1;
    bottom := mausy + compy - 1;
    if right >= matrixX then
      right := MatrixX - 1;
    if bottom >= matrixY then
      bottom := MatrixY - 1;
    for mx := mausx to right do
      for my := mausy to bottom do
      begin
        temp := tempcomp[mx - mausx, my - mausy];
        if temp > 0 then
          MainForm.paintbox1.Canvas.TextOut(mx * extentx, my * extenty, chr(temp));
        if toArray and (temp > 0) and (mx < MatrixX) and (my < MatrixY) then
          matrix[mx, my] := temp;
      end;
  end;
end;

procedure ApplySelectionCommand;
var
  mlindex: Byte;
  memocomp, memoori, mx, my, mx2, my2: Byte;
  gespiegeltchar: Char;
  compfound, linefound, textfound, charfound, rectfound, found, p1inRect, p2inRect: Boolean;
  mline, Text, linetyp: shortstring;
  moveVektorX, moveVektorY: Integer;
begin
  moveVektorX := selectbox.targetX - selectbox.Left;
  moveVektorY := selectbox.TargetY - selectbox.Top;
  if commandF.memo2.Lines.Count > 0 then
    for mlindex := commandF.memo2.Lines.Count - 1 downto 0 do
    begin
      memocomp := 0;
      linefound := False;
      rectfound := False;
      compfound := False;
      textfound := False;
      charfound := False;
      mx2 := 0;
      my2 := 0;
      mline := commandF.memo2.Lines[mlindex];
      if copy(mline, 1, 5) = 'comp:' then
      begin
        compfound := True;
        getcompdata(mline, memocomp, memoori, mx, my, gespiegeltchar);
      end;
      if (copy(mline, 1, 5) = 'line:') or (copy(mline, 1, 5) = 'MagL:') or (copy(mline, 1, 5) = 'DirL:') then
      begin
        Linefound := True;
        linetyp := copy(mline, 1, 5);
        getlinedata(mline, memocomp, mx, my, mx2, my2);
      end;
      if (copy(mline, 1, 5) = 'rect:') then
      begin
        RectFound := True;
        linetyp := copy(mline, 1, 5);
        getlinedata(mline, memocomp, mx, my, mx2, my2);
      end;
      if copy(mline, 1, 5) = 'text:' then
      begin
        textfound := True;
        gettextdata(mline, Text, mx, my);
      end;
      if copy(mline, 1, 5) = 'char:' then
      begin
        charfound := True;
        getchardata(mline, memocomp, mx, my);
      end;

      found := (linefound or rectfound or compfound or textfound or charfound);
      p1inRect := (mx >= selectbox.Left) and (mx <= selectbox.Right) and (my >= selectbox.Top) and (my <= selectbox.Bottom);
      p2inRect := (mx2 >= selectbox.Left) and (mx2 <= selectbox.Right) and (my2 >= selectbox.Top) and (my2 <= selectbox.Bottom);
      if found and (p1inRect or p2inRect) then    //Comp,text,linie in selectbox gefunden
      begin
        if p1inRect then
        begin
          mx := mx + moveVektorX;
          my := my + MoveVektorY;
        end;
        if p2inRect then
        begin
          mx2 := mx2 + moveVektorX;
          my2 := my2 + MoveVektorY;
        end;

        if selectbox.mode = 3 then //delete;
          commandF.memo2.Lines.Delete(mlindex);
        if (selectbox.mode = 1) or (selectbox.mode = 2) then //move oder copy
        begin
          //If selectbox.mode=1 Then //move  bestehende symbole lِschen
          // commandF.memo2.Lines.Delete(mlindex);
          if compfound then
            mline := ('comp:' + IntToStr(memocomp) + ',' + IntToStr(memoori) + ',' +
              IntToStr(mx) + ',' + IntToStr(my) + ',' + gespiegeltchar + ',' + MainForm.Listbox1.Items[memocomp - 1]); // comp[showcomp,showori,x,y]
          if linefound then
            mline := (linetyp + IntToStr(memocomp) + ',' + IntToStr(mx) + ',' + IntToStr(my) + ',' + IntToStr(mx2) + ',' + IntToStr(my2));
          if rectfound then
            mline := ('rect:' + IntToStr(memocomp) + ',' + IntToStr(mx) + ',' + IntToStr(my) + ',' + IntToStr(mx2) + ',' + IntToStr(my2));
          if textfound then
            mline := (copy(mline, 1, 5) + Text + ',' + IntToStr(mx) + ',' + IntToStr(my));
          if charfound then
            mline := ('char:' + IntToStr(memocomp) + ',' + IntToStr(mx) + ',' + IntToStr(my));
          if selectbox.mode = 1 then   //move
            commandF.Memo2.Lines[mlindex] := mline
          else                    //copy
            commandF.Memo2.Lines.Add(mline);
        end;
      end;
    end;
  MainForm.neuzeichnen1Click(selectform);
  mainForm.selectBClick(MainForm);
end;

procedure proceedselection;
var
  x, y: Byte;
begin
  if selectbox.rect_coord and (selectbox.mode = 3) then //delete
    ApplySelectionCommand;
  if (selectbox.rect_coord) and (not selectbox.target_coord) then
  begin
    if (selectbox.mode = 1) then // move
    begin
      copyselectbox;
      for x := selectbox.Left to selectbox.Right do
        for y := selectbox.Top to selectbox.Bottom do
          matrix[x, y] := 0;
      mrectrefresh(selectbox.left, selectbox.top, selectbox.right, selectbox.bottom);
    end;
    if selectbox.mode = 2 then // copy
    begin
      copyselectbox;
      mboxrefresh;
    end;
  end;
  if selectbox.rect_coord and selectbox.target_coord //start und ziel definiert
  then
    ApplySelectionCommand;
end;

procedure circuitscan(x, y: Byte; Sender: TObject);
var
  mlindex: Byte;
  memocomp, memoori, mx, my, mx2, my2, modalindex, scan, delindex: Byte;
  gespiegeltchar: Char;
  found, morefound, compfound, linefound, textfound: Boolean;
  LBline, mline, Text: shortstring;
begin
  found := False;
  morefound := False;
  sresult.LB.Clear;
  modalindex := 0;
  MainForm.paintbox1.Canvas.font.Color := clred;
  if commandF.memo2.Lines.Count > 0 then
    for mlindex := 0 to commandF.memo2.Lines.Count - 1 do
    begin
      memocomp := 0;
      linefound := False;
      compfound := False;
      textfound := False;
      mline := commandF.memo2.Lines[mlindex];
      if copy(mline, 1, 5) = 'comp:' then
      begin
        compfound := True;
        getcompdata(mline, memocomp, memoori, mx, my, gespiegeltchar);
      end;
      if copy(mline, 1, 5) = 'line:' then
      begin
        Linefound := True;
        getlinedata(mline, memocomp, mx, my, mx2, my2);
      end;
      if copy(mline, 1, 5) = 'text:' then
      begin
        textfound := True;
        gettextdata(mline, Text, mx, my);
      end;
      MainForm.paintbox1.Canvas.TextOut(mx * extentx, my * extenty, 'x');
      if (mx = x) and (my = y) and (compfound or linefound or textfound) then
      begin
        if compfound then
          sresult.LB.Items.add('Item:' + IntToStr(mlindex) + ': ' + MainForm.listbox1.items[memocomp - 1]);
        if Linefound then
          sresult.LB.Items.add('Line:' + IntToStr(mlindex) + ': ' + chr(memocomp));
        if textfound then
          sresult.LB.Items.add('text:' + IntToStr(mlindex) + ': ' + Text);
        if found = True then
          morefound := True;    //mehrere überlagerte gefunden
        found := True;
        //showmessage(inttostr(memocomp)+' gefunden');

      end;
    end;

  if morefound and (sresult.ShowModal = mrOk) then
    modalindex := sresult.LB.ItemIndex;
  if found and not morefound then
    modalindex := 0;

  MainForm.paintbox1.Canvas.font.Color := clblack;
  if found or morefound then
  begin
    // showmessage(inttostr(modalindex));
    LBline := sresult.LB.items[modalindex];
    compfound := (copy(LBLine, 1, 4) = 'Item');
    linefound := (copy(LBLine, 1, 4) = 'Line');
    textfound := (copy(LBLine, 1, 4) = 'text');
    scan := 6;
    while (LBline[scan] <> ':') do
      Inc(scan);
    delindex := StrToInt(copy(LBLine, 6, scan - 6));

    if compfound then
      getcompdata(commandF.memo2.Lines[delindex], memocomp, memoori, mx, my, gespiegeltchar);
    if linefound then
      getlinedata(commandF.memo2.Lines[delindex], memocomp, mx, my, mx2, my2);
    if textfound then
      gettextdata(commandF.memo2.Lines[delindex], Text, mx, my);

    commandF.memo2.Lines.Delete(delindex);
    MainForm.neuzeichnen1Click(Sender);

    if compfound then
    begin
      MainForm.ListBox1.ItemIndex := memocomp - 1;
      showori := memoori;
      MainForm.ListBox1Click(Sender);
      if gespiegeltchar = 's' then
        gespiegelt := True;
    end;
    if linefound then      // wieder die ursprüngliche Linie wنhlen
    begin
      case memocomp of
        0: mainform.lb1.Click;
        111: mainform.lb2.Click;
        43: mainform.lb3.Click;
      end;
    end;
    if textfound then
    begin
      MainForm.textedit.Text := Text;
      mainForm.TextModeBClick(Sender);
    end;
  end;
end;

procedure TmainForm.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  mx, my: Byte;
  zeile: Byte;
  gespiegeltchar: Char;
begin
  if (x >= 0) and (y >= 0) and (x < PaintBox1.Width) and (y < PaintBox1.Height) then
  begin
    edited := True;
    mausx := trunc(x / extentx);
    mausy := trunc(y / extenty);
    if mausx > matrixX then
      mausX := matrixX;
    if mausy > matrixY then
      mausY := matrixy;
    if editmode then
    begin
      //alte EditCursor Position überschreiben
      PlaceEditorText;
      mRectRefresh(Text_Editor.x, Text_Editor.y, Text_Editor.x, Text_Editor.y);
      Text_Editor.x := mausx;
      Text_Editor.Y := mausY;
      Text_Editor.left := mausx;
    end;
    if rectmode and (button = mbright) then
    begin
      neuzeichnen1Click(Sender);
      ersterRpunkt := True;
    end;
    if ((ILine or Dline or NLine) and (button = mbright)) then
    begin
      //neuzeichnen1Click(sender);
      modeChangeRefresh;
      //mrefresh;
      ersterLpunkt := True;
      zweiterlpunkt := False;
    end;
    if compmode and (button = mbright) then
    begin
      mainForm.srClick(Sender);
      MainForm.PaintBox1MouseMove(MainForm, [], mausx * extentx, mausy * extenty);
    end;
    if button = mbleft then
    begin
      if compmode and (mausx < MatrixX) and (mausy < Matrixy) then
      begin
        if gespiegelt then
          gespiegeltchar := 's'
        else
          gespiegeltchar := 'n';
        comppaint(mausx, mausy, True);
        commandF.memo2.Lines.Add('comp:' + IntToStr(showcomp) + ',' + IntToStr(showori) + ',' +
          IntToStr(mausx) + ',' + IntToStr(mausy) + ',' + gespiegeltchar + ',' + Listbox1.Items[showcomp - 1]); // comp[showcomp,showori,x,y]
        gridrasterrect(mausx, mausy, mausx + compx, mausy + compy);
      end;
      if charmode then
      begin
        matrix[mausx, mausy] := TempChar;
        commandF.memo2.Lines.Add('char:' + IntToStr(tempchar) + ',' + IntToStr(mausx) + ',' + IntToStr(mausy));
      end;
      if textmode and (mausx + length(temptext) < MatrixX) then
      begin
        for mx := mausx to mausx + length(temptext) - 1 do
          matrix[mx, mausy] := Ord(temptext[mx - mausx + 1]);
        commandF.memo2.Lines.Add('text:' + temptext + ',' + IntToStr(mausx) + ',' + IntToStr(mausy));
      end;

      if insertROW then
      begin
        for mx := 0 to matrixx - 1 do
        begin
          for my := matrixY - 1 downto mausy + 1 do
            matrix[mx, my] := matrix[mx, my - 1];
          matrix[mx, mausy] := 0;
        end;
        commandF.memo2.Lines.Add('IROW:' + IntToStr(mausy));
        mrectrefresh(0, mausy, MatrixX - 1, MatrixY - 1);
      end;
      if deleteROW then
      begin
        for mx := 0 to matrixx - 1 do
        begin
          for my := mausy to matrixY - 2 do
            matrix[mx, my] := matrix[mx, my + 1];
          matrix[mx, matrixY - 1] := 0;
        end;
        commandF.memo2.Lines.Add('DROW:' + IntToStr(mausy));
        mrectrefresh(0, mausy, MatrixX - 1, MatrixY - 1);
      end;
      if insertCOL then
      begin
        for my := 0 to matrixY - 1 do
        begin
          for mx := matrixX - 1 downto mausX + 1 do
            matrix[mx, my] := matrix[mx - 1, my];
          matrix[mausx, my] := 0;
        end;
        commandF.memo2.Lines.Add('ICOL:' + IntToStr(mausx));
        mrectrefresh(mausx, 0, MatrixX - 1, MatrixY - 1);
      end;
      if deleteCOL then
      begin
        for my := 0 to matrixY - 1 do
        begin
          for mx := mausX to matrixX - 2 do
            matrix[mx, my] := matrix[mx + 1, my];
          matrix[matrixX - 1, my] := 0;
        end;
        commandF.memo2.Lines.Add('DCOL:' + IntToStr(mausx));
        //mrefresh;
        mrectrefresh(mausx, 0, MatrixX - 1, MatrixY - 1);
      end;
      if insertROW or deleteROW or insertCOL or deleteCOL then
        MainForm.PaintBox1MouseMove(MainForm, [], mausx * extentx, mausy * extenty);
      if MoveMode then
        circuitscan(mausx, mausy, Sender);
      if rectmode then
      begin
        if ersterRPunkt then
        begin
          rectx := mausx;
          recty := mausy;
          ersterRPunkt := False;
        end
        else
        begin
          commandF.memo2.Lines.Add('rect:0,' + IntToStr(rectx) + ',' + IntToStr(recty) + ',' + IntToStr(mausx) + ',' + IntToStr(mausy));
          lrectangle(rectx, recty, mausx, mausy, True);
          ersterRPunkt := True;
        end;
      end;
      if Selectmode then
      begin
        if ersterRPunkt then
        begin
          rectx := mausx;
          recty := mausy;
          ersterRPunkt := False;
        end
        else
        begin
          //rectmode:=false;
          if not selectbox.rect_coord then
          begin
            if (rectx < mausx) then
            begin
              selectbox.Left := rectx;
              selectbox.Right := mausx;
            end
            else
            begin
              selectbox.Left := mausx;
              selectbox.Right := rectx;
            end;
            if (recty < mausy) then
            begin
              selectbox.Top := recty;
              selectbox.Bottom := mausy;
            end
            else
            begin
              selectbox.Top := mausy;
              selectbox.Bottom := recty;
            end;
            selectbox.rect_coord := True;
            selectbox.mode := selectform.showmodal;
            if Selectbox.mode = 4 then
            begin
              mrefresh;
              MainForm.selectBClick(Sender);
            end;
          end
          else
          begin
            Selectbox.TargetX := mausx;
            Selectbox.TargetY := mausy;
            Selectbox.Target_coord := True;
          end;
          proceedselection;
        end;
      end;

      if (Iline or Dline or NLine) then
      begin
        if ersterLPunkt then
        begin
          linex1 := mausx;
          liney1 := mausy;
          ersterLPunkt := False;
        end
        else
        begin
          ersterLPunkt := True;
          zweiterLpunkt := False;
          if Iline then
          begin
            //ILinepaint(linex1,liney1,mausx,mausy,True);
            //weg wegen ilinepaint2
            ILinepaint2(linex1, liney1, mausx, mausy, True);
            commandF.memo2.Lines.Add('MagL:1,' + IntToStr(linex1) + ',' + IntToStr(liney1) + ',' + IntToStr(mausx) + ',' + IntToStr(mausy));
          end;
          if Dline then
          begin
            DLinePaint(linex1, liney1, mausx, mausy, True);
            commandF.memo2.Lines.Add('DirL:0,' + IntToStr(linex1) + ',' + IntToStr(liney1) + ',' + IntToStr(mausx) + ',' + IntToStr(mausy));
          end;
          if NLine then
          begin
            SimpleLinePaint(linex1, liney1, mausx, mausy, NLinechar, True);
            commandF.memo2.Lines.Add('line:' + IntToStr(NLinechar) + ',' + IntToStr(linex1) + ',' + IntToStr(liney1) + ',' + IntToStr(mausx) + ',' + IntToStr(mausy));
          end;
        end;
      end;
      if pastemode and not selectmode then
      begin
        for zeile := 0 to ClipBForm.ClipBMemo.Lines.Count do
        begin
          temptext := ClipBForm.ClipBMemo.Lines[zeile];
          if length(temptext) > 0 then
          begin
            for mx := mausx to mausx + length(temptext) - 1 do
              if (mx < MatrixX) and (mausy + zeile < MatrixY) then
                if not ((selectbox.transparent) and (temptext[mx - mausx + 1] = chr(32))) then
                  matrix[mx, mausy + zeile] := Ord(temptext[mx - mausx + 1]);
            commandF.memo2.Lines.Add('text:' + temptext + ',' + IntToStr(mausx) + ',' + IntToStr(mausy + zeile));
          end;
        end;
      end;
    end;
  end;
end;

function getPickPoints(const puffer: String; var index: Byte; var X, Y, XM, YM: Shortint): Boolean;
  //für den IMPORT von LTSpice
begin
  index := 0;
  while ((puffer[index] <> '>') and (index < 30)) do
    Inc(index);
  if length(puffer) = (index + 9) then
  begin
    X := StrToInt(copy(puffer, index + 1, 2));
    Y := StrToInt(copy(puffer, index + 3, 2));
    XM := StrToInt(copy(puffer, index + 6, 2));
    YM := StrToInt(copy(puffer, index + 8, 2));
    Result := True;
  end
  else
    Result := False;
end;

function CheckEraser(const puffer: String): Boolean;
begin
  Result := ((pos('Eraser', puffer) > 0) or (pos('Viskelوder', puffer) > 0) or (pos('Radierer', puffer) > 0));
end;

procedure LoadIData;
var
  datafile: TextFile;
  filename: shortstring;
  puffer: String;
  index, ml_index: Byte;
begin
  filename := ExtractFilePath(ParamStr(0)) + 'autoline.ini';
  if not FileExists(filename) then
  begin
    ShowMessage('Fehlende Datei im Verzeichnis : ' + chr(13) + 'Missing file path:' + chr(13) + ExtractFilePath(ParamStr(0)) + chr(13) + 'Data for autoline not found...');
  end;
  if FileExists(filename) then
  begin
    fillchar(Idata, sizeof(IData), #0);
    Assignfile(datafile, filename);
    reset(datafile);
    index := 0;
    IDataItemIndex := 0;
    repeat
      readln(datafile, puffer);
      if length(puffer) = 11 then
      begin
        for ml_index := 0 to 8 do
          IData[index].field[ml_index] := Ord(puffer[ml_index + 1]);
        IData[index].s_dir := StrToInt(puffer[10]);
        IData[index].s_char := Ord(puffer[11]);
        Inc(index);
      end;
    until EOF(datafile) or (index = IDataMAXItems);    //maximal Eintrنge
    IDataItemIndex := index;
    closefile(datafile);
  end;
end;

procedure TmainForm.comploadClick(Sender: TObject);
var
  BIB: TextFile;
  filename: shortstring;
  puffer: String;
  x, y: Integer; // Zنhler für Raster
  listindex: Integer;
  compindex, ori, laenge: Byte; //orientation
  CompNameEndIndex, temp: Byte;
  firstPickPoint: Boolean;
begin
  // fillchar(comp,sizeof(comp),#0);
  for listindex := 0 to (PickPointList.Count - 1) do
  begin
    PickPoints := PickPointList.Items[listindex];
    Dispose(PickPoints);
  end;
  Listbox1.Clear;
  filename := ExtractFilePath(ParamStr(0)) + 'component' + IntToStr(sprache) + '.ini';
  if not FileExists(filename) then
  begin
    ShowMessage('Fehlende Datei im Verzeichnis : ' + chr(13) + 'Missing file path:' + chr(13) + ExtractFilePath(ParamStr(0)) + chr(13) + 'Symboldatei nicht gefunden...' + chr(13) + 'Symbolfile component' + IntToStr(sprache) + '.ini not found...' + chr(13) + 'Deutsch als Standard Sprache für Symboldatei geladen...' + chr(13) + 'Language German loaded as default');
    sprache := 1; //deutsch als standard sprache einsetzen;
    filename := ExtractFilePath(ParamStr(0)) + 'component' + IntToStr(sprache) + '.ini';
  end;
  if FileExists(filename) then
  begin
    Assignfile(bib, filename);
    reset(bib);
    compindex := 0;
    repeat
      readln(bib, puffer);
      new(PickPoints);
      for temp := 0 to 3 do
      begin
        PickPoints^[temp].X := 0;
        PickPoints^[temp].Y := 0;
        PickPoints^[temp].XM := 0;
        PickPoints^[temp].YM := 0;
      end;
      firstPickPoint := getPickPoints(puffer, CompNameEndIndex, PickPoints^[0].X, PickPoints^[0].Y, PickPoints^[0].XM, PickPoints^[0].YM);
      //if not FirstPickPoint Then dispose(PickPoints);
      listbox1.Items.Add(copy(puffer, 2, CompNameEndIndex - 2));  //klammern <...> wegschneiden
      //showmessage(copy(puffer,charindex+1,2)+'    lنnge'+inttostr(length(puffer))+'    charindex'+inttostr(charindex));

      if CheckEraser(puffer) then
        eraser := compindex + 1;

      if copy(puffer, 1, 1) = '<' then
      begin
        Inc(compindex);
        y := 0;
        ori := 1;
        repeat
          readln(bib, puffer);
          if copy(puffer, 0, 3) = '<R>' then
          begin
            Inc(ori);
            //if not getPickPoints(puffer,CompNameEndIndex,PickPoints^[ori-1].X,PickPoints^[ori-1].Y)
            // then showmessage('can''t find PickPoint for orientation '+inttostr(ori));
            if firstpickpoint then
              if not getPickPoints(puffer, CompNameEndIndex, PickPoints^[ori - 1].X, PickPoints^[ori - 1].Y, PickPoints^[ori - 1].XM, PickPoints^[ori - 1].YM) then
                ShowMessage('can''t find PickPoint for orientation ' + IntToStr(ori));
            //getPickPoints(puffer,CompNameEndIndex,PickPoints^[ori-1].X,PickPoints^[ori-1].Y)
            y := 0;
          end
          else
          if not (copy(puffer, 0, 3) = '</>') then
          begin
            laenge := length(puffer);
            if laenge > 0 then
              for x := 0 to laenge - 1 do
              begin
                if x >= 8 then
                  break;
                Comp[compindex, ori, x, y] := Ord(puffer[x + 1]);
              end;
            Inc(y);
          end;
        until ((copy(puffer, 0, 3) = '</>') or EOF(bib));
        PickPointList.Add(PickPoints);

      end;
    until EOF(bib);
    closefile(bib);
  end
  else //auch keine deutsch component1.ini gefunden
  begin
    ShowMessage('Fehlende Datei im Verzeichnis : ' + chr(13) + 'Missing file path:' + chr(13) + ExtractFilePath(ParamStr(0)) + chr(13) + 'Symboldatei component1.ini nicht gefunden...' + chr(13) + 'File component1.ini not found...' + chr(13) + 'Programm wird geschlossen. Program terminates.');
    halt;
  end;
  listbox1.ItemIndex := 0; // zeiger auf resistor setzten
  listbox1click(Sender);
end;

function bigger(a, b: Byte): Byte;
begin
  if a > b then
    Result := a
  else
    Result := b;
end;

function smaller(a, b: Byte): Byte;
begin
  if a < b then
    Result := a
  else
    Result := b;
end;

procedure TmainForm.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  refreshbox: TRect;
begin
  mausX := X div extentx;
  mausY := Y div extentY;
  if ((mausx >= 0) and (mausy >= 0) and (mausx < MatrixX) and (mausy < MatrixY)) then
  begin
    sbar.Panels[0].Text := 'x:' + IntToStr(mausx);
    sbar.Panels[1].Text := 'y:' + IntToStr(mausy);

    if mausx < mausxsave then
    begin
      refreshbox.Left := mausx;
      refreshbox.Right := mausxsave + compx;
    end
    else
    begin
      refreshbox.Left := mausxsave;
      refreshbox.Right := mausx + compx;
    end;
    if mausy < mausysave then
    begin
      refreshbox.top := mausy;
      refreshbox.bottom := mausysave + compy;
    end
    else
    begin
      refreshbox.top := mausysave;
      refreshbox.bottom := mausy + compy;
    end;
    // If (mausx>mausxsave+1) or (mausx<mausxsave-1) or (mausy>mausysave+1) or (mausy<mausysave-1)
    //   then gridraster;
    if (mausx <> mausxsave) or (mausy <> mausysave) or (Sender = MainForm) then
    begin
      if compmode then
      begin
        mRectRefresh(mausxsave, mausysave, mausxsave + compx - 1, mausysave + compy - 1);
        comppaint(mausx, mausy, False);
        gridrasterrect(refreshbox.left, refreshbox.top, refreshbox.right, refreshbox.bottom);
      end;
      if charmode then
      begin
        mRectRefresh(mausxsave, mausysave, mausxsave + 1, mausysave + 1);
        paintbox1.Canvas.TextOut(mausx * extentx, mausy * extenty, chr(tempchar));
      end;
      if textmode then
      begin
        mRectrefresh(mausxsave, mausysave, mausxsave + length(temptext), mausysave);
        DrawText(temptext, mausx, mausy);
      end;
      if insertROW or deleteROW then
      begin
        gridrasterrect(0, mausysave, matrixX - 1, mausysave);
        if insertrow then
          paintbox1.Canvas.pen.Color := clgreen
        else
          paintbox1.Canvas.pen.Color := clred;
        paintbox1.Canvas.MoveTo(1, mausy * extenty);
        paintbox1.Canvas.LineTo(matrixx * extentx, mausy * extenty);
        paintbox1.Canvas.MoveTo(1, (mausy + 1) * extenty);
        paintbox1.Canvas.LineTo(matrixx * extentx, (mausy + 1) * extenty);
        paintbox1.Canvas.pen.Color := clblack;
      end;
      if insertCOL or deleteCOL then
      begin
        gridrasterrect(mausXsave, 0, MausxSave, MatrixY - 1);
        if insertCOL then
          paintbox1.Canvas.pen.Color := clgreen
        else
          paintbox1.Canvas.pen.Color := clred;
        paintbox1.Canvas.MoveTo(mausx * extentx, 1);
        paintbox1.Canvas.LineTo(mausX * extentX, matrixY * extentY);
        paintbox1.Canvas.MoveTo((mausX + 1) * extentX, 1);
        paintbox1.Canvas.LineTo((mausX + 1) * extentX, matrixY * extentY);
        paintbox1.Canvas.pen.Color := clblack;
      end;
      if rectmode and (not ersterRpunkt) then
      begin
        // rect überschreiben, jede Seite einzeln
        mboxrefresh;
        lrectangle(rectx, recty, mausx, mausy, False);
        //gridraster;
      end;
      if (selectmode and not ersterRpunkt and not selectbox.rect_coord) then
      begin
        // rect überschreiben, jede Seite einzeln
        mboxrefresh;
        MainForm.paintbox1.Canvas.font.Color := clgreen;
        lrectangle(rectx, recty, mausx, mausy, False);
        MainForm.paintbox1.Canvas.font.Color := clblack;
        //gridraster;
      end;
      if NLine and not ersterlpunkt then
      begin
        mrectrefresh(0, mausysave, matrixX, mausysave);
        mrectrefresh(mausxsave, 0, mausxsave, matrixY);
        mrectrefresh(0, liney1, matrixX, liney1);
        mrectrefresh(linex1, 0, linex1, matrixY);

        SimpleLinePaint(linex1, liney1, mausx, mausy, NLinechar, False);
      end;
      if Iline and not ersterlpunkt then
      begin
        mrectrefresh(0, mausysave, matrixX, mausysave);
        mrectrefresh(mausxsave, 0, mausxsave, matrixY);
        mrectrefresh(0, liney1, matrixX, liney1);
        mrectrefresh(linex1, 0, linex1, matrixY);

        //ilinepaint(linex1,liney1,mausx,mausy,false);
        //weg wegen iline2
        ILinePaint2(linex1, liney1, mausx, mausy, False);
        //gridraster;
      end;
      if Dline and not ersterLpunkt then
      begin
        mrectrefresh(linex1, liney1, mausxsave, mausysave);
        DLinePaint(linex1, liney1, mausx, mausy, False);
      end;
      if pastemode then
      begin
        mrefresh;
        DrawfromClipBMemo(mausx, mausy);
      end;
      if selectmode and selectbox.rect_coord then
      begin
        mrectrefresh(mausxsave, mausysave, mausxsave + selectbox.right - selectbox.left, mausysave + selectbox.bottom - selectbox.top);
        DrawfromClipBMemo(mausx, mausy);
      end;
    end;
    mausxsave := mausx;
    mausysave := mausy;
  end;
end;

function spiegeln(const z: Byte): Byte;
var
  temp: Char;
begin
  temp := chr(z);
  case temp of
    '/': temp := '\';
    '\': temp := '/';
    '<': temp := '>';
    '>': temp := '<';
    '(': temp := ')';
    ')': temp := '(';
  end;
  Result := Ord(temp);
end;

procedure TmainForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if not (ActiveControl.Name = 'textedit') then
  begin
    if (key = 'r') and not editmode then
      MainForm.srClick(Sender);
    if ((key = 's') or (key = 'm')) and not editmode then
      MainForm.ssClick(Sender);
    if editmode and not ((key = #13) or (key = #8)) then
    begin
      if (not Text_Editor.coherent) then
      begin
        Text_Editor.coherent := True;
        Text_Editor.left := Text_Editor.x;
      end;
      Text_Editor.Text := Text_Editor.Text + key;
      matrix[Text_Editor.X, Text_Editor.Y] := Ord(key);
      mrectrefresh(Text_Editor.X, Text_Editor.Y, Text_Editor.X, Text_Editor.Y);
      if Text_Editor.X < Matrixx - 1 then
        Inc(Text_Editor.x);
    end;
    MainForm.PaintBox1MouseMove(MainForm, [], mausx * extentx, mausy * extenty);
  end;
end;


procedure TmainForm.ListBox1Click(Sender: TObject);
var
  x, y: Byte;
begin
  ResetAllModes;
  compmode := True;
  showcomp := listbox1.ItemIndex + 1;
  for x := 0 to compx - 1 do
    for y := 0 to compy - 1 do
      tempcomp[x, y] := Comp[showcomp, showori, x, y];
  gespiegelt := False;
  sbar.Panels[3].Text := '';
end;

procedure SetPaintBox;
begin
  MainForm.paintbox1.Width := matrixx * extentx + 2;
  MainForm.paintbox1.Height := matrixy * extenty + 2;
  MainForm.SB.VertScrollBar.Range := matrixy * extenty + 10;
  MainForm.SB.HorzScrollBar.Range := matrixx * extentx + 10;
end;

procedure TmainForm.FormShow(Sender: TObject);
begin
  ClipBForm.loadDialog.InitialDir := ExtractFilePath(ParamStr(0)) + 'Big_Sym\';
  openAAC.InitialDir := ExtractFilePath(ParamStr(0));
  extentx := paintbox1.Canvas.textextent('H').cx;
  extenty := paintbox1.Canvas.textextent('H').cy;

  SetPaintBox;
  //ListBox1.Height:=Paintbox1.Height; //+commandF.memo2.Height+5; // optisch netter...

  listbox1.ItemIndex := 0;
  ListBox1click(Sender);
  mrefresh;
  if not ((ParamStr(1)) = ('/nolicense')) then
    SPlashF.Showmodal;
end;

procedure TmainForm.CopytoClipClick(Sender: TObject);
var
  x, y, temp, linecountcut, leercount: Byte;
  stringpuffer: String;
  lineempty: Boolean;
begin
  ClipBForm.ClipBMemo.Clear;
  linecountcut := 0;
  for y := 0 to MatrixY - 1 do
  begin
    stringpuffer := '';
    lineempty := True;
    leercount := 0;
    for x := 0 to MatrixX - 1 do
    begin
      temp := matrix[x, y];
      if temp = 0 then
        temp := 32;
      if temp = 32 then
        Inc(leercount)
      else
      begin
        lineempty := False;
        leercount := 0;
      end;
      //paintbox1.Canvas.TextOut(x*extentx,y+extenty,chr(temp));   weiك nicht mehr weshalb...
      stringpuffer := stringpuffer + chr(temp);
    end;
    stringpuffer := copy(stringpuffer, 1, matrixX - leercount);
    if lineempty then
      Inc(linecountcut)
    else
      linecountcut := 0;
    ClipBForm.ClipBMemo.Lines.Add(stringpuffer);
  end;
  // überflüssige Zeilen am Ende abschneiden
  for x := ClipBForm.ClipBMemo.Lines.Count downto ClipBForm.ClipBMemo.Lines.Count - linecountcut do
    ClipBForm.ClipBMemo.Lines.Delete(x);
  ClipBForm.ClipBMemo.Lines.Add('(created by AACircuit ' + version + ' www.tech-chat.de)');
  ClipBForm.ClipBMemo.SelectAll;
  ClipBForm.ClipBMemo.CopyToClipboard;
  ClipBForm.ClipBMemo.SelLength := 0;
end;

procedure TmainForm.FormCreate(Sender: TObject);
var
  BIB: TextFile;
  filename: shortstring;
  puffer: String;
  hauptm: Shortint;
  unterm: Shortint;
  sprachstring: shortstring;
  sprachcount: Byte;
  NewItem: TMenuItem;

begin
  MatrixX := 72; //felder breite
  MatrixY := 36; //felder hِhe
  Screen.Cursors[AdvCursor1] := LoadCursor(HInstance, 'ADVCROSS1');
  Screen.Cursors[AdvCursor2] := LoadCursor(HInstance, 'ADVCROSS2');
  Screen.Cursors[AdvCursor3] := LoadCursor(HInstance, 'ADVCROSS3');
  mainForm.Caption := 'AACircuit ' + version + '                                                                                             by Andreas Weber';
  PickPointList := TList.Create; //für Import ASC
  firstimport := True;
  edited := False;
  showori := 1;
  selectbox.transparent := True;
  showcomp := 1;
  Text_Editor.X := 0;
  Text_Editor.Y := 0;
  Text_Editor.left := 0;
  LoadIData;
  filename := ExtractFilePath(ParamStr(0)) + 'menu.ini';
  if not FileExists(filename) then
  begin
    ShowMessage('Fehlende Datei im Verzeichnis : ' + chr(13) + 'Missing file path:' + chr(13) + ExtractFilePath(ParamStr(0)) + chr(13) + 'Menüdatei menu.ini nicht gefunden...' + chr(13) + 'File menu.ini not found...' + chr(13) + 'Programm wird geschlossen. Program terminates.');
    halt;
  end
  else
  begin
    Assignfile(bib, filename);
    reset(bib);
    readln(bib, puffer);
    sprache := StrToInt(copy(puffer, 10, 1));
    sprachcount := 0;
    repeat
      if copy(puffer, 3, 1) = '=' then
      begin
        sprachstring := (copy(puffer, 4, length(puffer) - 4));
        //showmessage(sprachstring);
        //     mainmenu1.items[3].Items[sprachcount].caption:=sprachstring;
        Inc(sprachcount);
        NewItem := TMenuItem.Create(Self);
        NewItem.Caption := sprachstring;
        NewItem.OnClick := spracheclick;
        NeWItem.GroupIndex := 1;
        NewItem.RadioItem := True;
        NewItem.Name := 'Sprachmenu' + IntToStr(sprachcount);
        mainmenu1.items[4].Add(NewItem);
      end;
      readln(bib, puffer);
    until EOF(bib);
    mainmenu1.items[4].items[sprache - 1].Checked := True; // aktivierte sprache markieren
    reset(bib);
    repeat
      readln(bib, puffer);
    until (copy(puffer, 1, 3) = '<' + IntToStr(sprache) + '=') or EOF(bib);
    for hauptm := 0 to 3 do
    begin
      readln(bib, puffer);
      mainmenu1.Items[hauptm].Caption := puffer;
      for unterm := 0 to mainmenu1.Items[hauptm].Count - 1 do
      begin
        readln(bib, puffer);
        mainmenu1.items[hauptm].Items[unterm].Caption := puffer;
      end;
    end;
    readln(bib, puffer);
    mainmenu1.items[4].Caption := puffer; //Hauptmenü SPRACHE
    readln(bib, puffer);
    if puffer = '<SpeedButton.hints>' then
    begin
      readln(bib, puffer);
      SpeedButton9.Hint := puffer;
      readln(bib, puffer);
      SpeedButton10.Hint := puffer;
      readln(bib, puffer);
      lb1.Hint := puffer;
      readln(bib, puffer);
      lb2.Hint := puffer;
      readln(bib, puffer);
      lb3.Hint := puffer;
      readln(bib, puffer);
      lb4.Hint := puffer;
      readln(bib, puffer);
      SpeedButton7.Hint := puffer;
      readln(bib, puffer);
      SpeedButton8.Hint := puffer;
      readln(bib, puffer);
      InsertRowB.Hint := puffer;
      readln(bib, puffer);
      DeleteRowB.Hint := puffer;
      readln(bib, puffer);
      InsertColB.Hint := puffer;
      readln(bib, puffer);
      DeleteColB.Hint := puffer;
      readln(bib, puffer);
      MoveB.Hint := puffer;
      readln(bib, puffer);
      BClip.Hint := Puffer;
      readln(bib, puffer);
      pasteclipB.Hint := puffer;
      readln(bib, puffer);
      editmodeB.Hint := puffer;
      readln(bib, puffer);
      LoadPasteb.Hint := puffer;
    end;
    closefile(bib);
  end;
  MainForm.comploadClick(Sender);  //Symbole laden
end;

procedure TmainForm.bcompClick(Sender: TObject);
begin
  SEditForm.Show;
end;

procedure TmainForm.FormPaint(Sender: TObject);
begin
  //MainForm.Canvas.Rectangle(PaintBox1.Left-1,PaintBox1.Top-1,
  //      PaintBox1.Left+1+matrixx*extentx,PaintBox1.Top+1+matrixy*extenty);
end;


procedure TmainForm.TempCharButtonClick(Sender: TObject);
begin
  ResetAllModes;
  // mrefresh;
  charmode := True;
  tempchar := Ord((Sender as TButton).Caption[1]);
end;

procedure TmainForm.Beenden1Click(Sender: TObject);
begin
  Close;
end;

procedure TmainForm.Speichernunter1Click(Sender: TObject);
var
  saveFile: TextFile;
  x, y: Byte;      //spalten und zeilen
  zeile: String;
  temp, leercount: Byte;
begin
  if (savedialog1.Execute) and (not (fileExists(savedialog1.FileName)) or
    (Application.MessageBox(PChar('Vorhandene Datei überschreiben?' + chr(13) + 'Overwrite existing file?'), 'File already exists!', 4 + 16 + mb_DefButton2) = idYes)) then
  begin
    Assignfile(saveFile, savedialog1.FileName);
    rewrite(saveFile);
    for y := 0 to matrixY - 1 do
    begin
      zeile := '';
      leercount := 0;
      for x := 0 to matrixX - 1 do
      begin
        temp := matrix[x, y];
        if temp = 0 then
          temp := 32;
        if temp = 32 then
          Inc(leercount)
        else
          leercount := 0;
        zeile := zeile + chr(temp);
      end;
      zeile := copy(zeile, 1, matrixX - leercount);
      Writeln(saveFile, zeile);
    end;
    zeile := '(created by AACircuit ' + version + ' www.tech-chat.de)';
    Writeln(saveFile, zeile);
    closefile(SaveFile);
    edited := False;
  end;
end;

procedure TmainForm.Neu1Click(Sender: TObject);
begin
  if (Application.MessageBox(PChar('Wirklich ALLES lِschen?' + chr(13) + 'Delete ALL?'), 'Vorsicht!', 4 + 16 + mb_DefButton2) = idYes) then
  begin
    fillchar(matrix, sizeof(matrix), #0);
    commandF.memo2.Clear;
    mrefresh;
  end;
end;

procedure TmainForm.ffnen1Click(Sender: TObject);
begin
  ClipBForm.ShowModal;
  if clipbform.ModalResult = mrYes then
  begin
    fillchar(matrix, sizeof(matrix), #0);
    commandF.memo2.Clear;
    edited := False;
    ResetALLModes;
    pastemode := True;
    MainForm.PaintBox1MouseMove(MainForm, [], 1, 1);
    MainForm.PaintBox1MouseDown(Sender, mbleft, [], 1, 1);
    MainForm.ListBox1Click(Sender);
  end;
end;

procedure TmainForm.srClick(Sender: TObject);
var
  x, y: Byte;
begin
  gespiegelt := False;
  sbar.Panels[3].Text := '';

  Inc(showori);
  if showori = 5 then
    showori := 1;
  for x := 0 to compx - 1 do
    for y := 0 to compy - 1 do
      tempcomp[x, y] := Comp[showcomp, showori, x, y];
  if sprache = 1 then
    SBar.Panels[2].Text := 'Ausrichtung:' + IntToStr((showori - 1) * 90)
  else
    SBar.Panels[2].Text := 'Orientation:' + IntToStr((showori - 1) * 90);
end;

procedure TmainForm.ssClick(Sender: TObject);
var
  x, y, mitte: Byte;
  temp: Byte;
begin
  mitte := trunc(compx / 2);
  for y := 0 to compy - 1 do
  begin
    for x := 0 to mitte - 1 do
    begin
      temp := spiegeln(tempcomp[x, y]);
      tempcomp[x, y] := spiegeln(tempcomp[compx - 1 - x, y]);
      tempcomp[compx - 1 - x, y] := temp;
    end;
    tempcomp[mitte, y] := spiegeln(tempcomp[mitte, y]);
  end;
  gespiegelt := not gespiegelt;
  if gespiegelt then
  begin
    if sprache = 1 then
      sbar.Panels[3].Text := 'Symbol vertikal gespiegelt'
    else
      sbar.Panels[3].Text := 'Mirrored';
  end
  else
    sbar.Panels[3].Text := '';

end;

procedure TmainForm.lb1Click(Sender: TObject);
begin
  ResetAllModes;
  if Sender = lb1 then
    NLinechar := 0;
  if Sender = lb2 then
    NLinechar := 111;
  if Sender = lb3 then
    NLinechar := 43;
  if Sender = lb4 then
    NLinechar := 39;
  NLine := True;
  ersterLpunkt := True;
  ersterRpunkt := True;
end;

procedure TmainForm.InsertRowBClick(Sender: TObject);
begin
  ResetAllModes;
  insertROW := True;
end;

procedure TmainForm.InsertColBClick(Sender: TObject);
begin
  ResetAllModes;
  insertCOL := True;
end;

procedure TmainForm.DeleteRowBClick(Sender: TObject);
begin
  ResetAllModes;
  deleteROW := True;
end;

procedure TmainForm.DeleteColBClick(Sender: TObject);
begin
  ResetAllModes;
  deleteCOL := True;
end;

procedure TmainForm.UnDo1Click(Sender: TObject);
begin
  commandF.memo2.Lines.Delete(commandF.memo2.Lines.Count - 1);
  neuzeichnen1Click(Sender);
end;

procedure TmainForm.neuzeichnen1Click(Sender: TObject);
var
  Line: Word;
  mx, my, mx2, my2, x, y, scan, memocomp, memoori, stemp: Byte;
  memoline, mindex, mText: shortString;
  gespiegeltchar: Char;
  smitte: Byte;
begin
  //testweise weggemacht wegen load ASCII
  fillchar(matrix, sizeof(matrix), #0);
  if commandF.memo2.Lines.Count > 0 then
    for line := 0 to commandF.memo2.Lines.Count - 1 do
    begin
      memoline := commandF.memo2.Lines[line];
      mindex := copy(memoline, 1, 4);

      if mindex = 'comp' then
      begin
        getcompdata(memoline, memocomp, memoori, mx, my, gespiegeltchar);
        if (mx < MatrixX) and (my < MatrixY) then
        begin
          if gespiegeltchar = 's' then //symbol wurde gespiegelt
          begin
            smitte := trunc(compx / 2);
            for y := 0 to compy - 1 do
            begin
              for x := 0 to smitte - 1 do
              begin
                stemp := spiegeln(Comp[memocomp, memoori, compx - 1 - x, y]);
                if stemp > 0 then
                  matrix[mx + x, my + y] := stemp;
                stemp := spiegeln(Comp[memocomp, memoori, x, y]);
                if stemp > 0 then
                  matrix[mx + compx - 1 - x, my + y] := stemp;
              end;
              stemp := spiegeln(Comp[memocomp, memoori, smitte, y]);
              if stemp > 0 then
                matrix[mx + smitte, my + y] := stemp;
            end;
          end;
          if gespiegeltchar = 'n' then
          begin
            for x := 0 to compx - 1 do
              for y := 0 to compy - 1 do
                if (Comp[memocomp, memoori, x, y] > 0) and (mx + x < MatrixX) and (my + y < MatrixY) then
                  matrix[mx + x, my + y] := Comp[memocomp, memoori, x, y];
          end;
        end;
      end;
      if mindex = 'text' then
      begin
        gettextdata(memoline, mtext, mx, my);
        if my < MatrixY then
          for x := 0 to length(mtext) - 1 do
            if mx + x < MatrixX then
              matrix[mx + x, my] := Ord(mtext[x + 1]);
      end;
      if mindex = 'char' then
      begin
        getchardata(memoline, memocomp, mx, my);
        if (mx < MatrixX) and (my < MatrixY) then
          matrix[mx, my] := Ord(memocomp);
      end;
      if mindex = 'IROW' then
      begin
        scan := 6;
        while (memoline[scan] <> ',') and (scan <= length(memoline)) do
          Inc(scan);
        mausy := StrToInt(copy(memoline, 6, scan - 6));
        for mx := 0 to matrixx - 1 do
        begin
          for my := matrixY - 1 downto mausy + 1 do
            matrix[mx, my] := matrix[mx, my - 1];
          matrix[mx, mausy] := 0;
        end;
      end;
      if mindex = 'DROW' then
      begin
        scan := 6;
        while (memoline[scan] <> ',') and (scan <= length(memoline)) do
          Inc(scan);
        mausy := StrToInt(copy(memoline, 6, scan - 6));
        for mx := 0 to matrixx - 1 do
        begin
          for my := mausy to matrixY - 2 do
            matrix[mx, my] := matrix[mx, my + 1];
          matrix[mx, matrixY - 1] := 0;
        end;
      end;
      if mindex = 'ICOL' then
      begin
        scan := 6;
        while (memoline[scan] <> ',') and (scan <= length(memoline)) do
          Inc(scan);
        mausx := StrToInt(copy(memoline, 6, scan - 6));
        for my := 0 to matrixY - 1 do
        begin
          for mx := matrixX - 1 downto mausX + 1 do
            matrix[mx, my] := matrix[mx - 1, my];
          matrix[mausx, my] := 0;
        end;
      end;
      if mindex = 'DCOL' then
      begin
        scan := 6;
        while (memoline[scan] <> ',') and (scan <= length(memoline)) do
          Inc(scan);
        mausx := StrToInt(copy(memoline, 6, scan - 6));
        for my := 0 to matrixY - 1 do
        begin
          for mx := mausX to matrixX - 2 do
            matrix[mx, my] := matrix[mx + 1, my];
          matrix[matrixX - 1, my] := 0;
        end;
      end;
      if mindex = 'rect' then
      begin
        getlinedata(memoline, memocomp, mx, my, mx2, my2);
        lrectangle(mx, my, mx2, my2, True);
      end;
      if mindex = 'line' then
      begin
        getlinedata(memoline, memocomp, mx, my, mx2, my2);
        SimpleLinePaint(mx, my, mx2, my2, memocomp, True);
      end;
      if mindex = 'MagL' then
      begin
        getlinedata(memoline, memocomp, mx, my, mx2, my2);
        if memocomp = 0 then
          ILinePaint(mx, my, mx2, my2, True)
        else
          ILinepaint2(mx, my, mx2, my2, True);
        //ILinepaint(mx,my,mx2,my2,true);
        // komm. wegen iline2
      end;
      if mindex = 'DirL' then
      begin
        getlinedata(memoline, memocomp, mx, my, mx2, my2);
        DLinePaint(mx, my, mx2, my2, True);
      end;
    end;
  mrefresh;
end;

procedure TmainForm.Circuitspeichernunter1Click(Sender: TObject);
var
  saveFile: TextFile;
  sline: Byte;      //Memo Zeile
begin
  if (SaveAAC.Execute) and (not (fileExists(SaveAAC.FileName)) or
    (Application.MessageBox(PChar('Vorhandene Datei überschreiben?' + chr(13) + 'Overwrite existing file?'), 'File already exists!', 4 + 16 + mb_DefButton2) = idYes)) then
  begin
    OpenAAC.InitialDir := ExtractFilePath(SaveAAC.FileName);
    Assignfile(saveFile, SaveAAC.FileName);
    rewrite(saveFile);
    for sline := 0 to commandF.memo2.Lines.Count - 1 do
      Writeln(saveFile, commandF.memo2.Lines[sline]);
    closefile(SaveFile);
    edited := False;
  end;
end;

procedure TmainForm.Circuitffnen1Click(Sender: TObject);
begin
  if OpenAAC.Execute then
  begin
    edited := False;
    commandF.memo2.Lines.LoadFromFile(OpenAAC.FileName);
    SaveAAC.FileName := OpenAAC.FileName;
  end;
  neuzeichnen1Click(Sender);
  PaintBox1MouseMove(Sender, [], 10, 10);
end;

procedure TmainForm.moveBClick(Sender: TObject);
begin
  if compmode then
    mrectrefresh(mausxsave, mausysave, mausxsave + compx, mausysave + compy);
  ResetAllModes;
  movemode := True;
end;

procedure TmainForm.SpeedButton7Click(Sender: TObject);
begin
  ResetAllModes;
  ersterLpunkt := True;
  rectmode := True;
  ersterRPunkt := True;
end;

procedure TmainForm.SpeedButton8Click(Sender: TObject);
begin
  ResetAllModes;
  ersterLpunkt := True;
  ersterRpunkt := True;
  ILine := True;
end;

procedure TmainForm.PaintBox1Paint(Sender: TObject);
begin
  mrefresh;
end;

procedure TmainForm.e1Click(Sender: TObject);
var
  x, y: Byte;
begin
  ResetAllModes;
  compmode := True;
  ListBox1.ItemIndex := eraser - 1;
  if Sender = e1 then
    showori := 1;
  if Sender = e2 then
    showori := 2;
  if Sender = e3 then
    showori := 3;
  if Sender = e4 then
    showori := 4;
  showcomp := eraser;
  for x := 0 to compx - 1 do
    for y := 0 to compy - 1 do
      tempcomp[x, y] := Comp[eraser, showori, x, y];
  gespiegelt := False;
  sbar.Panels[3].Text := '';
end;

procedure TmainForm.spracheclick(Sender: TObject);
var
  sprachindex: Byte;
  quelle: Textfile;
  ziel: Textfile;
  puffer: String;
  filename: shortstring;
  zeile: Byte;
begin
  sprachindex := StrToInt(copy((Sender as Tmenuitem).Name, 11, 1));
  mainForm.mainmenu1.items[4].items[sprachindex - 1].Checked := True;
  filename := ExtractFilePath(ParamStr(0)) + 'menu.ini';
  if not FileExists(filename) then
  begin
    ShowMessage('Fehlende Datei im Verzeichnis : ' + chr(13) + 'Missing file path:' + chr(13) + ExtractFilePath(ParamStr(0)) + chr(13) + 'Menüdatei menu.ini nicht gefunden...' + chr(13) + 'File menu.ini not found...' + chr(13) + 'Programm wird geschlossen. Program terminates.');
    halt;
  end
  else
  begin
    zeile := 0;
    DeleteFile(copy(filename, 1, length(filename) - 4) + '.bak');
    RenameFile(filename, copy(filename, 1, length(filename) - 4) + '.bak');
    //rename(quelle,copy(filename,1,length(filename)-4)+'.bak');
    Assignfile(quelle, copy(filename, 1, length(filename) - 4) + '.bak');
    reset(quelle);
    Assignfile(ziel, filename);
    rewrite(ziel);
    repeat
      Inc(zeile);
      readln(quelle, puffer);
      if zeile = 1 then
        puffer := 'language=' + IntToStr(sprachindex);
      writeln(ziel, puffer);
    until EOF(quelle);
    closefile(quelle);
    closefile(ziel);
  end;
  ShowMessage('Programm neu starten um ؤnderungen zu aktivieren!' + chr(13) + 'Please restart program to apply changes');
end;

procedure TmainForm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key = 46) and not Editmode then // Entf
  begin
    modeChangeRefresh;
    MoveBclick(Sender);
  end;
  if editmode then
  begin
    if (KEY = VK_UP) or (KEY = VK_down) or (KEY = VK_left) or (KEY = VK_right) or (key = 8) or (key = 13) then
    begin
      if key = 8 then
        Text_Editor.Text := Copy(Text_Editor.Text, 0, Length(Text_Editor.Text) - 1)
      else
        PlaceEditorText;
      //Alte Cursorposition lِschen
      mrectrefresh(Text_Editor.X, Text_Editor.Y, Text_Editor.X, Text_Editor.Y);
      blink.Enabled := False;
    end;
    if (key = VK_UP) and (Text_Editor.y > 0) then
      Dec(Text_Editor.y);
    if (key = VK_down) and (Text_Editor.y < matrixy - 1) then
      Inc(Text_Editor.y);
    if (key = VK_right) and (Text_Editor.x < matrixx - 1) then
      Inc(Text_Editor.x);
    if ((key = VK_left) or (key = 8)) and (Text_Editor.x > 0) then
      Dec(Text_Editor.x);
    if key = 8 then  //backspace
      matrix[Text_Editor.X, Text_Editor.Y] := 32;
    if (key = 13) and (Text_Editor.y < matrixy - 1) then   //Return
    begin
      Inc(Text_Editor.y);
      Text_Editor.X := Text_Editor.left;
    end;
    drawcursor;
    key := 0;
  end;
end;

procedure TmainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if edited then
    canclose := (Application.MessageBox(PChar('Wirklich beenden?' + chr(13) + 'Close program?'), 'AAcircuit ' + version, 4 + 32 + mb_DefButton2) = idYes);
end;

procedure TmainForm.Drucken1Click(Sender: TObject);
var
  x, y, leercount, temp: Byte;
  zeile: shortstring;
  //hdpi,vdpi:Integer;
const
  oRand = 100;
  lRand = 200;
begin
  if PrintDialog1.Execute then
  begin
    Printer.Orientation := poPortrait;
    Printer.Title := 'AACircuit ' + version;
    Printer.BeginDoc;
    //Printer.Canvas.font.Name:='Courier New';
    //Printer.Canvas.Font.Size:=10;
    Printer.Canvas.Font := FontDialog1.Font;
    zeile := FormatDateTime('dddd, mmmm d, yyyy, hh:mm AM/PM ', now) + SaveAAC.FileName;
    Printer.Canvas.TextOut(lRand, 50, zeile);
    for y := 0 to matrixY - 1 do
    begin
      zeile := '';
      leercount := 0;
      for x := 0 to matrixX - 1 do
      begin
        temp := matrix[x, y];
        if temp = 0 then
          temp := 32;
        if temp = 32 then
          Inc(leercount)
        else
          leercount := 0;
        zeile := zeile + chr(temp);
      end;
      zeile := copy(zeile, 1, matrixX - leercount);
      Printer.Canvas.TextOut(lRand, y * (Abs(Printer.Canvas.font.Height) + 10) + oRand, zeile);
    end;
    Printer.EndDoc;
  end;
end;

procedure TmainForm.BlinkTimer(Sender: TObject);
begin
  if editmode then
  begin
    if Text_Editor.blink then
      drawcursor
    else
      mrectrefresh(Text_Editor.X, Text_Editor.Y, Text_Editor.X, Text_Editor.Y);
    Text_Editor.blink := not Text_Editor.blink;
  end;
end;

procedure TmainForm.editModeBClick(Sender: TObject);
begin
  //ToDo Refresh mit Raster nachschauen
  Listbox1.SetFocus;
  ResetALLModes;
  Editmode := True;
  blink.Enabled := True;
  Text_Editor.Text := '';
  Text_Editor.coherent := False;
end;

procedure TmainForm.TextmodeBClick(Sender: TObject);
begin
  ResetAllModes;
  textmode := True;
  tempText := textedit.Text;
end;

procedure TmainForm.pasteclipBClick(Sender: TObject);
begin
  ResetALLModes;
  pastemode := True;
  ClipBForm.ClipBMemo.Clear;
  ClipBForm.ClipBMemo.PasteFromClipboard;
end;

procedure TmainForm.CommandsExpertsonly1Click(Sender: TObject);
begin
  commandf.Show;
end;

procedure TmainForm.loadpasteBClick(Sender: TObject);
begin
  clipbform.showmodal;
  if clipbform.ModalResult = mrYes then
  begin
    ResetALLModes;
    pastemode := True;
  end;
end;

procedure TmainForm.Druckereinstellungen1Click(Sender: TObject);
begin
  fontdialog1.Execute;
end;

procedure TmainForm.selectBClick(Sender: TObject);
begin
  //ToDo selectbox.transparecy richtig verarbeiten
  //Buttons wurden entfernt
  ResetAllModes;
  ClipBForm.ClipBMemo.Clear;
  Selectmode := True;
  ersterLpunkt := True;
  ersterRPunkt := True;
end;

function LoadASC(const filename: String): Boolean;
var
  ascfile: Textfile;
  puffer: String;
  compname, flagtext: shortstring;
  ori: Byte;
  x, y, x2, y2, xmin, xmax, ymin, ymax, temp: Integer;
  firstcomp: Boolean;
  mirrored: Boolean;
  mirror_char: Char;
  symbol_Name_Value: TPoint;
begin
  //neues Verfahren, zuerst alle Symbole/LAbels/Text usw, dann erst wires
  Result := False;
  if FileExists(filename) then
  begin
    Result := True;
    fillchar(matrix, sizeof(matrix), #0);
    commandF.memo2.Clear;
    mrefresh;
    firstcomp := True;
    xmin := 0;
    xmax := 0;
    ymin := 0;
    ymax := 0;
    Assignfile(ascfile, filename);
    reset(ascfile);
    repeat
      readln(ascfile, puffer);
      getASCsymbol(puffer, compname, x, y, ori, mirrored);
      x2 := x;
      y2 := y;
      getASCWire(puffer, x, y, x2, y2);
      getASCFlag(puffer, flagtext, x, y);
      if firstcomp and ((Copy(puffer, 0, 6) = 'SYMBOL') or (Copy(puffer, 0, 4) = 'WIRE')) then
      begin
        xmin := x;
        xmax := x;
        ymin := y;
        ymax := y;
        firstcomp := False;
      end;
      if x < xmin then
        xmin := x;
      if x2 < xmin then
        xmin := x2;
      if x > xmax then
        xmax := x;
      if x2 > xmaX then
        xmax := x2;
      if y < ymin then
        ymin := y;
      if y2 < ymin then
        ymin := y2;
      if y > ymax then
        ymax := y;
      if y2 > ymax then
        ymax := y2;
    until EOF(ascfile);
    xmin := xmin - 6;
    ymin := ymin - 1; //kleiner Rand
    //erst die wires zeichnen
    reset(ascfile);
    repeat
      readln(ascfile, puffer);
      if (getASCWire(puffer, x, y, x2, y2)) then
      begin
        x := (x - xmin);
        y := (y - ymin);
        x2 := (x2 - xmin);
        y2 := (y2 - ymin);
        if ((x >= 0) and (y >= 0) and (x2 >= 0) and (y2 >= 0)) then
          if (x = x2) or (y = y2) then  //waagerechte oder senkrechte Linie
            commandF.memo2.Lines.Add('line:0,' + IntToStr(x) + ',' + IntToStr(y) + ',' + IntToStr(x2) + ',' + IntToStr(y2))
          //commandF.memo2.Lines.Add('MagL:1,'+inttostr(x)+','+inttostr(y)+','+inttostr(x2)+','+inttostr(y2))
          else //schrنge Linie
            commandF.memo2.Lines.Add('DirL:0,' + IntToStr(x) + ',' + IntToStr(y) + ',' + IntToStr(x2) + ',' + IntToStr(y2));
      end;
    until EOF(ascfile);
    reset(ascfile);
    repeat
      readln(ascfile, puffer);
      if getASCsymbol(puffer, compname, x, y, ori, mirrored) then
      begin
        //showmessage('imported '+inttostr(x)+'   '+inttostr(y)+' ori:'+inttostr(ori));
        temp := FindCompByName(compname);
        if temp >= 0 then
        begin
          PickPoints := PickPointList.Items[temp - 1];

          if mirrored then
          begin
            mirror_char := 's';
            x := x - xmin - PickPoints^[ori - 1].XM - CompX;
            y := y - ymin - PickPoints^[ori - 1].YM;
            symbol_Name_Value.x := x + compX;
            symbol_Name_Value.y := y + 1;
          end
          else
          begin
            mirror_char := 'n';
            x := x - xmin - PickPoints^[ori - 1].X;
            y := y - ymin - PickPoints^[ori - 1].Y;
            symbol_Name_Value.x := x + 4;
            symbol_Name_Value.y := y + 1;
          end;
          if ((x >= 0) and (y >= 0)) then
            commandF.memo2.Lines.Add('comp:' + IntToStr(temp) + ',' + IntToStr(ori) + ',' +
              IntToStr(x) + ',' + IntToStr(y) + ',' + mirror_char + ',' + MainForm.Listbox1.Items[temp - 1]);
        end;
      end;
      if getASCFlag(puffer, flagtext, x, y) then
      begin
        x := x - xmin;
        y := y - ymin;
        if ((x >= 0) and (y >= 0)) then
          commandF.memo2.Lines.Add('text:' + flagtext + ',' + IntToStr(x) + ',' + IntToStr(y));
      end;
      if getASCText(puffer, flagtext, x, y) then
      begin
        x := x - xmin;
        y := y - ymin;
        if ((x >= 0) and (y >= 0)) then
          commandF.memo2.Lines.Add('text:' + flagtext + ',' + IntToStr(x) + ',' + IntToStr(y));
      end;
      if getASCInstName(puffer, flagtext) then
        if (symbol_Name_Value.x >= 0) and (symbol_Name_Value.y >= 0) then
          commandF.memo2.Lines.Add('text:' + flagtext + ',' + IntToStr(symbol_Name_Value.x) + ',' + IntToStr(symbol_Name_Value.y));
      if getASCValue(puffer, flagtext) then
        if (symbol_Name_Value.x >= 0) and (symbol_Name_Value.y >= 0) then
          commandF.memo2.Lines.Add('text:' + flagtext + ',' + IntToStr(symbol_Name_Value.x) + ',' + IntToStr(symbol_Name_Value.y + 1));
    until EOF(ascfile);
    closefile(ascfile);
  end;
end;

procedure TmainForm.IMPORTascLTSpice1Click(Sender: TObject);
begin
  if firstimport then
  begin
    ShowMessage('This feature is new and not completed.' + chr(13) + 'AACircuit looks up for a corresponding substring in the' + chr(13) + 'component.ini symbol header. If the Symbol appears shifted,' + chr(13) + 'you can edit the "pickpoints" in the symbol editor and check the' + chr(13) + 'result with "reload ASC".');
    firstimport := False;
  end;
  if (openasc.Execute) and (LoadASC(openasc.filename)) then
    MainForm.neuzeichnen1Click(Sender);
end;

procedure TmainForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  listindex: Integer;
begin
  for listindex := 0 to (PickPointList.Count - 1) do
  begin
    PickPoints := PickPointList.Items[listindex];
    Dispose(PickPoints);
  end;
end;

procedure TmainForm.ListBox1KeyPress(Sender: TObject; var Key: Char);
begin
  //keine eingabe an die listbox
  key := chr(0);
end;

procedure TmainForm.SpeedButton1Click(Sender: TObject);
begin
  ResetAllModes;
  ersterLpunkt := True;
  ersterRpunkt := True;
  DLine := True;
end;

procedure TmainForm.SpeedButton6Click(Sender: TObject);
begin
  PaintBox1.Cursor := AdvCursor2;
end;

procedure TmainForm.SpeedButton5Click(Sender: TObject);
begin
  PaintBox1.Cursor := AdvCursor1;
end;

procedure TmainForm.SpeedButton4Click(Sender: TObject);
begin
  PaintBox1.Cursor := crcross;
end;

procedure TmainForm.SpeedButton11Click(Sender: TObject);
begin
  PaintBox1.Cursor := AdvCursor3;
end;

procedure TmainForm.AutoLineconfigurieren1Click(Sender: TObject);
begin
  maglineF.showmodal;
end;

procedure TmainForm.Help1Click(Sender: TObject);
begin
  // Application.HelpCommand(HELP_INDEX,0)
end;

procedure TmainForm.licenceandcredits1Click(Sender: TObject);
begin
  splashF.showmodal;
end;

procedure TmainForm.visitHomepage1Click(Sender: TObject);
begin
  OpenURL(PChar('http://www.tech-chat.de')); { *Converted from ShellExecute* }
end;

procedure TMainForm.CMMouseEnter(var Message: TMessage);
begin
  inherited;
end;

procedure TMainForm.CMMouseLeave(var Message: TMessage);
begin
  inherited;
  if TObject(Message.LParam) = SB then
    ModeChangeRefresh;
end;

procedure TmainForm.size1Click(Sender: TObject);
begin
  size1.Checked := True;
  MatrixX := 72; //felder breite
  MatrixY := 36; //felder hِhe
  SetPaintBox;
end;

procedure TmainForm.size2Click(Sender: TObject);
begin
  size2.Checked := True;
  MatrixX := 72; //felder breite
  MatrixY := 49; //felder hِhe
  SetPaintBox;
end;

procedure TmainForm.size4Click(Sender: TObject);
begin
  size3.Checked := True;
  MatrixX := 200; //felder breite
  MatrixY := 70; //felder hِhe
  SetPaintBox;
end;

procedure TmainForm.size3Click(Sender: TObject);
begin
  size3.Checked := True;
  MatrixX := 100; //felder breite
  MatrixY := 49; //felder hِhe
  SetPaintBox;
end;

end.

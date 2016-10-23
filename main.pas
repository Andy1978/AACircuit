unit main;

interface


uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls,INIFiles, Buttons,math, Menus, ComCtrls,Printers,WinSpool,ShellApi;

function LoadASC(const filename:string):boolean;

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
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure comploadClick(sender: TObject);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
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
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
  Top:byte;
  Left:byte;
  Right:byte;
  Bottom:byte;
  rect_coord:boolean;
  targetX:byte;
  targetY:byte;
  target_coord:boolean;
  transparent:boolean;
  mode:byte;  //1=move, 2=copy 3=delete;
 end;
 TText_edit =record
  x,y,left:byte;
  blink:boolean;
  text:shortstring;
  coherent:boolean;
 end;
 TIdata = record
  field:array[0..9] of byte;
  s_dir:shortint;  //0=horizontal 1=vertikal
  s_char:byte;
 end;
 TPPoint = record
  X: shortint;  Y: shortint;  XM:shortint;  YM:shortint; end;
 PPickpoint=^TPickpoint;
 TPickPoint=array[0..3] of TPPoint;
var
  IData: array[0..19] of TIData; //ILine(magline) Data
  IDataItemIndex:byte;
  PickPointList:TList;
  PickPoints:PPickpoint;
  mainForm: TmainForm;
  Text_Editor:TText_edit;
  matrix:array[0..199,0..69]of byte; //damit bei ILine nicht Bereichsüberschreitung
  comp:array[1..60,1..4,0..8,0..5] of byte;
  tempcomp:array[0..8,0..5] of byte;
  tempchar:byte;
  mausx,mausy:byte;
  showori,showcomp,extentx,extenty:byte;
  NLine,ersterLPunkt,zweiterLPunkt,charmode,
  textmode,compmode,movemode,rectmode,ersterRPunkt,Iline,DLine,editmode,pastemode,selectmode:boolean;
  linex1,linex2,liney1,liney2,rectx,recty:byte;
  temptext:string;
  insertCol,insertROW,deleteCOL,deleteROW:boolean;
  mausxsave,mausysave,eraser,sprache,NLinechar:byte;
  edited,FirstImport,gespiegelt:boolean;
  selectbox:Tselectbox;
  MatrixX,MatrixY:Byte;
const
 IDataMAXItems=20; //maximal 20 Einträge siehe auch array oben
 AdvCursor1=1; AdvCursor2=2; AdvCursor3=3;
 compx=9;
 compy=6;
 version='v1.28.7 beta 10/23/16';
implementation

uses component, scanmemo, line, command, ClipBFormUnit, selection, splash,
  magline,importASC;

{$R *.DFM}
{$R cursors.RES}

procedure gridrasterRECT(x1,y1,x2,y2:integer);
var
 x,y:byte;
Begin
     if x1<0 then x1:=0;
     if y1<0 then y1:=0;
     inc(x2); inc(y2);
     if x2>MatrixX then x2:=MatrixX;
     if y2>MatrixY then y2:=MatrixY;
     MainForm.paintbox1.Canvas.pen.Color:=clsilver;  //Raster clwhite
     for x:=x1 to x2 do     //vertikale Linien
      Begin
       MainForm.paintbox1.Canvas.MoveTo(x*extentx,y1*extenty);
       MainForm.paintbox1.Canvas.LineTo(x*extentx,y2*extenty);
      End;
     for y:=y1 to y2 do     //horizontale Linien
      Begin
       MainForm.paintbox1.Canvas.MoveTo(x1*extentx,y*extenty);
       MainForm.paintbox1.Canvas.LineTo(x2*extentx,y*extenty);
      End;
        //schwarze Ränder nachzeichnen
   MainForm.Paintbox1.Canvas.pen.Color:=clblack;
   If x1=0 Then
    Begin
     MainForm.Paintbox1.Canvas.MoveTo(0,y1*extenty);
     MainForm.Paintbox1.Canvas.LineTo(0,(y2+1)*extenty);
    End;
   If y1=0 Then
    Begin
     MainForm.Paintbox1.Canvas.MoveTo(x1*extentx,0);
     MainForm.Paintbox1.Canvas.LineTo((x2+1)*extentx,0);
    End;
   If x2>=MatrixX Then
    Begin
     MainForm.Paintbox1.Canvas.MoveTo(MatrixX*extentx+1,y1*extenty);
     MainForm.Paintbox1.Canvas.LineTo(MatrixX*extentx+1,(y2+1)*extenty);
    End;
   If y2>=MatrixY Then
    Begin
     MainForm.Paintbox1.Canvas.MoveTo(x1*extentx,MatrixY*extenty+1);
     MainForm.Paintbox1.Canvas.LineTo((x2+1)*extentx,MatrixY*extenty+1);
    End;
End;
procedure gridraster;
Begin gridrasterrect(0,0,matrixX-1,matrixY-1); End;

Procedure mRectRefresh(x1,y1,x2,y2:Smallint);
var
 x,y,temp:byte;
Begin
  IF x1<0 Then x1:=0;
  IF x1>=MatrixX Then x1:=MatrixX-1;
  IF y1<0 Then y1:=0;
  IF y1>=MatrixY Then y1:=MatrixY-1;
  IF x2<0 Then x2:=0;
  IF x2>=MatrixX Then x2:=MatrixX-1;
  IF y2<0 Then y2:=0;
  IF y2>=MatrixY Then y2:=MatrixY-1;
  If x1>x2 then
   Begin temp:=x1; x1:=x2; x2:=temp; End;
  If y1>y2 then
   Begin temp:=y1; y1:=y2; y2:=temp; End;
//  MainForm.paintbox1.Canvas.FillRect(Rect(x1*extentx+1,y1*extenty+1,(x2+1)*extentx-1,(y2+1)*extenty-1)) ;
  for x:=x1 to x2 do
   for y:=y1 to y2 do
    Begin
     If matrix[x,y]>0 Then
      temp:=matrix[x,y]
     Else temp:=32;
     MainForm.paintbox1.Canvas.TextOut(x*extentx,y*extenty,chr(temp));
    End;
   gridrasterRect(x1,y1,x2,y2);

End;
procedure mrefresh;
Begin
  mRectRefresh(0,0,matrixx-1,matrixy-1) ;
End;
procedure mboxrefresh;
//box wie sie bei rect oder select entsteht überschreiben
Begin
    mrectrefresh(rectx,recty,mausxsave,recty);
    mrectrefresh(rectx,mausysave,mausxsave,mausysave);
    mrectrefresh(rectx,recty,rectx,mausysave);
    mrectrefresh(mausxsave,recty,mausxsave,mausysave);
End;
procedure PlaceEditorText;
Begin
 If Text_Editor.coherent Then
  Begin  //es wurde ein Text eingegeben
   if length(Text_Editor.text)=1 Then  //einzelner Buchstabe
    commandF.memo2.Lines.Add('char:'+inttostr(ord(Text_Editor.text[1]))+','+inttostr(Text_Editor.Left)+','+inttostr(Text_Editor.Y));
   if length(Text_Editor.text)>1 Then  //zusammenhängender Text
    commandF.memo2.Lines.Add('text:'+Text_Editor.text+','+inttostr(Text_Editor.left)+','+inttostr(Text_Editor.y));
   Text_Editor.text:='';
   Text_Editor.coherent:=False;
  End;
End;
procedure modeChangeRefresh;
Begin
 If compmode then mrectrefresh(mausxsave,mausysave,mausxsave+compx,mausysave+compy);
 If (NOT ersterLpunkt) AND (Iline or Dline or NLine) then
  mrectrefresh(linex1,liney1,mausx,mausy);
 If (NOT ersterRpunkt) AND (rectmode or selectmode) then
  mboxrefresh;
 If (InsertRow or deleteRow) Then mrectrefresh(0,mausysave,matrixX,mausysave+1);
 If (InsertCol or deleteCol) Then mrectrefresh(mausXsave,0,mausXsave+1,MatrixY);
 If textmode then mrectrefresh(mausXsave,MausySave,MausxSave+length(MainForm.textedit.text),Mausysave);
 If charmode then mrectrefresh(MausXSave,MausYsave,MausXsave,MausYsave);
 if editmode then PlaceEditorText;
End;
procedure drawcursor;
Begin
 Mainform.paintbox1.canvas.pen.color:=clblue;
 MainForm.paintbox1.Canvas.Rectangle(Text_Editor.x*extentx,Text_Editor.Y*extentY,(Text_Editor.x+1)*extentx,(Text_Editor.Y+1)*extentY);
 Text_Editor.blink:=True;
 MainForm.Blink.Enabled:=True;
End;

procedure ResetALLModes;
Begin
 If editmode then PlaceEditorText;
 insertCOL:=False;
 insertROW:=False;
 deleteCOL:=False;
 deleteROW:=False;
 charmode:=false;
 textmode:=false;
 compmode:=false;
 movemode:=False;
 NLine:=False;
 ersterLpunkt:=False;
 zweiterLpunkt:=False;
 rectmode:=false;
 ersterRpunkt:=False;
 ILine:=False;
 DLine:=False;
 Editmode:=False;
 MainForm.blink.Enabled:=False;
 Pastemode:=False;
 selectmode:=False;
 selectbox.rect_coord:=False;
 selectbox.target_coord:=False;
End;
function FindCompByName(name:shortstring):Integer;
var
 item:integer;
Begin
 result:=-1;
 for item:=0 to MainForm.ListBox1.Items.Count-1 do
  If POS(AnsiLowerCase(name),AnsiLowerCase(MainForm.ListBox1.Items[item]))>0 Then
   Begin
    result:=item+1;
    break;
   End;
 if result=-1 Then Showmessage('Couldn''t find '+name+' in component list. Please edit the component.ini');
End;
procedure copyselectbox;
var
 x,y:byte;
 temp:byte;
 stringpuffer:string;
Begin
 //showmessage('select left:'+inttostr(selectbox.left)+' top:'+inttostr(selectbox.top)+' right:'+inttostr(selectbox.right)+' bottom:'+inttostr(selectbox.bottom));
 ClipBForm.ClipBMemo.Clear;
 for y:=selectbox.Top to selectbox.Bottom do
  Begin
   stringpuffer:='';
    for x:=selectbox.Left to selectbox.Right do
     Begin
      temp:=matrix[x,y];
      If temp=0 then temp:=32;
      stringpuffer:=stringpuffer+chr(temp);
     End;
    ClipBForm.clipBmemo.Lines.Add(stringpuffer);  //temp);
   End;
 //selectbox.filled:=True;
 //selectmode:=false;
 //pastemode:=True;
 //MainForm.PaintBox1MouseMove(MainForm,[],1,1);
End;
procedure getcompdata(const memoline:Shortstring;var memocomp,memoori,mx,my:byte;var gespiegeltchar:Char);
var
 scan,lastscan:byte;
 temp:Shortstring;
Begin
 Try
     scan:=6;
     memocomp:=0;
     while (memoline[scan]<>',') do inc(scan);
     temp:=copy(memoline,6,scan-6);
     IF temp='' THEN Temp:='0';
     memocomp:=strtoint(temp);
     inc(scan);
     lastscan:=scan;
     while (memoline[scan]<>',') do inc(scan);
     temp:=copy(memoline,lastscan,scan-lastscan);
     IF temp='' THEN Temp:='0';
     memoori:=strtoint(temp);
     inc(scan);
     lastscan:=scan;
     while (memoline[scan]<>',') do inc(scan);
     temp:=copy(memoline,lastscan,scan-lastscan);
     IF temp='' THEN Temp:='0';
     mx:=strtoint(temp);
     inc(scan);
     lastscan:=scan;
     while (memoline[scan]<>',') do inc(scan);
     my:=strtoint(copy(memoline,lastscan,scan-lastscan));
     inc(scan);
     lastscan:=scan;
     while (memoline[scan]<>',') And (scan<=length(memoline)) do inc(scan);
     gespiegeltchar:=memoline[lastscan];
  except on EConvertError do showmessage(memoline+' ist kein gültiges Zeichen-Kommando...');
  End;
End;


Procedure getlinedata(const memoline:shortstring;var memocomp,mx,my,mx2,my2:Byte);
Var
 scan,lastscan:byte;
Begin
     scan:=6;
     while (memoline[scan]<>',') do inc(scan);
     memocomp:=strtoint(copy(memoline,6,scan-6));
     inc(scan);
     lastscan:=scan;
     while (memoline[scan]<>',') do inc(scan);
     mx:=strtoint(copy(memoline,lastscan,scan-lastscan));
     inc(scan);
     lastscan:=scan;
     while (memoline[scan]<>',') do inc(scan);
     my:=strtoint(copy(memoline,lastscan,scan-lastscan));
     inc(scan);
     lastscan:=scan;
     while (memoline[scan]<>',') do inc(scan);
     mx2:=strtoint(copy(memoline,lastscan,scan-lastscan));
     inc(scan);
     lastscan:=scan;
     while (memoline[scan]<>',') And (scan<=length(memoline)) do inc(scan);
     my2:=strtoint(copy(memoline,lastscan,scan-lastscan));
End;
Procedure gettextdata(const memoline:shortstring; var mtext:shortstring; var mx,my:Byte);
Var
 scan,lastscan:byte;
 commacount:byte;
 commaindex:array [0..20] of byte;
 LinePuffer:shortstring;
Begin
 commacount:=0;
 LinePuffer:=memoline;
 //commaindex[0]:=POS(',',memoline);
 scan:=6;
   Repeat
    while ((memoline[scan]<>',') AND (scan<length(memoline))) do inc(scan);
    If memoline[scan]=',' Then
     Begin
      commaindex[commacount]:=scan;
      inc(scan);
      inc(commacount);
     End;
   Until scan=length(memoline);
   If commacount>2 then scan:=commaindex[commacount-2]
    Else scan:=commaindex[0];
     mtext:=copy(memoline,6,scan-6);
     inc(scan);
     lastscan:=scan;
     while (memoline[scan]<>',') do inc(scan);
     mx:=strtoint(copy(memoline,lastscan,scan-lastscan));
     inc(scan);
     lastscan:=scan;
     while (memoline[scan]<>',') And (scan<=length(memoline)) do inc(scan);
     my:=strtoint(copy(memoline,lastscan,scan-lastscan));
End;
Procedure getchardata(const memoline:shortstring;var memocomp,mx,my:byte);
Var
 scan,lastscan:byte;
Begin
     scan:=6;
     while (memoline[scan]<>',') do inc(scan);
     memocomp:=strtoint(copy(memoline,6,scan-6));
     inc(scan);
     lastscan:=scan;
     while (memoline[scan]<>',') do inc(scan);
     mx:=strtoint(copy(memoline,lastscan,scan-lastscan));
     inc(scan);
     lastscan:=scan;
     while (memoline[scan]<>',') And (scan<=length(memoline)) do inc(scan);
     my:=strtoint(copy(memoline,lastscan,scan-lastscan));
End;
Procedure DrawText(const text:shortstring;const mx,my:byte);
var
 Xchar:byte;
Begin
 If length(text)>0 Then
  For xchar:=0 to length(text)-1 do
   IF ((mx+xchar)<(matrixx-1)) Then
    if NOT ( (selectbox.transparent) AND (text[xChar+1]=CHR(32)) ) then //wenn transparent leerzeichen nicht zeichnen
    MainForm.paintbox1.Canvas.TextOut((mx+Xchar)*extentx,my*extenty,text[xChar+1]);
End;
Procedure DrawfromClipBMemo(const mx,my:byte);
var
 zeile:word;
begin
 for zeile:=0 to ClipBForm.ClipBMemo.Lines.Count do
  Begin
   DrawText(ClipBForm.ClipBMemo.Lines[zeile],mx,my+zeile);
  End;
end;

procedure lrectangle(x1,y1,x2,y2:byte;toArray:boolean);
var
 mx,my,temp:byte;
Begin
  if x2>MatrixX then x2:=MatrixX; if y2>MatrixY then y2:=MatrixY;
  If x1>x2 Then
   Begin
    temp:=x2; x2:=x1; x1:=temp
   End;
  IF y1>y2 Then
   Begin
    temp:=y2; y2:=y1; y1:=temp;
   End;
 IF (x2>x1) AND (y2>y1) Then
 Begin
  for mx:=x1+1 to x2-1 do
   Begin
    MainForm.paintbox1.Canvas.TextOut(mx*extentx,y1*extenty,'-');
    If toArray Then matrix[mx,y1]:=ord('-');
   End;
  for mx:=x1+1 to x2-1 do
   Begin
    MainForm.paintbox1.Canvas.TextOut(mx*extentx,y2*extenty,'-');
    If toArray Then matrix[mx,y2]:=ord('-');
   End;
  for my:=y1+1 to y2-1 do
   Begin
    MainForm.paintbox1.Canvas.TextOut(x1*extentx,my*extenty,'|');
    If toArray Then matrix[x1,my]:=ord('|');
   End;
  for my:=y1+1 to y2-1 do
   Begin
    MainForm.paintbox1.Canvas.TextOut(x2*extentx,my*extenty,'|');
    If toArray Then matrix[x2,my]:=ord('|');
   End;
    MainForm.paintbox1.Canvas.TextOut(x1*extentx,y1*extenty,'.');
    MainForm.paintbox1.Canvas.TextOut(x1*extentx,y2*extenty,'''');
    MainForm.paintbox1.Canvas.TextOut(x2*extentx,y2*extenty,'''');
    MainForm.paintbox1.Canvas.TextOut(x2*extentx,y1*extenty,'.');
    If toArray Then matrix[x1,y1]:=ord('.');
    If toArray Then matrix[x1,y2]:=ord('''');
    If toArray Then matrix[x2,y2]:=ord('''');
    If toArray Then matrix[x2,y1]:=ord('.');
 End;
End;
procedure SimpleLinePaint(x1,y1,x2,y2:byte;linetyp:byte;const toArray:boolean);
var
 dx,dy,xystart,xyend,xy:integer;
 lchar:char;
 startc,endc:byte;
Begin
  if y1>=matrixY then y1:=MatrixY-1;
  if y2>=matrixY then y2:=MAtrixY-1;
  if x1>=matrixX then x1:=MatrixX-1;
  if x2>=matrixX then x2:=MatrixX-1;
  dx:=x2-x1; dy:=y2-y1;
  If (abs(dy)>=abs(dx)) then
   Begin //senkrechte linie zeichnen
    lchar:='|';
    if dy>0 Then
     Begin xystart:=y1; xyend:=y2; End
      Else Begin xystart:=y2; xyend:=y1; End;
      For xy:=xystart+1 to xyend-1 do
       Begin
        MainForm.paintbox1.Canvas.TextOut(x1*extentx,xy*extenty,lchar);
        If toArray then matrix[x1,xy]:=ord(lchar);
       End;
   End
  Else
   Begin //waagerechte linie zeichnen
    lchar:='-';
    if dx>0 Then
     Begin xystart:=x1; xyend:=x2; End
      Else Begin xystart:=x2; xyend:=x1; End;
      For xy:=xystart+1 to xyend-1 do
       Begin
        MainForm.paintbox1.Canvas.TextOut(xy*extentx,y1*extenty,lchar);
        If toArray then matrix[xy,y1]:=ord(lchar);
       End;
   End;
   // Anfang- und End-Char zeichnen
   If ((lineTyp=39) and (lchar='|')) Then
    Begin
     if dy>0 Then Begin startc:=ord('.'); endc:=ord(''''); End
      Else Begin startc:=ord(''''); endc:=ord('.'); End;
    End
   Else
     If lineTyp=0 Then   //normale Linie
      Begin startc:=ord(lchar); endc:=startc; End
     else // o oder  + als start end...
      Begin startc:=lineTyp; endc:=lineTyp; End;
   MainForm.paintbox1.Canvas.TextOut(x1*extentx,y1*extenty,chr(startc));
   MainForm.paintbox1.Canvas.TextOut(x2*extentx,y2*extenty,chr(endc));
   if toArray Then
    Begin
     matrix[x1,y1]:=startc;
     matrix[x2,y2]:=endc;
    End;
End;
procedure DLinePaint(const x1,y1,x2,y2:byte;const toArray:boolean);
var
 x,y,xstart,xend:integer;
 x1p,x2p,y1p,y2p,xp,yp,dxp,dyp,yp_mod:integer;
 x_save,y_save,yp_sum,x_count:integer;
 yp_section:integer;
 ypos:integer;
 temp:byte;
 c:char;
 m:real;
 m_deg:integer;
 senkrecht,waagerecht:boolean;
Begin
 x1p:=x1*extentX+extentX div 2; x2p:=x2*extentX+ extentX div 2;
 y1p:=y1*extentY+ExtentY div 2; y2p:=y2*extentY+ ExtentY div 2;
 dyp:=y1p-y2p; dxp:=x2p-x1p;
 senkrecht:=(x1=x2);  //senkrechte Linie
 waagerecht:=(y1=y2); //waagerechte Linie
 m_deg:=0; m:=0;
 if not senkrecht then
  Begin
   m:=dyp/dxp;
   m_deg:=round(arctan(m)*180/pi);
  End;
 if x2p>x1p Then
  Begin xstart:=x1p; xend:=x2p; end
  else Begin xstart:=x2p; xend:=x1p; end;
 x_count:=0; yp_sum:=0;
 x_save:=x2;
 y_save:=y2;
 If (NOT senkrecht) then
  For xp:=Xstart to Xend do
     Begin
        yp:=round(y1p-(xp-x1p)*m);
        y:=yp div extentY;
        x:=xp div ExtentX;
        If (x<>x_save) or (y<>y_save) Then
         Begin
          if x_count>0 then
           yp_section:=round(yp_sum/x_count)
           Else yp_section:=extentY div 2;

          If (x_count>4) or (m_deg>60) or (m_deg<-60) Then
           Begin
             case yp_section of
               1..4: c:='''';
               5..8: c:='o';
               9..14: c:='.';
              else c:=' ';
             End;

             If c='o' Then
              case m_deg of
               -90..-70: c:='|';
               -69..-35: c:='\';
               -34..34:  c:='-';
                35..69:  c:='/';
                70..90:  c:='|';
               end;

             If c='''' Then
              case m_deg of
               -64..-21: c:='`';
               -20..20:  c:='''';
                21..64:  c:='´';
               end;

             If c='.' then
              case m_deg of
               -20..20:  c:='_';
                21..64:  c:=',';
               end;

             MainForm.paintbox1.Canvas.TextOut(x_save*extentx,y_save*extenty,c);
             If toArray Then matrix[x_save,y_save]:=ord(c);
           End;

          x_save:=x;
          y_save:=y;
          yp_sum:=0;
          x_count:=0;
         End;

        yp_sum:=yp_sum+ round((yp mod extentY)/extentY*13);
        inc(x_count);
   End
    else SimpleLinePaint(x1,y1,x2,y2,0,toArray);

 gridraster;
End;

function checkILinematch(const search_dir:shortint;const x,y,index:byte;var direction,sechar:byte):boolean;
var
 ml_index,temp,d_cell:byte;
 //match:boolean;
Begin
 If (x<MatrixX-1) AND (y<MatrixY-1) And (x>0) and (y>0)
 AND NOT ((search_dir>=0) and (search_dir<>IData[index].s_dir) ) Then
// AND ((search_dir=-1) or (search_dir=IData[index].s_dir) ) Then

  Begin
   result:=True;
   for ml_index:=0 to 8 do
    Begin
     temp:=IData[index].field[ml_index];
     if temp<>ord('x') Then
      Begin
       d_cell:=matrix[x-1+ml_index mod 3,y-1+ml_index div 3];
       if d_cell=0 then d_cell:=32;
       if NOT (d_cell=temp)
        then
         Begin
          result:=False;
          break;
         End;
      End;
    End;
  If result=True Then
   Begin
    direction:=IData[index].s_dir;
    sechar:=IData[index].s_char;
   end;
 end else result:=false;
End;

procedure CornerLine(const dir,x1,y1,x2,y2:byte; const toarray:boolean);
var
 top,left,temp,startv,endv,corner_char:byte;
 dy,dx:shortint;
 p_char:char;
 //dir 0=horizontal 1=vertikal 2=longest line first
Begin
 dx:=x2-x1; dy:=y2-y1; top:=0; left:=0;
 if (dy>=0) xor not (dir=1) then corner_char:=39 else corner_char:=46; //Corner character
 if dx>0 Then Begin startv:=x1; endv:=x2; end
  else Begin startv:=x2; endv:=x1; End;
 If dir=0 then
  Begin top:=y1; left:=x2; End;
 If dir=1 then
  Begin top:=y2; left:=x1; End;
 if abs(dx)>1 then
  for temp:=startv+1 to endv-1 do
   Begin //horizontale linie zeichnen
    If matrix[temp,top]=124 Then
     p_char:=')' else p_char:='-';
    MainForm.paintbox1.Canvas.TextOut(temp*extentx,top*extenty,p_char);
    If toArray Then matrix[temp,top]:=ord(p_char);
   End;
 if dy>0 then Begin startv:=y1; endv:=y2; end
  else Begin startv:=y2; endv:=y1; end;
 if abs(dy)>1 then
  for temp:=startv+1 to endv-1 do
   Begin //vertikale linie zeichnen
    If matrix[left,temp]=45 Then
     p_char:=')' else p_char:='|';
    MainForm.paintbox1.Canvas.TextOut(left*extentx,temp*extenty,p_char);
    If toArray Then matrix[left,temp]:=ord(p_char);
   End;
 //Eckzeichen
 If ((dir=0) And (abs(dy)>0)) or ((dir=1) And (abs(dx)>0)) Then  //gibt es überhaupt eine ecke?
// If (abs(dx)>0) Then  //gibt es überhaupt eine ecke?
  Begin
   MainForm.paintbox1.Canvas.TextOut(left*extentx,top*extenty,chr(corner_char));
   If toArray Then matrix[left,top]:=corner_char;
  End;
End;

procedure ILinePaint2(const x1,y1,x2,y2:byte;const toArray:boolean);
var
 index,se_c,dir,temp:byte;
 dx,dy,s_dir:shortint;
Begin
 s_dir:=0;
 dx:=x2-x1; dy:=y2-y1;

 for index:=0 to IDataItemIndex-1 do
   If checkILinematch(-1,x1,y1,index,dir,se_C) Then
//    If se_C<>32 Then
     Begin
      MainForm.paintbox1.Canvas.TextOut(x1*extentx,y1*extenty,chr(se_c));
      If toArray then matrix[x1,y1]:=se_c;
      break;
     End;

 if dir=2 Then  //longest line first
  If abs(dy)>abs(dx) Then dir:=1 Else dir:=0;
     
MainForm.SBar.Panels[5].Text:='Start: D['+inttostr(index)+'] car:'+chr(se_c)+' dir.'+inttostr(dir);

 if (dir=0) Then
  If (abs(dy)>0) Then s_dir:=1 else s_dir:=0;
 if (dir=1) Then
  If (abs(dx)>0) Then s_dir:=0 else s_dir:=1;

 for index:=0 to IDataItemIndex-1 do
   If checkILinematch(s_dir,x2,y2,index,temp,se_C) Then
    Begin
     MainForm.paintbox1.Canvas.TextOut(x2*extentx,y2*extenty,chr(se_c));
     If toArray
      then matrix[x2,y2]:=se_c;
     break;
    End;
   MainForm.SBar.Panels[6].Text:='End: D['+inttostr(index)+'] dir:'+inttostr(s_dir)+' char:'+chr(se_c);


  CornerLine(dir,x1,y1,x2,y2,toArray);
End;

procedure ILinepaint(const x1,y1,x2,y2:byte;const toArray:boolean);
var
 // alte MagLine, wegen abwärtscompatibilität noch vorhanden
 mx,my,temp,xdiv,ydiv,eckx,ecky,SEcount:byte;
 startC,endC,eckC:char;
 startr:1..2; //Startrichtung 1=oben/unten  2=rechts/links
Begin
  MainForm.SBar.Panels[5].Text:='';
  Startc:='#'; Startr:=1; eckx:=0; ecky:=0;
  EndC:='#'; Eckc:='%';
  SECount:=0;
  IF x2>=x1 Then xdiv:=x2-x1 Else xdiv:=x1-x2;  //Diffenernz x
  IF y2>=y1 Then ydiv:=y2-y1 Else ydiv:=y1-y2;  //Diffenernz y
  // nichts drumherum     // geprüft
  If (matrix[x1-1,y1]=0) AND (matrix[x1+1,y1]=0) AND (matrix[x1,y1-1]=0) AND (matrix[x1,y1+1]=0) Then
   Begin
    IF xdiv>ydiv then startr:=2 Else startr:=1;
    If startr=1 Then StartC:='|' Else StartC:='-';
    MainForm.SBar.Panels[5].Text:='S:all free';
    INC(SECount);
   End;
  // o/u=| , l/r free
  IF ((matrix[x1,y1-1]=ord('|')) OR (matrix[x1,y1+1]=ord('|'))) AND (matrix[x1-1,y1]=0) AND (matrix[x1+1,y1]=0) Then
   Begin
    If ydiv>0 Then
     Begin
      StartC:='|';
      Startr:=1;
     End;
    If (ydiv=0) Then
     Begin
      startr:=2;
      IF (matrix[x1,y1-1]=ord('|')) Then StartC:='''';
      IF (matrix[x1,y1+1]=ord('|')) Then StartC:='.';
     End;
    MainForm.SBar.Panels[5].Text:='S:o/u,l/r=0';
    INC(SECount);
   End;
  // oben .
  IF (matrix[x1,y1-1]=ord('.')) {AND (matrix[x1,y1+1]=0)} AND (matrix[x1-1,y1]=0) AND (matrix[x1+1,y1]=0) Then
   Begin
    If ydiv>0 Then
     Begin
      StartC:='|';
      Startr:=1;
     End;
    If (ydiv=0) Then
     Begin
      startr:=2;
      StartC:='''';
     End;
    MainForm.SBar.Panels[5].Text:='S:o.;l/r/u=0';
    INC(SECount);
   End;
  // unten '
  IF (matrix[x1,y1+1]=ord('''')) {AND (matrix[x1,y1-1]=0)} AND (matrix[x1-1,y1]=0) AND (matrix[x1+1,y1]=0) Then
   Begin
    If ydiv>0 Then
     Begin
      StartC:='|';
      Startr:=1;
     End;
    If (ydiv=0) Then
     Begin
      startr:=2;
      StartC:='.';
     End;
    MainForm.SBar.Panels[5].Text:='S:u'''';l/r/0=0';
    INC(SECount);
   End;
  // oben -
  IF (matrix[x1,y1-1]=ord('-')) AND (matrix[x1,y1+1]=0) AND (matrix[x1-1,y1]=0) AND (matrix[x1+1,y1]=0) Then
   Begin
    If ydiv>0 Then
     Begin
      StartC:='|';
      Startr:=1;
     End;
    If (ydiv=0) Then
     Begin
      startr:=2;
      StartC:='-';
     End;
    MainForm.SBar.Panels[5].Text:='S:o-;l/r/u=0';
    INC(SECount);
   End;
  // unten -
  IF (matrix[x1,y1+1]=ord('-')) AND (matrix[x1,y1-1]=0) AND (matrix[x1-1,y1]=0) AND (matrix[x1+1,y1]=0) Then
   Begin
    If ydiv>0 Then
     Begin
      StartC:='|';
      Startr:=1;
     End;
    If (ydiv=0) Then
     Begin
      startr:=2;
      StartC:='-';
     End;
    MainForm.SBar.Panels[5].Text:='S:u-;l/r/u=0';
    INC(SECount);
   End;
  // l/r=- , o/u free
  IF ((matrix[x1-1,y1]=ord('-')) OR (matrix[x1+1,y1]=ord('-'))) AND (matrix[x1,y1-1]=0) AND (matrix[x1,y1+1]=0) Then
   Begin
    If xdiv>0 Then
     Begin
      StartC:='-';
      Startr:=2;
     End;
    If (xdiv=0) Then
     Begin
      startr:=1;
      IF y2>y1 Then StartC:='.';
      IF y2<y1 Then StartC:='''';
     End;
    MainForm.SBar.Panels[5].Text:='S:l/r,o/u=0';
    INC(SECount);
   End;
  // links und recht - , oben kein |
  IF (matrix[x1-1,y1]=ord('-')) AND (matrix[x1+1,y1]=ord('-'))
    {AND NOT (matrix[x1,y1-1]=ord('|'))} Then
    Begin
     Startc:='o';
     startr:=1; //oben/unten
     MainForm.SBar.Panels[5].Text:='links und recht - , oben kein |';
    INC(SECount);
    End;
  // oben und unten | , links kein -
  IF (matrix[x1,y1-1]=ord('|')) AND (matrix[x1,y1+1]=ord('|'))
    {AND NOT (matrix[x1,y1-1]=ord('|'))} Then
    Begin
     Startc:='o';
     startr:=2; //oben/unten
     MainForm.SBar.Panels[5].Text:='oben und unten | , links kein -';
    INC(SECount);
    End;
  // links oder rechts o
  IF (matrix[x1-1,y1]=ord('o')) OR (matrix[x1+1,y1]=ord('o')) Then
   Begin
    startr:=2;
    StartC:='-';
    MainForm.SBar.Panels[5].Text:='S:lVr=o;';
    INC(SECount);
   End;
  // oben oder unten o
  IF (matrix[x1,y1-1]=ord('o')) OR (matrix[x1,y1+1]=ord('o')) Then
   Begin
    startr:=1;
    StartC:='|';
    MainForm.SBar.Panels[5].Text:='S:oVu=o;';
    INC(SECount);
   End;

  // End Char
  // nichts drumherum
  If (matrix[x2-1,y2]=0) AND (matrix[x2+1,y2]=0) AND (matrix[x2,y2-1]=0) AND (matrix[x2,y2+1]=0) Then
   Begin
    If startr=1 Then  // Startrichtung oben/unten
     Begin
      IF (x1=x2) Then EndC:='|' Else EndC:='-';
     End;
    If startr=2 Then  // Startrichtung linksrechts
     Begin
      IF (y1=y2) Then EndC:='-' Else EndC:='|';
     End;
    MainForm.SBar.Panels[5].Text:=MainForm.SBar.Panels[5].Text+'E:all free';
    INC(SECount);
   End;
  // von oben oder unten
  IF ((matrix[x2,y2-1]=ord('|')) OR (matrix[x2,y2+1]=ord('|'))) {AND (matrix[x2-1,y2]=0) AND (matrix[x2+1,y2]=0)} Then
   Begin
    If StartR=1 Then if x1=x2 Then EndC:='|' Else EndC:='o';
    If startr=2 Then IF (y1=y2) Then EndC:='o' Else EndC:='|';
    MainForm.SBar.Panels[5].Text:=MainForm.SBar.Panels[5].Text+'E:o/u';
    INC(SECount);
   End;
  // von links oder rechts
  IF ((matrix[x2-1,y2]=ord('-')) OR (matrix[x2+1,y2]=ord('-'))) AND (matrix[x2,y2-1]=0) AND (matrix[x2,y2+1]=0) Then
   Begin
    If StartR=1 Then
     If x1=x2 Then
      Begin
       if y1<y2 Then EndC:='''';
       IF y1>y2 Then Endc:='.';
      End Else EndC:='-';
    If startr=2 Then
     IF (y1<>y2) Then
      Begin
       if y1<y2 Then EndC:='''';
       IF y1>y2 Then Endc:='.';
      End Else EndC:='-';
    INC(SECount);
    MainForm.SBar.Panels[5].Text:=MainForm.SBar.Panels[5].Text+'END:l/r';
   End;
  // links UND rechts -
  IF (matrix[x2-1,y2]=ord('-')) AND (matrix[x2+1,y2]=ord('-')) Then
   Begin
     If ((StartR=1) AND (x1=x2)) OR ((StartR=2) AND (y1<>y2)) Then
      EndC:='o';
    INC(SECount);
   End;

  //generell, wenn EndC noch # ist
  If Endc='#' Then
   Begin
    If StartR=1 Then
     If x1=x2 Then EndC:='|' Else EndC:='-';
    If StartR=2 Then
     IF (y1<>y2) Then EndC:='|' Else EndC:='-';
   End;
  //generell, wenn StartC noch # ist
  If Startc='#' Then
   Begin
    If StartR=1 Then StartC:='|';
    If StartR=2 Then StartC:='-';
   End;


  //Linie zeichnen
  IF (startr=1) Then
   Begin
    mx:=x1;
    If y2>y1 Then EckC:='''' Else EckC:='.';
    If y2>y1 Then
      for my:=y1+1 to y2-1 do
       Begin
        MainForm.paintbox1.Canvas.TextOut(mx*extentx,my*extenty,'|');
        If toArray Then matrix[mx,my]:=ord('|');
       End;
    If y1>y2 Then
      for my:=y1-1 downto y2+1 do
       Begin
        MainForm.paintbox1.Canvas.TextOut(mx*extentx,my*extenty,'|');
        If toArray Then matrix[mx,my]:=ord('|');
       End;
    my:=y2;
    If x2>x1 Then
      for mx:=x1+1 to x2-1 do
       Begin
        MainForm.paintbox1.Canvas.TextOut(mx*extentx,my*extenty,'-');
        If toArray Then matrix[mx,my]:=ord('-');
       End;
     If x1>x2 Then
      for mx:=x1-1 downto x2+1 do
       Begin
        MainForm.paintbox1.Canvas.TextOut(mx*extentx,my*extenty,'-');
        If toArray Then matrix[mx,my]:=ord('-');
       End;
    ecky:=y2;
    eckx:=x1;
   End;
  IF (startr=2) Then
   Begin
    my:=y1;
    If y2<y1 Then EckC:='''' Else EckC:='.';
    If x2>x1 Then
      for mx:=x1+1 to x2-1 do
       Begin
        MainForm.paintbox1.Canvas.TextOut(mx*extentx,my*extenty,'-');
        If toArray Then matrix[mx,my]:=ord('-');
       End;
     IF x1>x2 Then
      for mx:=x1-1 downto x2+1 do
       Begin
        MainForm.paintbox1.Canvas.TextOut(mx*extentx,my*extenty,'-');
        If toArray Then matrix[mx,my]:=ord('-');
       End;
    mx:=x2;
    If y2>y1 Then
      for my:=y1+1 to y2-1 do
       Begin
        MainForm.paintbox1.Canvas.TextOut(mx*extentx,my*extenty,'|');
        If toArray Then matrix[mx,my]:=ord('|');
       End;
    If y1>y2 Then
      for my:=y1-1 downto y2+1 do
       Begin
        MainForm.paintbox1.Canvas.TextOut(mx*extentx,my*extenty,'|');
        If toArray Then matrix[mx,my]:=ord('|');
       End;
    ecky:=y1;
    eckx:=x2;
   End;

//  showmessage(startc);
 // MainForm.paintbox1.Canvas.TextOut(1*extentx,1*extenty,startc);   //als Test
  MainForm.SBar.Panels[5].Text:=MainForm.SBar.Panels[5].Text+' '+inttostr(SECount);
  MainForm.paintbox1.Canvas.TextOut(eckx*extentx,ecky*extenty,eckC);
  MainForm.paintbox1.Canvas.TextOut(x1*extentx,y1*extenty,startc);
  MainForm.paintbox1.Canvas.TextOut(x2*extentx,y2*extenty,endc);
  If toArray Then matrix[eckx,ecky]:=ord(eckC);
  If toArray Then matrix[x1,y1]:=ord(StartC);
  If toArray Then matrix[x2,y2]:=ord(EndC);
  MainForm.SBar.Panels[4].text:=inttostr(x1)+','+inttostr(y1)+','+inttostr(x2)+','+inttostr(y2);
End;

procedure comppaint(x,y:byte;toArray:boolean);
var
 mx,my,temp,right,bottom:byte;
Begin
 if (mausx>=0) and (mausx<matrixx) And (mausy>=0) and (mausy<matrixy) Then
 Begin
  right:=mausx+compx-1;
  bottom:=mausy+compy-1;
  if right>=matrixX Then right:=MatrixX-1;
  if bottom>=matrixY Then bottom:=MatrixY-1;
   for mx:=mausx to right do
    for my:=mausy to bottom do
     Begin
      temp:=tempcomp[mx-mausx,my-mausy];
      if temp>0 Then MainForm.paintbox1.Canvas.TextOut(mx*extentx,my*extenty,chr(temp));
      if toArray and (temp>0) and (mx<MatrixX) and (my<MatrixY)
       Then matrix[mx,my]:=temp;
     End;
 End;
End;

procedure ApplySelectionCommand;
Var
 mlindex:byte;
 memocomp,memoori,mx,my,mx2,my2:byte;
 gespiegeltchar:Char;
 compfound,linefound,textfound,charfound,rectfound,found,p1inRect,p2inRect:boolean;
 mline,Text,linetyp:shortstring;
 moveVektorX,moveVektorY:integer;
Begin
 moveVektorX:=selectbox.targetX-selectbox.Left;
 moveVektorY:=selectbox.TargetY-selectbox.Top;
 IF commandF.memo2.lines.count>0 Then
 for mlindex:=commandF.memo2.Lines.Count-1 downto 0 do
  Begin
   memocomp:=0;
   linefound:=false;
   rectfound:=False;
   compfound:=false;
   textfound:=False;
   charfound:=False;
   mx2:=0; my2:=0;
   mline:=commandF.memo2.lines[mlindex];
   if copy(mline,1,5)='comp:' Then
    Begin
     compfound:=True;
     getcompdata(mline,memocomp,memoori,mx,my,gespiegeltchar);
    End;
   if (copy(mline,1,5)='line:') or (copy(mline,1,5)='MagL:') or (copy(mline,1,5)='DirL:') Then
    Begin
     Linefound:=True;
     linetyp:=copy(mline,1,5);
     getlinedata(mline,memocomp,mx,my,mx2,my2);
    End;
   if (copy(mline,1,5)='rect:') Then
    Begin
     RectFound:=True;
     linetyp:=copy(mline,1,5);
     getlinedata(mline,memocomp,mx,my,mx2,my2);
    End;
   if copy(mline,1,5)='text:' Then
    Begin
     textfound:=True;
     gettextdata(mline,text,mx,my);
    End;
   If copy(mline,1,5)='char:' then
    Begin
     charfound:=True;
     getchardata(mline,memocomp,mx,my);
    End;

   found:=(linefound OR rectfound OR compfound OR textfound OR charfound);
   p1inRect:=(mx>=selectbox.Left) AND (mx<=selectbox.Right) AND (my>=selectbox.Top) AND (my<=selectbox.Bottom);
   p2inRect:=(mx2>=selectbox.Left) AND (mx2<=selectbox.Right) AND (my2>=selectbox.Top) AND (my2<=selectbox.Bottom);
   If found AND (p1inRect OR p2inRect) Then    //Comp,text,linie in selectbox gefunden
      Begin
       If p1inRect Then
        Begin mx:=mx+moveVektorX; my:=my+MoveVektorY; End;
       IF p2inRect Then
        Begin mx2:=mx2+moveVektorX; my2:=my2+MoveVektorY; End;

       If selectbox.mode=3 Then //delete;
        commandF.memo2.Lines.Delete(mlindex);
       If (selectbox.mode=1) or (selectbox.mode=2) Then //move oder copy
        Begin
         //If selectbox.mode=1 Then //move  bestehende symbole löschen
         // commandF.memo2.Lines.Delete(mlindex);
         If compfound then
          mline:=('comp:'+inttostr(memocomp)+','+inttostr(memoori)+','+
           inttostr(mx)+','+inttostr(my)+','+gespiegeltchar+','+MainForm.Listbox1.Items[memocomp-1]); // comp[showcomp,showori,x,y]
         if linefound then
          mline:=(linetyp+inttostr(memocomp)+','+inttostr(mx)+','+inttostr(my)+','+inttostr(mx2)+','+inttostr(my2));
         if rectfound then
          mline:=('rect:'+inttostr(memocomp)+','+inttostr(mx)+','+inttostr(my)+','+inttostr(mx2)+','+inttostr(my2));
         if textfound then
          mline:=(copy(mline,1,5)+text+','+inttostr(mx)+','+inttostr(my));
         if charfound then
          mline:=('char:'+inttostr(memocomp)+','+inttostr(mx)+','+inttostr(my));
         If selectbox.mode=1 Then   //move
          commandF.Memo2.Lines[mlindex]:=mline
         else                    //copy
          commandF.Memo2.Lines.Add(mline);
         End;
      End;
  End;
  MainForm.neuzeichnen1Click(selectform);
  mainForm.selectBClick(MainForm);
End;
procedure proceedselection;
var
 x,y:byte;
Begin
  If selectbox.rect_coord AND (selectbox.mode=3) Then //delete
    ApplySelectionCommand;
  If (selectbox.rect_coord) AND (NOT selectbox.target_coord) Then
  Begin
   If (selectbox.mode=1) Then // move
    Begin
     copyselectbox;
     for x:=selectbox.Left to selectbox.Right do
      for y:=selectbox.Top to selectbox.Bottom do
       matrix[x,y]:=0;
     mrectrefresh(selectbox.left,selectbox.top,selectbox.right,selectbox.bottom);
    End;
   If selectbox.mode=2 Then // copy
    Begin
     copyselectbox;
     mboxrefresh;
    End;
  End;
  If selectbox.rect_coord AND selectbox.target_coord //start und ziel definiert
   Then ApplySelectionCommand;
End;
procedure circuitscan(x,y:byte;sender:tobject);
var
 mlindex:byte;
 memocomp,memoori,mx,my,mx2,my2,modalindex,scan,delindex:byte;
 gespiegeltchar:Char;
 found,morefound,compfound,linefound,textfound:boolean;
 LBline,mline,Text:shortstring;
Begin
 found:=false;
 morefound:=False;
 sresult.LB.Clear;
 modalindex:=0;
 MainForm.paintbox1.Canvas.font.Color:=clred;
 IF commandF.memo2.lines.count>0 Then
 for mlindex:=0 to commandF.memo2.Lines.Count-1 do
  Begin
   memocomp:=0;
   linefound:=false;
   compfound:=false;
   textfound:=False;
   mline:=commandF.memo2.lines[mlindex];
   if copy(mline,1,5)='comp:' Then
    Begin
     compfound:=True;
     getcompdata(mline,memocomp,memoori,mx,my,gespiegeltchar);
    End;
   if copy(mline,1,5)='line:' Then
    Begin
     Linefound:=True;
     getlinedata(mline,memocomp,mx,my,mx2,my2);
    End;
   if copy(mline,1,5)='text:' Then
    Begin
     textfound:=True;
     gettextdata(mline,text,mx,my);
    End;
   MainForm.paintbox1.Canvas.TextOut(mx*extentx,my*extenty,'x');
   If (mx=x) AND (my=y) AND (compfound or linefound or textfound) then
    Begin
     If compfound Then
      sresult.LB.Items.add('Item:'+inttostr(mlindex)+': '+MainForm.listbox1.items[memocomp-1]);
     If Linefound Then
      sresult.LB.Items.add('Line:'+inttostr(mlindex)+': '+chr(memocomp));
     IF textfound Then
      sresult.LB.Items.add('text:'+inttostr(mlindex)+': '+text);
     If found=True then morefound:=True;    //mehrere überlagerte gefunden
     found:=True;
     //showmessage(inttostr(memocomp)+' gefunden');

    End;
  End;

  If morefound And (sresult.ShowModal=mrOk) then
   modalindex:=sresult.LB.Itemindex;
  If found and not morefound then
   modalindex:=0;

  MainForm.paintbox1.Canvas.font.Color:=clblack;
  If found or morefound then
   Begin
   // showmessage(inttostr(modalindex));
    LBline:=sresult.LB.items[modalindex];
    compfound:=(copy(LBLine,1,4)='Item');
    linefound:=(copy(LBLine,1,4)='Line');
    textfound:=(copy(LBLine,1,4)='text');
    scan:=6;
    while (LBline[scan]<>':') do inc(scan);
    delindex:=strtoint(copy(LBLine,6,scan-6));

       If compfound then getcompdata(commandF.memo2.lines[delindex],memocomp,memoori,mx,my,gespiegeltchar);
       If linefound then getlinedata(commandF.memo2.lines[delindex],memocomp,mx,my,mx2,my2);
       IF textfound then gettextdata(commandF.memo2.lines[delindex],text,mx,my);

       commandF.memo2.Lines.Delete(delindex);
       MainForm.neuzeichnen1Click(sender);

       if compfound then
        Begin
         MainForm.ListBox1.ItemIndex:=memocomp-1;
         showori:=memoori;
         MainForm.ListBox1Click(sender);
         if gespiegeltchar='s' then gespiegelt:=true;
        End;
       If linefound Then      // wieder die ursprüngliche Linie wählen
        Begin
         case memocomp of
          0:mainform.lb1.Click;
          111:mainform.lb2.Click;
          43:mainform.lb3.Click;
         end
        End;
       If textfound Then
        Begin
         MainForm.textedit.Text:=Text;
         mainForm.TextModeBClick(Sender);
        End;
     End;
End;

procedure TmainForm.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
mx,my:Byte;
zeile:Byte;
gespiegeltchar:char;
begin
 If (x>=0) and (y>=0) and (x<PaintBox1.Width) and (y<PaintBox1.Height) Then
 Begin
    edited:=True;
    mausx:=trunc(x/extentx);
    mausy:=trunc(y/extenty);
    If mausx>matrixX Then mausX:=matrixX;
    If mausy>matrixY Then mausY:=matrixy;
    If editmode then
     Begin
      //alte EditCursor Position überschreiben
      PlaceEditorText;
      mRectRefresh(Text_Editor.x,Text_Editor.y,Text_Editor.x,Text_Editor.y);
      Text_Editor.x:=mausx;
      Text_Editor.Y:=mausY;
      Text_Editor.left:=mausx;
     End;
    If rectmode and (button=mbright) then
     Begin
      neuzeichnen1Click(sender);
      ersterRpunkt:=True;
     End;
    If ((ILine or Dline or NLine) and (button=mbright)) Then
     Begin
      //neuzeichnen1Click(sender);
      modeChangeRefresh;
      //mrefresh;
      ersterLpunkt:=True;
      zweiterlpunkt:=False;
     End;
    If compmode and (button=mbright) Then
     Begin
      mainForm.srClick(Sender);
      MainForm.PaintBox1MouseMove(MainForm,[],mausx*extentx,mausy*extenty);
     End;
    If button=mbleft Then
     Begin
      If compmode AND (mausx<MatrixX) AND (mausy<Matrixy) Then
        Begin
         If gespiegelt then gespiegeltchar:='s'
          Else gespiegeltchar:='n';
         comppaint(mausx,mausy,True);
         commandF.memo2.Lines.Add('comp:'+inttostr(showcomp)+','+inttostr(showori)+','+
         inttostr(mausx)+','+inttostr(mausy)+','+gespiegeltchar+','+Listbox1.Items[showcomp-1]); // comp[showcomp,showori,x,y]
         gridrasterrect(mausx,mausy,mausx+compx,mausy+compy);
        End;
      If charmode Then
       Begin
        matrix[mausx,mausy]:=TempChar;
        commandF.memo2.Lines.Add('char:'+inttostr(tempchar)+','+inttostr(mausx)+','+inttostr(mausy));
       End;
      If textmode AND (mausx+length(temptext)<MatrixX) Then
       Begin
        for mx:=mausx to mausx+length(temptext)-1 do
         matrix[mx,mausy]:=ord(temptext[mx-mausx+1]);
        commandF.memo2.Lines.Add('text:'+temptext+','+inttostr(mausx)+','+inttostr(mausy));
       End;

      If insertROW Then
       Begin
        for mx:=0 to matrixx-1 do
          Begin
            for my:=matrixY-1 downto mausy+1 do
             matrix[mx,my]:=matrix[mx,my-1];
           matrix[mx,mausy]:=0;
          End;
         commandF.memo2.Lines.Add('IROW:'+inttostr(mausy));
         mrectrefresh(0,mausy,MatrixX-1,MatrixY-1)
       End;
      If deleteROW Then
       Begin
        for mx:=0 to matrixx-1 do
          Begin
            for my:=mausy to matrixY-2 do
             matrix[mx,my]:=matrix[mx,my+1];
           matrix[mx,matrixY-1]:=0;
          End;
         commandF.memo2.Lines.Add('DROW:'+inttostr(mausy));
         mrectrefresh(0,mausy,MatrixX-1,MatrixY-1)
       End;
      If insertCOL Then
       Begin
        for my:=0 to matrixY-1 do
          Begin
            for mx:=matrixX-1 downto mausX+1 do
             matrix[mx,my]:=matrix[mx-1,my];
           matrix[mausx,my]:=0;
          End;
         commandF.memo2.Lines.Add('ICOL:'+inttostr(mausx));
         mrectrefresh(mausx,0,MatrixX-1,MatrixY-1)
        End;
      If deleteCOL Then
       Begin
        for my:=0 to matrixY-1 do
          Begin
            for mx:=mausX to matrixX-2 do
             matrix[mx,my]:=matrix[mx+1,my];
           matrix[matrixX-1,my]:=0;
          End;
         commandF.memo2.Lines.Add('DCOL:'+inttostr(mausx));
         //mrefresh;
         mrectrefresh(mausx,0,MatrixX-1,MatrixY-1)
       End;
      IF insertROW or deleteROW or insertCOL or deleteCOL then
       MainForm.PaintBox1MouseMove(MainForm,[],mausx*extentx,mausy*extenty);
      If MoveMode Then circuitscan(mausx,mausy,sender);
      If rectmode Then
        Begin
         if ersterRPunkt Then
          Begin
           rectx:=mausx;
           recty:=mausy;
           ersterRPunkt:=False;
          End
          Else
            Begin
             commandF.memo2.Lines.Add('rect:0,'+inttostr(rectx)+','+inttostr(recty)+','+inttostr(mausx)+','+inttostr(mausy));
             lrectangle(rectx,recty,mausx,mausy,True);
             ersterRPunkt:=True;
             End
         End;
      If Selectmode Then
        Begin
         if ersterRPunkt Then
          Begin
           rectx:=mausx;
           recty:=mausy;
           ersterRPunkt:=False;
          End
          Else
           Begin
             //rectmode:=false;
             If not selectbox.rect_coord Then
              Begin
                if (rectx<mausx) then
                 Begin selectbox.Left:=rectx; selectbox.Right:=mausx;
                 end else Begin selectbox.Left:=mausx; selectbox.Right:=rectx; End;
                if (recty<mausy) then
                 Begin selectbox.Top:=recty; selectbox.Bottom:=mausy;
                 end else Begin selectbox.Top:=mausy; selectbox.Bottom:=recty; End;
                selectbox.rect_coord:=True;
                selectbox.mode:=selectform.showmodal;
                if Selectbox.mode=4 Then Begin mrefresh; MainForm.selectBClick(sender); end;
              End
                Else
                  Begin
                   Selectbox.TargetX:=mausx;
                   Selectbox.TargetY:=mausy;
                   Selectbox.Target_coord:=True;
                  End;
               proceedselection;
             End;
        End;

      IF (Iline or Dline or NLine) Then
         Begin
          if ersterLPunkt Then
           Begin
            linex1:=mausx;
            liney1:=mausy;
            ersterLPunkt:=False;
           End
           Else
            Begin
             ersterLPunkt:=True;
             zweiterLpunkt:=False;
             If Iline Then
              Begin
               //ILinepaint(linex1,liney1,mausx,mausy,True);
               //weg wegen ilinepaint2
               ILinepaint2(linex1,liney1,mausx,mausy,True);
               commandF.memo2.Lines.Add('MagL:1,'+inttostr(linex1)+','+inttostr(liney1)+','+inttostr(mausx)+','+inttostr(mausy));
              End;
             If Dline Then
              Begin
               DLinePaint(linex1,liney1,mausx,mausy,True);
               commandF.memo2.Lines.Add('DirL:0,'+inttostr(linex1)+','+inttostr(liney1)+','+inttostr(mausx)+','+inttostr(mausy));
              End;
             If NLine Then
              Begin
               SimpleLinePaint(linex1,liney1,mausx,mausy,NLinechar,true);
               commandF.memo2.Lines.Add('line:'+inttostr(NLinechar)+','+inttostr(linex1)+','+inttostr(liney1)+','+inttostr(mausx)+','+inttostr(mausy));
              End;
            End;
         End;
      If pastemode and not selectmode then
      Begin
       for zeile:=0 to ClipBForm.ClipBMemo.Lines.Count do
        Begin
         temptext:=ClipBForm.ClipBMemo.Lines[zeile];
         IF length(temptext)>0 Then
          Begin
           for mx:=mausx to mausx+length(temptext)-1 do
            If (mx<MatrixX) AND (mausy+zeile<MatrixY) Then
             if NOT ( (selectbox.transparent) AND (temptext[mx-mausx+1]=chr(32))) then
             matrix[mx,mausy+zeile]:=ord(temptext[mx-mausx+1]);
           commandF.memo2.Lines.Add('text:'+temptext+','+inttostr(mausx)+','+inttostr(mausy+zeile));
          End;
        End;
    End;
   End;
  End;
end;
function getPickPoints(const puffer:string;var index:byte;var X,Y,XM,YM:ShortInt):boolean;
//für den IMPORT von LTSpice
Begin
 index:=0;
 while ((puffer[index]<>'>') AND (index<30)) do inc(index);
  If length(puffer)=(index+9) Then
   Begin
    X:=strtoint(copy(puffer,index+1,2));
    Y:=strtoint(copy(puffer,index+3,2));
    XM:=strtoint(copy(puffer,index+6,2));
    YM:=strtoint(copy(puffer,index+8,2));
    Result:=True;
   End
    Else result:=False;
End;
function CheckEraser(const puffer:string):boolean;
Begin
 Result:=( (pos('Eraser',puffer)>0) OR (pos('Viskelæder',puffer)>0) OR (pos('Radierer',puffer)>0))
End;

procedure LoadIData;
var
 datafile:TextFile;
 filename:shortstring;
 puffer:string;
 index,ml_index:byte;
Begin
 filename:=ExtractFilePath(Paramstr(0))+'autoline.ini';
 If not FileExists(filename) then
  Begin
   Showmessage('Fehlende Datei im Verzeichnis : '+chr(13)
   +'Missing file path:'+chr(13)
   +ExtractFilePath(Paramstr(0))+chr(13)
   +'Data for autoline not found...');
  End;
 If FileExists(filename) then
 Begin
  fillchar(Idata,sizeof(IData),#0);
  Assignfile(datafile,filename);
  reset(datafile);
  index:=0;
  IDataItemIndex:=0;
  Repeat
   readln(datafile,puffer);
   If length(puffer)=11 then
    Begin
     for ml_index:=0 to 8 do
      IData[index].field[ml_index]:=ord(puffer[ml_index+1]);
     IData[index].s_dir:=strtoint(puffer[10]);
     IData[index].s_char:=ord(puffer[11]);
     inc(index);
    End; 
  Until EOF(datafile) or (index=IDataMAXItems);    //maximal Einträge
  IDataItemIndex:=index;
  closefile(datafile);
 End;
End;

procedure TmainForm.comploadClick(Sender: TObject);
var
 BIB: TextFile;
 filename:shortstring;
 puffer:string;
 x,y:integer; // Zähler für Raster
 listindex:integer;
 compindex,ori,laenge:byte; //orientation
 CompNameEndIndex,temp:Byte;
 firstPickPoint:boolean;
begin
// fillchar(comp,sizeof(comp),#0);
 for listindex:=0 to (PickPointList.Count-1) do
 Begin
  PickPoints:=PickPointList.Items[listindex];
  Dispose(PickPoints);
 End;
 Listbox1.Clear;
 filename:=ExtractFilePath(Paramstr(0))+'component'+inttostr(sprache)+'.ini';
 If not FileExists(filename) then
  Begin
  Showmessage('Fehlende Datei im Verzeichnis : '+chr(13)
  +'Missing file path:'+chr(13)
  +ExtractFilePath(Paramstr(0))+chr(13)
  +'Symboldatei nicht gefunden...'+chr(13)
  +'Symbolfile component'+inttostr(sprache)+'.ini not found...'+chr(13)
  +'Deutsch als Standard Sprache für Symboldatei geladen...'+chr(13)
  +'Language German loaded as default');
   sprache:=1; //deutsch als standard sprache einsetzen;
   filename:=ExtractFilePath(Paramstr(0))+'component'+inttostr(sprache)+'.ini';
  End;
 If FileExists(filename) then
 Begin
  Assignfile(bib,filename);
  reset(bib);
  compindex:=0;
  Repeat
   readln(bib,puffer);
   new(PickPoints);
   for temp:=0 to 3 do
    Begin
     PickPoints^[temp].X:=0;
     PickPoints^[temp].Y:=0;
     PickPoints^[temp].XM:=0;
     PickPoints^[temp].YM:=0;
    End;
   firstPickPoint:=getPickPoints(puffer,CompNameEndIndex,PickPoints^[0].X,PickPoints^[0].Y,PickPoints^[0].XM,PickPoints^[0].YM);
   //if not FirstPickPoint Then dispose(PickPoints);
   listbox1.Items.Add(copy(puffer,2,CompNameEndIndex-2));  //klammern <...> wegschneiden
   //showmessage(copy(puffer,charindex+1,2)+'    länge'+inttostr(length(puffer))+'    charindex'+inttostr(charindex));

   If CheckEraser(puffer) Then
    eraser:=compindex+1;

   If copy(puffer,1,1)='<' Then
    Begin
     inc(compindex);
     y:=0;
     ori:=1;
     Repeat
       readln(bib,puffer);
       IF copy(puffer,0,3)='<R>' Then
        Begin
         INC(ori);
         //if not getPickPoints(puffer,CompNameEndIndex,PickPoints^[ori-1].X,PickPoints^[ori-1].Y)
         // then showmessage('can''t find PickPoint for orientation '+inttostr(ori));
         If firstpickpoint Then
          if not getPickPoints(puffer,CompNameEndIndex,PickPoints^[ori-1].X,PickPoints^[ori-1].Y,PickPoints^[ori-1].XM,PickPoints^[ori-1].YM)
           then showmessage('can''t find PickPoint for orientation '+inttostr(ori));
          //getPickPoints(puffer,CompNameEndIndex,PickPoints^[ori-1].X,PickPoints^[ori-1].Y)
         y:=0;
        End
       Else
       IF NOT (copy(puffer,0,3)='</>') then
        Begin
         laenge:=length(puffer);
         if laenge>0 Then
         for x:=0 to laenge-1 do
          Begin
           if x>=8 then break;
           comp[compindex,ori,x,y]:=ord(puffer[x+1]);
          End;
         Inc(y);
        End;
     Until ((copy(puffer,0,3)='</>') OR EOF(bib));
     PickPointList.Add(PickPoints);

 End;


  until EOF(bib);
  closefile(bib);
 end
 Else //auch keine deutsch component1.ini gefunden
  Begin
   Showmessage('Fehlende Datei im Verzeichnis : '+chr(13)
   +'Missing file path:'+chr(13)
   +ExtractFilePath(Paramstr(0))+chr(13)
   +'Symboldatei component1.ini nicht gefunden...'+chr(13)
   +'File component1.ini not found...'+chr(13)
   +'Programm wird geschlossen. Program terminates.');
   halt;
  End;
 listbox1.ItemIndex:=0; // zeiger auf resistor setzten
 listbox1click(sender);
end;

function bigger(a,b:byte):byte;
Begin if a>b then result:=a else result:=b; end;
function smaller(a,b:byte):byte;
Begin if a<b then result:=a else result:=b; end;

procedure TmainForm.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
 refreshbox:TRect;
begin
 mausX:=X div extentx;
 mausY:=Y div extentY;
 If ((mausx>=0) And (mausy>=0) And (mausx<MatrixX) And (mausy<MatrixY)) Then
  Begin
   sbar.Panels[0].text:='x:'+inttostr(mausx);
   sbar.Panels[1].text:='y:'+inttostr(mausy);

    If mausx<mausxsave then
     Begin refreshbox.Left:=mausx; refreshbox.Right:=mausxsave+compx; End
      else Begin refreshbox.Left:=mausxsave; refreshbox.Right:=mausx+compx; End;
    If mausy<mausysave then
     Begin refreshbox.top:=mausy; refreshbox.bottom:=mausysave+compy; End
      else Begin refreshbox.top:=mausysave; refreshbox.bottom:=mausy+compy; End;
   // If (mausx>mausxsave+1) or (mausx<mausxsave-1) or (mausy>mausysave+1) or (mausy<mausysave-1)
   //   then gridraster;
    IF (mausx<>mausxsave) or (mausy<>mausysave) or (sender=MainForm) Then
    Begin
      IF compmode then
       Begin
        mRectRefresh(mausxsave,mausysave,mausxsave+compx-1,mausysave+compy-1);
        comppaint(mausx,mausy,false);
        gridrasterrect(refreshbox.left,refreshbox.top,refreshbox.right,refreshbox.bottom);
       End;
      If charmode then
       Begin
        mRectRefresh(mausxsave,mausysave,mausxsave+1,mausysave+1);
        paintbox1.Canvas.TextOut(mausx*extentx,mausy*extenty,chr(tempchar));
       End;
      If textmode then
       Begin
        mRectrefresh(mausxsave,mausysave,mausxsave+length(temptext),mausysave);
        DrawText(temptext,mausx,mausy);
       End;
      If insertROW or deleteROW Then
       Begin
         gridrasterrect(0,mausysave,matrixX-1,mausysave);
         if insertrow Then
          paintbox1.Canvas.pen.Color:=clgreen
         else
          paintbox1.Canvas.pen.Color:=clred;
         paintbox1.Canvas.MoveTo(1,mausy*extenty);
         paintbox1.Canvas.LineTo(matrixx*extentx,mausy*extenty);
         paintbox1.Canvas.MoveTo(1,(mausy+1)*extenty);
         paintbox1.Canvas.LineTo(matrixx*extentx,(mausy+1)*extenty);
         paintbox1.Canvas.pen.Color:=clblack;
       End;
     If insertCOL or deleteCOL Then
      Begin
         gridrasterrect(mausXsave,0,MausxSave,MatrixY-1);
         if insertCOL Then
          paintbox1.Canvas.pen.Color:=clgreen
         else
          paintbox1.Canvas.pen.Color:=clred;
         paintbox1.Canvas.MoveTo(mausx*extentx,1);
         paintbox1.Canvas.LineTo(mausX*extentX,matrixY*extentY);
         paintbox1.Canvas.MoveTo((mausX+1)*extentX,1);
         paintbox1.Canvas.LineTo((mausX+1)*extentX,matrixY*extentY);
         paintbox1.Canvas.pen.Color:=clblack;
      End;
     If rectmode AND (not ersterRpunkt) Then
      Begin
       // rect überschreiben, jede Seite einzeln
       mboxrefresh;
       lrectangle(rectx,recty,mausx,mausy,False);
       //gridraster;
      End;
     If (selectmode AND not ersterRpunkt AND not selectbox.rect_coord) Then
      Begin
       // rect überschreiben, jede Seite einzeln
       mboxrefresh;
       MainForm.paintbox1.Canvas.font.Color:=clgreen;
       lrectangle(rectx,recty,mausx,mausy,False);
       MainForm.paintbox1.Canvas.font.Color:=clblack;
       //gridraster;
      End;
     If NLine and not ersterlpunkt then
      Begin
       mrectrefresh(0,mausysave,matrixX,mausysave);
       mrectrefresh(mausxsave,0,mausxsave,matrixY);
       mrectrefresh(0,liney1,matrixX,liney1);
       mrectrefresh(linex1,0,linex1,matrixY);

       SimpleLinePaint(linex1,liney1,mausx,mausy,NLinechar,false);
      End;
     If Iline and not ersterlpunkt then
      Begin
       mrectrefresh(0,mausysave,matrixX,mausysave);
       mrectrefresh(mausxsave,0,mausxsave,matrixY);
       mrectrefresh(0,liney1,matrixX,liney1);
       mrectrefresh(linex1,0,linex1,matrixY);

       //ilinepaint(linex1,liney1,mausx,mausy,false);
       //weg wegen iline2
       ILinePaint2(linex1,liney1,mausx,mausy,false);
       //gridraster;
      End;
     If Dline and not ersterLpunkt then
      Begin
       mrectrefresh(linex1,liney1,mausxsave,mausysave);
       DLinePaint(linex1,liney1,mausx,mausy,false);
      End;
     If pastemode Then
      Begin
       mrefresh;
       DrawfromClipBMemo(mausx,mausy);
      End;
     If selectmode and selectbox.rect_coord Then
      Begin
       mrectrefresh(mausxsave,mausysave,mausxsave+selectbox.right-selectbox.left,mausysave+selectbox.bottom-selectbox.top);
       DrawfromClipBMemo(mausx,mausy);
      End;
    End;
    mausxsave:=mausx;
    mausysave:=mausy;
 End;
End;
function spiegeln(const z:byte):byte;
var
 temp:char;
Begin
    temp:=chr(z);
     case temp of
     '/': temp:='\';
     '\': temp:='/';
     '<': temp:='>';
     '>': temp:='<';
     '(': temp:=')';
     ')': temp:='(';
    End;
    result:=ord(temp)
End;

procedure TmainForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If not (ActiveControl.name='textedit') Then
  Begin
   if (key='r') and not editmode then MainForm.srClick(Sender);
   if ((key='s') or (key='m')) and not editmode then MainForm.ssClick(Sender);
   If editmode and NOT((key=#13) or (key=#8)) Then
    Begin
     if (NOT Text_Editor.coherent) then
      Begin
       Text_Editor.coherent:=True;
       Text_Editor.left:=Text_Editor.x;
      End;
     Text_Editor.text:=Text_Editor.text+key;
     matrix[Text_Editor.X,Text_Editor.Y]:=ord(key);
     mrectrefresh(Text_Editor.X,Text_Editor.Y,Text_Editor.X,Text_Editor.Y);
     If Text_Editor.X<Matrixx-1 Then inc(Text_Editor.x);
    End;
  MainForm.PaintBox1MouseMove(MainForm,[],mausx*extentx,mausy*extenty);
  End;
end;


procedure TmainForm.ListBox1Click(Sender: TObject);
var
x,y:byte;
begin
 ResetAllModes;
 compmode:=True;
 showcomp:=listbox1.ItemIndex+1;
 for x:=0 to compx-1 do
  for y:=0 to compy-1 do
    tempcomp[x,y]:=comp[showcomp,showori,x,y];
 gespiegelt:=False;
 sbar.Panels[3].text:='';
end;

procedure SetPaintBox;
Begin
 MainForm.paintbox1.Width:=matrixx*extentx+2;
 MainForm.paintbox1.Height:=matrixy*extenty+2;
 MainForm.SB.VertScrollBar.Range:=matrixy*extenty+10;
 MainForm.SB.HorzScrollBar.Range:=matrixx*extentx+10;
End;
procedure TmainForm.FormShow(Sender: TObject);
begin
 ClipBForm.loadDialog.InitialDir:=ExtractFilePath(Paramstr(0))+'Big_Sym\';
 openAAC.InitialDir:=ExtractFilePath(Paramstr(0));
 extentx:=paintbox1.Canvas.textextent('H').cx;
 extenty:=paintbox1.Canvas.textextent('H').cy;

 SetPaintBox;
 //ListBox1.Height:=Paintbox1.Height; //+commandF.memo2.Height+5; // optisch netter...

 listbox1.ItemIndex:=0;
 ListBox1click(sender);
 mrefresh;
 If not ((ParamStr(1))=('/nolicense')) Then SPlashF.Showmodal;
end;

procedure TmainForm.CopytoClipClick(Sender: TObject);
var
 x,y,temp,linecountcut,leercount:byte;
 stringpuffer:string;
 lineempty:boolean;
begin
 ClipBForm.ClipBMemo.clear;
 linecountcut:=0;
 for y:=0 to MatrixY-1 do
 Begin
 stringpuffer:='';
 lineempty:=True;
 leercount:=0;
  for x:=0 to MatrixX-1 do
  Begin
   temp:=matrix[x,y];
   If temp=0 then temp:=32;
   If temp=32 then
    Inc(leercount)
     Else
      Begin
       lineempty:=False;
       leercount:=0;
      End;
   //paintbox1.Canvas.TextOut(x*extentx,y+extenty,chr(temp));   weiß nicht mehr weshalb...
   stringpuffer:=stringpuffer+chr(temp);
  End;
  stringpuffer:=copy(stringpuffer,1,matrixX-leercount);
  If lineempty Then inc(linecountcut)
   Else linecountcut:=0;
  ClipBForm.ClipBMemo.Lines.Add(stringpuffer);
 end;
 // überflüssige Zeilen am Ende abschneiden
 for x:=ClipBForm.ClipBMemo.Lines.Count downto ClipBForm.ClipBMemo.Lines.Count-linecountcut do
  ClipBForm.ClipBMemo.Lines.Delete(x);
 ClipBForm.ClipBMemo.Lines.Add('(created by AACircuit '+version+' www.tech-chat.de)');
 ClipBForm.ClipBMemo.SelectAll;
 ClipBForm.ClipBMemo.CopyToClipboard;
 ClipBForm.ClipBMemo.SelLength:=0;
end;

procedure TmainForm.FormCreate(Sender: TObject);
var
 BIB: TextFile;
 filename:shortstring;
 puffer:string;
 hauptm:shortint;
 unterm:shortint;
 sprachstring:shortstring;
 sprachcount:byte;
 NewItem: TMenuItem;

begin
 MatrixX:=72; //felder breite
 MatrixY:=36; //felder höhe
 Screen.Cursors[AdvCursor1] := LoadCursor(HInstance, 'ADVCROSS1');
 Screen.Cursors[AdvCursor2] := LoadCursor(HInstance, 'ADVCROSS2');
 Screen.Cursors[AdvCursor3] := LoadCursor(HInstance, 'ADVCROSS3');
 mainForm.Caption:='AACircuit '+version+'                                                                                             by Andreas Weber';
 PickPointList:=TList.Create; //für Import ASC
 firstimport:=True;
 edited:=false;
 showori:=1;
 selectbox.transparent:=True;
 showcomp:=1;
 Text_Editor.X:=0;
 Text_Editor.Y:=0;
 Text_Editor.left:=0;
 LoadIData;
 filename:=ExtractFilePath(Paramstr(0))+'menu.ini';
 If not FileExists(filename) then
  Begin
   Showmessage('Fehlende Datei im Verzeichnis : '+chr(13)
   +'Missing file path:'+chr(13)
   +ExtractFilePath(Paramstr(0))+chr(13)
   +'Menüdatei menu.ini nicht gefunden...'+chr(13)
   +'File menu.ini not found...'+chr(13)
   +'Programm wird geschlossen. Program terminates.');
   halt;
  End
 Else Begin
  Assignfile(bib,filename);
  reset(bib);
  readln(bib,puffer);
  sprache:=strtoint(copy(puffer,10,1));
  sprachcount:=0;
  repeat
   If copy(puffer,3,1)='='    Then
    Begin
     sprachstring:=(copy(puffer,4,length(puffer)-4));
     //showmessage(sprachstring);
//     mainmenu1.items[3].Items[sprachcount].caption:=sprachstring;
      inc(sprachcount);
      NewItem := TMenuItem.Create(Self);
      NewItem.Caption :=sprachstring;
      NewItem.OnClick:=spracheclick;
      NeWItem.GroupIndex:=1;
      NewItem.RadioItem:=True;
      NewItem.Name:='Sprachmenu'+inttostr(sprachcount);
      mainmenu1.items[4].Add(NewItem);
    End;
   readln(bib,puffer);
  until EOF(bib);
  mainmenu1.items[4].items[sprache-1].checked:=True; // aktivierte sprache markieren
  reset(bib);
  repeat
   readln(bib,puffer);
  until (copy(puffer,1,3)='<'+inttostr(sprache)+'=') or EOF(bib);
  for hauptm:=0 to 3 do
  Begin
  readln(bib,puffer);
  mainmenu1.Items[hauptm].caption:=puffer;
   For unterm:=0 to mainmenu1.Items[hauptm].count-1 do
    Begin
     readln(bib,puffer);
     mainmenu1.items[hauptm].Items[unterm].caption:=puffer;
    End;
   End;
  readln(bib,puffer);
  mainmenu1.items[4].caption:=puffer; //Hauptmenü SPRACHE
  readln(bib,puffer);
  If puffer='<SpeedButton.hints>' Then
  Begin
  readln(bib,puffer);
  SpeedButton9.Hint:=puffer;
  readln(bib,puffer);
  SpeedButton10.Hint:=puffer;
  readln(bib,puffer);
  lb1.Hint:=puffer;
  readln(bib,puffer);
  lb2.Hint:=puffer;
  readln(bib,puffer);
  lb3.Hint:=puffer;
  readln(bib,puffer);
  lb4.Hint:=puffer;
  readln(bib,puffer);
  SpeedButton7.Hint:=puffer;
  readln(bib,puffer);
  SpeedButton8.Hint:=puffer;
  readln(bib,puffer);
  InsertRowB.Hint:=puffer;
  readln(bib,puffer);
  DeleteRowB.Hint:=puffer;
  readln(bib,puffer);
  InsertColB.Hint:=puffer;
  readln(bib,puffer);
  DeleteColB.Hint:=puffer;
  readln(bib,puffer);
  MoveB.Hint:=puffer;
  readln(bib,puffer);
  BClip.Hint:=Puffer;
  readln(bib,puffer);
  pasteclipB.Hint:=puffer;
  readln(bib,puffer);
  editmodeB.Hint:=puffer;
  readln(bib,puffer);
  LoadPasteb.Hint:=puffer;
  End;
  closefile(bib);
 end;
 MainForm.comploadClick(sender);  //Symbole laden
end;

procedure TmainForm.bcompClick(Sender: TObject);
begin
SEditForm.show;
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
 charmode:=True;
 tempchar:=ord((sender as Tbutton).caption[1]);
end;

procedure TmainForm.Beenden1Click(Sender: TObject);
begin close; end;

procedure TmainForm.Speichernunter1Click(Sender: TObject);
var
 saveFile:TextFile;
 x,y:Byte;      //spalten und zeilen
 zeile:string;
 temp,leercount:byte;
begin
 IF (savedialog1.Execute) AND (NOT (fileExists(savedialog1.FileName)) OR
     (Application.MessageBox(Pchar('Vorhandene Datei überschreiben?'+chr(13)+'Overwrite existing file?'),'File already exists!',4+16+mb_DefButton2)=IDYes)) Then
  Begin
   Assignfile(saveFile,savedialog1.FileName);
   rewrite(saveFile);
   For y:=0 to matrixY-1 do
   Begin
    zeile:='';
    leercount:=0;
    for x:=0 to matrixX-1 do
     Begin
      temp:=matrix[x,y];
      if temp=0 Then temp:=32;
      if temp=32 Then INC(leercount) Else leercount:=0;
      zeile:=zeile+chr(temp);
     End;
    zeile:=copy(zeile,1,matrixX-leercount);
    Writeln(saveFile,zeile);
   End;
  zeile:='(created by AACircuit '+version+' www.tech-chat.de)';
  Writeln(saveFile,zeile);
  closefile(SaveFile);
  edited:=False;
  End;
end;

procedure TmainForm.Neu1Click(Sender: TObject);
begin
 IF (Application.MessageBox(Pchar('Wirklich ALLES löschen?'+chr(13)+'Delete ALL?'),'Vorsicht!',4+16+mb_DefButton2)=IDYes)
 Then
  Begin
   fillchar(matrix,sizeof(matrix),#0);
   commandF.memo2.clear;
   mrefresh;
  End;
end;

procedure TmainForm.ffnen1Click(Sender: TObject);
begin
 ClipBForm.ShowModal;
 IF clipbform.ModalResult=mrYes then
  Begin
   fillchar(matrix,sizeof(matrix),#0);
   commandF.memo2.clear;
   edited:=false;
   ResetALLModes;
   pastemode:=True;
   MainForm.PaintBox1MouseMove(MainForm,[],1,1);
   MainForm.PaintBox1MouseDown(Sender,mbleft,[],1,1);
   MainForm.ListBox1Click(Sender);
  End;
end;
procedure TmainForm.srClick(Sender: TObject);
var
 x,y:Byte;
Begin
 gespiegelt:=False;
 sbar.Panels[3].text:='';

 inc(showori);
 if showori=5 then showori:=1;
   for x:=0 to compx-1 do
    for y:=0 to compy-1 do
     tempcomp[x,y]:=comp[showcomp,showori,x,y];
 If sprache=1 Then SBar.Panels[2].Text:='Ausrichtung:'+inttostr((showori-1)*90)
 Else SBar.Panels[2].Text:='Orientation:'+inttostr((showori-1)*90)
end;

procedure TmainForm.ssClick(Sender: TObject);
var
x,y,mitte:byte;
temp:byte;
begin
 mitte:=trunc(compx/2);
  for y:=0 to compy-1 do
   Begin
    for x:=0 to mitte-1 do
    Begin
     temp:=spiegeln(tempcomp[x,y]);
     tempcomp[x,y]:=spiegeln(tempcomp[compx-1-x,y]);
     tempcomp[compx-1-x,y]:=temp;
    End;
   tempcomp[mitte,y]:=spiegeln(tempcomp[mitte,y]);
   End;
   gespiegelt:=NOT gespiegelt;
  If gespiegelt then
   Begin
    If sprache=1 Then sbar.Panels[3].text:='Symbol vertikal gespiegelt'
    else sbar.Panels[3].text:='Mirrored';
   End
  Else sbar.Panels[3].text:='';

end;
procedure TmainForm.lb1Click(Sender: TObject);
begin
 ResetAllModes;
 If sender=lb1 Then NLinechar:=0;
 If sender=lb2 Then NLinechar:=111;
 If sender=lb3 Then NLinechar:=43;
 If sender=lb4 then NLinechar:=39;
 NLine:=true;
 ersterLpunkt:=True;
 ersterRpunkt:=True;
end;

procedure TmainForm.InsertRowBClick(Sender: TObject);
begin ResetAllModes; insertROW:=True; end;
procedure TmainForm.InsertColBClick(Sender: TObject);
begin ResetAllModes; insertCOL:=True; end;
procedure TmainForm.DeleteRowBClick(Sender: TObject);
begin ResetAllModes; deleteROW:=True; end;
procedure TmainForm.DeleteColBClick(Sender: TObject);
begin ResetAllModes; deleteCOL:=True; end;

procedure TmainForm.UnDo1Click(Sender: TObject);
begin
 commandF.memo2.lines.Delete(commandF.memo2.Lines.Count-1);
 neuzeichnen1Click(Sender);
end;

procedure TmainForm.neuzeichnen1Click(Sender: TObject);
var
 Line:Word;
 mx,my,mx2,my2,x,y,scan,memocomp,memoori,stemp:byte;
 memoline,mindex,mText:shortString;
 gespiegeltchar:char;
 smitte:byte;
begin
 //testweise weggemacht wegen load ASCII
 fillchar(matrix,sizeof(matrix),#0);
 If commandF.memo2.lines.count>0 then
 for line:=0 to commandF.memo2.Lines.Count-1 do
  Begin
   memoline:=commandF.memo2.lines[line];
   mindex:=copy(memoline,1,4);

   If mindex='comp' Then
    Begin
     getcompdata(memoline,memocomp,memoori,mx,my,gespiegeltchar);
     If (mx<MatrixX) and (my<MatrixY) Then
      Begin
         If gespiegeltchar='s' then //symbol wurde gespiegelt
           Begin
            smitte:=trunc(compx/2);
            for y:=0 to compy-1 do
             Begin
              for x:=0 to smitte-1 do
              Begin
               stemp:=spiegeln(comp[memocomp,memoori,compx-1-x,y]);
               If stemp>0 Then matrix[mx+x,my+y]:=stemp;
               stemp:=spiegeln(comp[memocomp,memoori,x,y]);
               IF stemp>0 Then matrix[mx+compx-1-x,my+y]:=stemp;
              End;
              stemp:=spiegeln(comp[memocomp,memoori,smitte,y]);
              If stemp>0 Then matrix[mx+smitte,my+y]:=stemp;
             End;
           End;
        If gespiegeltchar='n' then
         Begin
          for x:=0 to compx-1 do
           for y:=0 to compy-1 do
             If (comp[memocomp,memoori,x,y]>0) AND (mx+x<MatrixX) AND (my+y<MatrixY) Then
              matrix[mx+x,my+y]:=comp[memocomp,memoori,x,y];
          End;
       End;
      End;
   If mindex='text' then
    Begin
     gettextdata(memoline,mtext,mx,my);
     If my<MatrixY Then
      for x:=0 to length(mtext)-1 do
       IF mx+x<MatrixX Then
        matrix[mx+x,my]:=ord(mtext[x+1]);
    End;
   If mindex='char' then
    Begin
     getchardata(memoline,memocomp,mx,my);
     If (mx<MatrixX) and (my<MatrixY) Then
      matrix[mx,my]:=ord(memocomp);
    End;
   If mindex='IROW' then
    Begin
     scan:=6;
     while (memoline[scan]<>',') And (scan<=length(memoline)) do inc(scan);
     mausy:=strtoint(copy(memoline,6,scan-6));
     for mx:=0 to matrixx-1 do
       Begin
         for my:=matrixY-1 downto mausy+1 do
          matrix[mx,my]:=matrix[mx,my-1];
        matrix[mx,mausy]:=0;
       End;
    End;
   If mindex='DROW' then
    Begin
     scan:=6;
     while (memoline[scan]<>',') And (scan<=length(memoline)) do inc(scan);
     mausy:=strtoint(copy(memoline,6,scan-6));
     for mx:=0 to matrixx-1 do
       Begin
         for my:=mausy to matrixY-2 do
          matrix[mx,my]:=matrix[mx,my+1];
        matrix[mx,matrixY-1]:=0;
       End;
    End;
   If mindex='ICOL' then
    Begin
     scan:=6;
     while (memoline[scan]<>',') And (scan<=length(memoline)) do inc(scan);
     mausx:=strtoint(copy(memoline,6,scan-6));
     for my:=0 to matrixY-1 do
       Begin
         for mx:=matrixX-1 downto mausX+1 do
          matrix[mx,my]:=matrix[mx-1,my];
        matrix[mausx,my]:=0;
       End;
     End;
   If mindex='DCOL' then
    Begin
     scan:=6;
     while (memoline[scan]<>',') And (scan<=length(memoline)) do inc(scan);
     mausx:=strtoint(copy(memoline,6,scan-6));
     for my:=0 to matrixY-1 do
       Begin
         for mx:=mausX to matrixX-2 do
          matrix[mx,my]:=matrix[mx+1,my];
        matrix[matrixX-1,my]:=0;
       End;
    End;
   If mindex='rect' then
    Begin
     getlinedata(memoline,memocomp,mx,my,mx2,my2);
     lrectangle(mx,my,mx2,my2,true);
    End;
   If mindex='line' then
    Begin
     getlinedata(memoline,memocomp,mx,my,mx2,my2);
     SimpleLinePaint(mx,my,mx2,my2,memocomp,True);
    End;
   If mindex='MagL' then
    Begin
     getlinedata(memoline,memocomp,mx,my,mx2,my2);
     If memocomp=0 Then ILinePaint(mx,my,mx2,my2,True)
      Else ILinepaint2(mx,my,mx2,my2,True);
     //ILinepaint(mx,my,mx2,my2,true);
     // komm. wegen iline2
    End;
   If mindex='DirL' then
    Begin
     getlinedata(memoline,memocomp,mx,my,mx2,my2);
     DLinePaint(mx,my,mx2,my2,True);
    End;
  End;
  mrefresh;
end;

procedure TmainForm.Circuitspeichernunter1Click(Sender: TObject);
var
 saveFile:TextFile;
 sline:Byte;      //Memo Zeile
begin
 IF (SaveAAC.Execute) AND (NOT (fileExists(SaveAAC.FileName)) OR
     (Application.MessageBox(Pchar('Vorhandene Datei überschreiben?'+chr(13)+'Overwrite existing file?'),'File already exists!',4+16+mb_DefButton2)=IDYes)) Then
  Begin
   OpenAAC.InitialDir:=ExtractFilePath(SaveAAC.FileName);
   Assignfile(saveFile,SaveAAC.FileName);
   rewrite(saveFile);
   For sline:=0 to commandF.memo2.lines.count-1 do
    Writeln(saveFile,commandF.memo2.lines[sline]);
   closefile(SaveFile);
   edited:=False;
  End;
end;

procedure TmainForm.Circuitffnen1Click(Sender: TObject);
begin
 If OpenAAC.Execute Then
 Begin
  edited:=false;
  commandF.memo2.Lines.LoadFromFile(OpenAAC.FileName);
  SaveAAC.FileName:=OpenAAC.FileName;
 End;
 neuzeichnen1Click(sender);
 PaintBox1MouseMove(Sender,[],10,10);
end;

procedure TmainForm.moveBClick(Sender: TObject);
begin
 If compmode then mrectrefresh(mausxsave,mausysave,mausxsave+compx,mausysave+compy);
 ResetAllModes;
 movemode:=True;
end;

procedure TmainForm.SpeedButton7Click(Sender: TObject);
begin
 ResetAllModes;
 ersterLpunkt:=True;
 rectmode:=true;
 ersterRPunkt:=True;
end;

procedure TmainForm.SpeedButton8Click(Sender: TObject);
begin
 ResetAllModes;
 ersterLpunkt:=True;
 ersterRpunkt:=True;
 ILine:=True;
end;

procedure TmainForm.PaintBox1Paint(Sender: TObject);
begin
 mrefresh;
end;

procedure TmainForm.e1Click(Sender: TObject);
var
x,y:byte;
begin
 ResetAllModes;
 compmode:=True;
 ListBox1.ItemIndex:=eraser-1;
 if sender=e1 then showori:=1;
 if sender=e2 then showori:=2;
 if sender=e3 then showori:=3;
 if sender=e4 then showori:=4;
 showcomp:=eraser;
 for x:=0 to compx-1 do
  for y:=0 to compy-1 do
    tempcomp[x,y]:=comp[eraser,showori,x,y];
 gespiegelt:=False;
 sbar.Panels[3].text:='';
end;

procedure TmainForm.spracheclick(Sender: TObject);
var
 sprachindex:byte;
 quelle:Textfile;
 ziel:Textfile;
 puffer:string;
 filename:shortstring;
 zeile:byte;
begin
  sprachindex:=strtoint(copy((sender as Tmenuitem).name,11,1));
  mainForm.mainmenu1.items[4].items[sprachindex-1].checked:=true;
  filename:=ExtractFilePath(Paramstr(0))+'menu.ini';
 If not FileExists(filename) then
  Begin
   Showmessage('Fehlende Datei im Verzeichnis : '+chr(13)
   +'Missing file path:'+chr(13)
   +ExtractFilePath(Paramstr(0))+chr(13)
   +'Menüdatei menu.ini nicht gefunden...'+chr(13)
   +'File menu.ini not found...'+chr(13)
   +'Programm wird geschlossen. Program terminates.');
   halt;
  End
 Else Begin
  zeile:=0;
  DeleteFile(copy(filename,1,length(filename)-4)+'.bak');
  RenameFile(filename,copy(filename,1,length(filename)-4)+'.bak');
  //rename(quelle,copy(filename,1,length(filename)-4)+'.bak');
  Assignfile(quelle,copy(filename,1,length(filename)-4)+'.bak');
  reset(quelle);
  Assignfile(ziel,filename);
  rewrite(ziel);
  repeat
   inc(zeile);
   readln(quelle,puffer);
   if zeile=1 then puffer:='language='+inttostr(sprachindex);
   writeln(ziel,puffer);
  until eof(quelle);
  closefile(quelle);
  closefile(ziel);
 End;
  showmessage('Programm neu starten um Änderungen zu aktivieren!'+chr(13)+'Please restart program to apply changes');
end;

procedure TmainForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (key=46) AND not Editmode Then // Entf
  Begin
   modeChangeRefresh;
   MoveBclick(sender);
  End;
 If editmode then
 Begin
  IF (KEY=VK_UP) OR (KEY=VK_down) OR(KEY=VK_left) OR (KEY=VK_right) OR (key=8) or (key=13) Then
    Begin
     If key=8 Then
      Text_Editor.text:=Copy(Text_Editor.text,0,Length(Text_Editor.text)-1)
     Else PlaceEditorText;
     //Alte Cursorposition löschen
     mrectrefresh(Text_Editor.X,Text_Editor.Y,Text_Editor.X,Text_Editor.Y);
     blink.Enabled:=False;
    End;
  if (key=VK_UP) AND (Text_Editor.y>0) then dec(Text_Editor.y);
  if (key=VK_down) AND (Text_Editor.y<matrixy-1) then inc(Text_Editor.y);
  if (key=VK_right) AND (Text_Editor.x<matrixx-1) then
    inc(Text_Editor.x);
  if ((key=VK_left) or (key=8)) AND (Text_Editor.x>0) then dec(Text_Editor.x);
  If key=8 then  //backspace
    matrix[Text_Editor.X,Text_Editor.Y]:=32;
  IF (key=13) AND (Text_Editor.y<matrixy-1) then   //Return
   Begin
    inc(Text_Editor.y);
    Text_Editor.X:=Text_Editor.left;
   End;
  drawcursor;
  key:=0;
 End;
end;

procedure TmainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if edited then
  canclose:=(Application.MessageBox(Pchar('Wirklich beenden?'+chr(13)+'Close program?'),'AAcircuit '+version,4+32+mb_DefButton2)=IDYes);
end;

procedure TmainForm.Drucken1Click(Sender: TObject);
var
 x,y,leercount,temp:byte;
 zeile:shortstring;
 //hdpi,vdpi:Integer;
const
 oRand=100;
 lRand=200;
begin
 If PrintDialog1.Execute Then
  Begin
  Printer.Orientation:=poPortrait;
  Printer.Title:='AACircuit '+version;
  Printer.BeginDoc;
  //Printer.Canvas.font.Name:='Courier New';
  //Printer.Canvas.Font.Size:=10;
  Printer.Canvas.Font:=FontDialog1.Font;
  zeile:=FormatDateTime('dddd, mmmm d, yyyy, hh:mm AM/PM ',now)+SaveAAC.FileName;
  Printer.Canvas.TextOut(lRand,50,zeile);
    For y:=0 to matrixY-1 do
     Begin
      zeile:='';
      leercount:=0;
      for x:=0 to matrixX-1 do
       Begin
        temp:=matrix[x,y];
        if temp=0 Then temp:=32;
        if temp=32 Then INC(leercount) Else leercount:=0;
        zeile:=zeile+chr(temp);
       End;
      zeile:=copy(zeile,1,matrixX-leercount);
      Printer.Canvas.TextOut(lRand,y*(Abs(Printer.Canvas.font.Height)+10)+oRand,zeile);
     End;
  Printer.EndDoc;
  End;
end;
procedure TmainForm.BlinkTimer(Sender: TObject);
begin
 If editmode then
  Begin
   If Text_Editor.blink Then
    drawcursor
   Else mrectrefresh(Text_Editor.X,Text_Editor.Y,Text_Editor.X,Text_Editor.Y);
   Text_Editor.blink:=Not Text_Editor.blink
  End;
end;

procedure TmainForm.editModeBClick(Sender: TObject);
begin
 //ToDo Refresh mit Raster nachschauen
 Listbox1.SetFocus;
 ResetALLModes;
 Editmode:=True;
 blink.Enabled:=True;
 Text_Editor.text:='';
 Text_Editor.coherent:=False;
end;

procedure TmainForm.TextmodeBClick(Sender: TObject);
begin
 ResetAllModes;
 textmode:=True;
 tempText:=textedit.Text;
end;

procedure TmainForm.pasteclipBClick(Sender: TObject);
begin
 ResetALLModes;
 pastemode:=True;
 ClipBForm.ClipBMemo.Clear;
 ClipBForm.ClipBMemo.PasteFromClipboard;
end;

procedure TmainForm.CommandsExpertsonly1Click(Sender: TObject);
begin
 commandf.show;
end;

procedure TmainForm.loadpasteBClick(Sender: TObject);
begin
 clipbform.showmodal;
 IF clipbform.ModalResult=mrYes then
  Begin
   ResetALLModes;
   pastemode:=True;
  End;
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
 Selectmode:=True;
 ersterLpunkt:=True;
 ersterRPunkt:=True;
end;

function LoadASC(const filename:string):boolean;
var
 ascfile: Textfile;
 puffer:string;
 compname,flagtext:shortstring;
 ori:Byte;
 x,y,x2,y2,xmin,xmax,ymin,ymax,temp:Integer;
 firstcomp:boolean;
 mirrored:boolean;
 mirror_char:char;
 symbol_Name_Value:TPoint;
Begin
  //neues Verfahren, zuerst alle Symbole/LAbels/Text usw, dann erst wires
  result:=false;
  If FileExists(filename) Then
   Begin
    result:=True;
    fillchar(matrix,sizeof(matrix),#0);
    commandF.memo2.clear;
    mrefresh;
    firstcomp:=true;
    xmin:=0; xmax:=0; ymin:=0; ymax:=0;
    Assignfile(ascfile,filename);
    reset(ascfile);
    Repeat
     readln(ascfile,puffer);
     getASCsymbol(puffer,compname,x,y,ori,mirrored);
     x2:=x; y2:=y;
     getASCWire(puffer,x,y,x2,y2);
     getASCFlag(puffer,flagtext,x,y);
     If firstcomp AND ((Copy(puffer,0,6)='SYMBOL') OR (Copy(puffer,0,4)='WIRE'))
      Then
       Begin
        xmin:=x; xmax:=x; ymin:=y; ymax:=y; firstcomp:=false;
       End;
     If x<xmin then xmin:=x;
     if x2<xmin Then xmin:=x2;
     If x>xmax then xmax:=x;
     if x2>xmaX THEN xmax:=x2;
     If y<ymin then ymin:=y;
     if y2<ymin then ymin:=y2;
     If y>ymax then ymax:=y;
     if y2>ymax then ymax:=y2;
    Until EOF(ascfile);
    xmin:=xmin-6; ymin:=ymin-1; //kleiner Rand
    //erst die wires zeichnen
    reset(ascfile);
    Repeat
     readln(ascfile,puffer);
     If (getASCWire(puffer,x,y,x2,y2)) Then
      Begin
       x:=(x-xmin);
       y:=(y-ymin);
       x2:=(x2-xmin);
       y2:=(y2-ymin);
       If ((x>=0) AND (y>=0) AND (x2>=0) AND (y2>=0)) Then
        If (x=x2) or (y=y2) Then  //waagerechte oder senkrechte Linie
           commandF.memo2.Lines.Add('line:0,'+inttostr(x)+','+inttostr(y)+','+inttostr(x2)+','+inttostr(y2))
          //commandF.memo2.Lines.Add('MagL:1,'+inttostr(x)+','+inttostr(y)+','+inttostr(x2)+','+inttostr(y2))
        Else //schräge Linie
         commandF.memo2.Lines.Add('DirL:0,'+inttostr(x)+','+inttostr(y)+','+inttostr(x2)+','+inttostr(y2));
      End;
    Until EOF(ascfile);
    reset(ascfile);
    Repeat
     readln(ascfile,puffer);
     If getASCsymbol(puffer,compname,x,y,ori,mirrored) Then
      Begin
       //showmessage('imported '+inttostr(x)+'   '+inttostr(y)+' ori:'+inttostr(ori));
       temp:=FindCompByName(compname);
       If temp>=0 Then
        Begin
         PickPoints:=PickPointList.Items[temp-1];

         If mirrored Then
          Begin
           mirror_char:='s';
           x:=x-xmin-PickPoints^[ori-1].XM-CompX;
           y:=y-ymin-PickPoints^[ori-1].YM;
           symbol_Name_Value.x:=x+compX;
           symbol_Name_Value.y:=y+1
          End
         else
          Begin
           mirror_char:='n';
            x:=x-xmin-PickPoints^[ori-1].X;
            y:=y-ymin-PickPoints^[ori-1].Y;
            symbol_Name_Value.x:=x+4;
            symbol_Name_Value.y:=y+1;
          End;
         if ((x>=0) AND (y>=0)) Then
         commandF.memo2.Lines.Add('comp:'+inttostr(temp)+','+inttostr(ori)+','+
              inttostr(x)+','+inttostr(y)+','+mirror_char+','+MainForm.Listbox1.Items[temp-1]);
        End;
      End;
     If getASCFlag(puffer,flagtext,x,y) Then
      Begin
       x:=x-xmin;
       y:=y-ymin;
       if ((x>=0) AND (y>=0)) Then
        commandF.memo2.Lines.Add('text:'+flagtext+','+inttostr(x)+','+inttostr(y));
      End;
     If getASCText(puffer,flagtext,x,y) Then
      Begin
       x:=x-xmin;
       y:=y-ymin;
       if ((x>=0) AND (y>=0)) Then
        commandF.memo2.Lines.Add('text:'+flagtext+','+inttostr(x)+','+inttostr(y));
      End;
     If getASCInstName(puffer,flagtext) then
       if (symbol_Name_Value.x>=0) AND (symbol_Name_Value.y>=0) then
        commandF.memo2.Lines.Add('text:'+flagtext+','+inttostr(symbol_Name_Value.x)+','+inttostr(symbol_Name_Value.y));
     If getASCValue(puffer,flagtext) then
       if (symbol_Name_Value.x>=0) AND (symbol_Name_Value.y>=0) then
        commandF.memo2.Lines.Add('text:'+flagtext+','+inttostr(symbol_Name_Value.x)+','+inttostr(symbol_Name_Value.y+1));
    Until EOF(ascfile);
   closefile(ascfile);
  End;
End;
procedure TmainForm.IMPORTascLTSpice1Click(Sender: TObject);
begin
 If firstimport Then
 Begin
  showmessage('This feature is new and not completed.'+chr(13)
             +'AACircuit looks up for a corresponding substring in the'+chr(13)
             +'component.ini symbol header. If the Symbol appears shifted,'+chr(13)
             +'you can edit the "pickpoints" in the symbol editor and check the'+chr(13)
             +'result with "reload ASC".');
  firstimport:=False;
 End;
 If (openasc.Execute) and (LoadASC(openasc.filename)) Then
  MainForm.neuzeichnen1Click(sender);
end;

procedure TmainForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
 listindex:integer;
begin
 for listindex:=0 to (PickPointList.Count-1) do
  Begin
   PickPoints:=PickPointList.Items[listindex];
   Dispose(PickPoints);
 End;
end;

procedure TmainForm.ListBox1KeyPress(Sender: TObject; var Key: Char);
begin
 //keine eingabe an die listbox
 key:=chr(0);
end;

procedure TmainForm.SpeedButton1Click(Sender: TObject);
begin
 ResetAllModes;
 ersterLpunkt:=True;
 ersterRpunkt:=True;
 DLine:=True;
end;

procedure TmainForm.SpeedButton6Click(Sender: TObject);
begin
 PaintBox1.Cursor:=AdvCursor2;
end;

procedure TmainForm.SpeedButton5Click(Sender: TObject);
begin
 PaintBox1.Cursor:=AdvCursor1;
end;

procedure TmainForm.SpeedButton4Click(Sender: TObject);
begin
 PaintBox1.Cursor:=crcross;

end;

procedure TmainForm.SpeedButton11Click(Sender: TObject);
begin
 PaintBox1.Cursor:=AdvCursor3;  
end;

procedure TmainForm.AutoLineconfigurieren1Click(Sender: TObject);
begin
 maglineF.showmodal;
end;

procedure TmainForm.Help1Click(Sender: TObject);
begin Application.HelpCommand(HELP_INDEX,0) end;

procedure TmainForm.licenceandcredits1Click(Sender: TObject);
begin
 splashF.showmodal;
end;

procedure TmainForm.visitHomepage1Click(Sender: TObject);
begin
ShellExecute(Application.Handle, 'open',
             PCHar('http://www.tech-chat.de'), nil, nil,
             SW_ShowNormal);

end;

procedure TMainForm.CMMouseEnter(var Message: TMessage);
begin
  inherited;
end;

procedure TMainForm.CMMouseLeave(var Message: TMessage);
begin
  inherited;
  if TObject(Message.LParam)=SB then
    ModeChangeRefresh;
end;

procedure TmainForm.size1Click(Sender: TObject);
begin
 size1.Checked:=True;
 MatrixX:=72; //felder breite
 MatrixY:=36; //felder höhe
 SetPaintBox;
end;

procedure TmainForm.size2Click(Sender: TObject);
begin
 size2.Checked:=True;
 MatrixX:=72; //felder breite
 MatrixY:=49; //felder höhe
 SetPaintBox;
end;

procedure TmainForm.size4Click(Sender: TObject);
begin
 size3.Checked:=True;
 MatrixX:=200; //felder breite
 MatrixY:=70; //felder höhe
 SetPaintBox;
end;

procedure TmainForm.size3Click(Sender: TObject);
begin
 size3.Checked:=True;
 MatrixX:=100; //felder breite
 MatrixY:=49; //felder höhe
 SetPaintBox;
end;

end.

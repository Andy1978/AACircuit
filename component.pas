unit component;

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
  StdCtrls, ExtCtrls, Buttons;

type
  TSeditform = class(TForm)
    ListBox1: TListBox;
    GB: TGroupBox;
    PB: TPaintBox;
    NewSymbolB: TBitBtn;
    Symbolsave: TBitBtn;
    GroupBox2: TGroupBox;
    preview: TPaintBox;
    Edit1: TEdit;
    refreshB: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    L1x: TLabel;
    L1y: TLabel;
    L1mx: TLabel;
    L1my: TLabel;
    SB: TSpeedButton;
    SBM: TSpeedButton;
    L2x: TLabel;
    L2y: TLabel;
    L2mx: TLabel;
    L2my: TLabel;
    L3x: TLabel;
    L3y: TLabel;
    L3mx: TLabel;
    L3my: TLabel;
    L4x: TLabel;
    L4y: TLabel;
    L4mx: TLabel;
    L4my: TLabel;
    Button1: TButton;
    procedure PBMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure NewSymbolBClick(Sender: TObject);
    procedure SymbolsaveClick(Sender: TObject);
    procedure refreshBClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure PBPaint(Sender: TObject);
    procedure PPLabel(Sender: TObject);
    procedure SBClick(Sender: TObject);
    procedure SBMClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Seditform: TSeditform;
  cursorx,cursory:byte;
  PBFocus,getPP,getPPM:boolean;

implementation

uses main;

{$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}

procedure ClearCursor;
Begin
  //alte Cursor-Box grau überschreiben
  SEditForm.pb.canvas.brush.Style:=bsclear;
  SEditForm.pb.canvas.pen.color:=clgray;
  SEditForm.pb.Canvas.Rectangle(cursorx*extentx,cursory*extenty,(cursorx+1)*extentx+1,(cursory+1)*extenty+1);
End;
procedure showcursor;
Begin;
  //neuer Cursor anzeigen
  SEditForm.pb.canvas.brush.Style:=bsclear;
  SEditForm.pb.canvas.pen.color:=clblue;
  SEditForm.pb.Canvas.Rectangle(cursorx*extentx,cursory*extenty,(cursorx+1)*extentx+1,(cursory+1)*extenty+1);
End;

Procedure ShowSymbol(const compindex:integer;var Target:TPaintBox);
var
 ori,x,y,temp:byte;
Begin
  //PaintBox lِschen und Symbol in allen Ausrichtungen zeichen
  SEditForm.PB.Canvas.Font.Color:=ClBlack;
  Target.Canvas.FillRect(Rect(0,0,MatrixX*extentx,MatrixY*extenty)) ;
  for ori:=1 to 4 do
   for x:=0 to CompX-1 do
    for y:=0 to CompY-1 do
     Begin
      If comp[compindex,ori,x,y]>0 Then
       temp:=comp[compindex,ori,x,y]
      Else temp:=32;
       Target.Canvas.TextOut(x*extentx,(y+((ori-1)*compy))*extenty,chr(temp));
     End;
End;
Procedure ShowPP(const compindex:integer);
var
 ori,x,y,xm,ym:ShortInt;
Begin
  PickPoints:=PickPointList.Items[compindex];
  For ori:=0 to 3 do
   Begin
     x:=PickPoints^[ori].X;
     y:=PickPoints^[ori].Y;
     xm:=PickPoints^[ori].XM;
     ym:=PickPoints^[ori].YM;
     SEditForm.PB.Canvas.Font.Color:=clgreen;
     SEditForm.PB.Canvas.TextOut(abs(x)*extentx,(abs(y)+CompY*ori)*extenty,'X');
     SEditForm.PB.Canvas.Font.Color:=clyellow;
     SEditForm.PB.Canvas.TextOut(abs(xm)*extentx,(abs(ym)+CompY*ori)*extenty,'M');

     (SEditForm.FindComponent('L'+inttostr(ori+1)+'x')as TLabel).caption:='x= '+inttostr(x);
     (SEditForm.FindComponent('L'+inttostr(ori+1)+'y')as TLabel).caption:='y= '+inttostr(y);
     (SEditForm.FindComponent('L'+inttostr(ori+1)+'mx')as TLabel).caption:='x= '+inttostr(xm);
     (SEditForm.FindComponent('L'+inttostr(ori+1)+'my')as TLabel).caption:='y= '+inttostr(ym);

     if x>=0 Then
      Begin
       (SEditForm.FindComponent('L'+inttostr(ori+1)+'x')as TLabel).Tag:=0;
       (SEditForm.FindComponent('L'+inttostr(ori+1)+'x')as TLabel).Font.Color:=clgreen;
      End
     Else
      Begin
      (SEditForm.FindComponent('L'+inttostr(ori+1)+'x')as TLabel).Tag:=1;
      (SEditForm.FindComponent('L'+inttostr(ori+1)+'x')as TLabel).Font.Color:=clred;
      End;

     if y>=0 Then
      Begin
       (SEditForm.FindComponent('L'+inttostr(ori+1)+'y')as TLabel).Tag:=0;
       (SEditForm.FindComponent('L'+inttostr(ori+1)+'y')as TLabel).Font.Color:=clgreen;
      End
     Else
      Begin
      (SEditForm.FindComponent('L'+inttostr(ori+1)+'y')as TLabel).Tag:=1;
      (SEditForm.FindComponent('L'+inttostr(ori+1)+'y')as TLabel).Font.Color:=clred;
      End;

     if xm>=0 Then
      Begin
       (SEditForm.FindComponent('L'+inttostr(ori+1)+'mx')as TLabel).Tag:=0;
       (SEditForm.FindComponent('L'+inttostr(ori+1)+'mx')as TLabel).Font.Color:=clgreen;
      End
     Else
      Begin
      (SEditForm.FindComponent('L'+inttostr(ori+1)+'mx')as TLabel).Tag:=1;
      (SEditForm.FindComponent('L'+inttostr(ori+1)+'mx')as TLabel).Font.Color:=clred;
      End;
     if ym>=0 Then
      Begin
       (SEditForm.FindComponent('L'+inttostr(ori+1)+'my')as TLabel).Tag:=0;
       (SEditForm.FindComponent('L'+inttostr(ori+1)+'my')as TLabel).Font.Color:=clgreen;
      End
     Else
      Begin
      (SEditForm.FindComponent('L'+inttostr(ori+1)+'my')as TLabel).Tag:=1;
      (SEditForm.FindComponent('L'+inttostr(ori+1)+'my')as TLabel).Font.Color:=clred;
      End;

   End;
End;


procedure InsertAndShowKey(const Key:Char);
var
 ori,cy:byte;
Begin
 ori:=trunc(CursorY/CompY); //ori aus der cursorposition berechnen
 cy:=CursorY-(ori*CompY);   //relativer Y-Cursor im Symbol berechnen
 comp[SEditForm.listbox1.ItemIndex+1,ori+1,CursorX,cy]:=ord(key);
 SEditForm.PB.canvas.brush.style:=bssolid;
 SEditForm.PB.canvas.pen.color:=clblack;
 SEditForm.PB.Canvas.TextOut(CursorX*ExtentX,CursorY*extentY,key);
End;

procedure PaintGrid;
var
 temp:byte;
Begin
 SEditForm.pb.canvas.pen.Color:=clgray;
 for temp:=0 to compx do
 Begin
  SEditForm.pb.Canvas.MoveTo(temp*extentx,0);
  SEditForm.pb.Canvas.LineTo(temp*extentx,compy*4*extenty);
 End;
 For temp:=0 to compy*4 do
  Begin
   If (temp mod compy)=0 Then SEditForm.pb.canvas.pen.color:=clred
    Else SEditForm.pb.canvas.pen.color:=clgray;
   SEditForm.pb.Canvas.MoveTo(0,temp*extenty);
   SEditForm.pb.Canvas.LineTo(compx*extentx,temp*extenty);
  End;
End;

procedure TSeditform.PBMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
 ori:byte;
begin
  PBFocus:=True;
  ClearCursor;
  //neue Cursorposition berechnen
  cursorx:=trunc(x/extentx); cursory:=trunc(y/extenty);
  If getPP or getPPM then
   Begin
    PickPoints:=PickPointList.Items[SEditForm.listbox1.ItemIndex];
    ori:=trunc(CursorY/CompY); //ori aus der cursorposition berechnen
    If getPP Then
     Begin
      If (FindComponent('L'+inttostr(ori+1)+'x')as TLabel).Tag=0 Then
       PickPoints^[ori].X:=CursorX
      Else PickPoints^[ori].X:=-CursorX;
      If (FindComponent('L'+inttostr(ori+1)+'y')as TLabel).Tag=0 Then
       PickPoints^[ori].Y:=(CursorY-(ori*CompY))
      Else PickPoints^[ori].Y:=-(CursorY-(ori*CompY));
     End;
    If getPPM Then
     Begin
      If (FindComponent('L'+inttostr(ori+1)+'mx')as TLabel).Tag=0 Then
       PickPoints^[ori].XM:=CursorX
      Else PickPoints^[ori].XM:=-CursorX;
      If (FindComponent('L'+inttostr(ori+1)+'my')as TLabel).Tag=0 Then
       PickPoints^[ori].YM:=(CursorY-(ori*CompY))
      Else PickPoints^[ori].YM:=-(CursorY-(ori*CompY));
     End;
    PickPointList.Items[SEditForm.listbox1.ItemIndex]:=PickPoints;
    PB.Cursor:=crHandPoint;
    Seditform.refreshBClick(Sender);
    showPP(ListBox1.ItemIndex);
   End;
  Showcursor;
end;

procedure TSeditform.FormKeyPress(Sender: TObject; var Key: Char);
begin
If PBFocus Then
 Begin
  clearcursor;
  InsertAndShowKey(key);
  If CursorX<(CompX-1) Then inc(cursorx)
  Else
   //CarryReturn And LineFeed ;-)
   Begin CursorX:=0; INC(CursorY); End;
  IF cursory>=compy*4 Then cursory:=0;
  showcursor;
  key:=chr(0);
 End;
end;

procedure TSeditform.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 sendkey:char;
begin
If PBFocus Then
 Begin
  ClearCursor;
  if (key=VK_UP) AND (cursory>0) then dec(cursory);
  if (key=VK_down) AND (cursory<compy*4-1) then inc(cursory);
  if (key=VK_right) AND (cursorx<compx-1) then inc(cursorx);
  if (key=VK_left) AND (cursorx>0) then dec(cursorx);
  Showcursor;
  IF (KEY=VK_UP) OR (KEY=VK_down) OR(KEY=VK_left) OR(KEY=VK_right)
   Then key:=0;
  //pb.canvas.pen.color:=clblack;
  //pb.canvas.brush.style:=bssolid;
  //pb.canvas.brush.Color:=clsilver;
  if key=VK_delete then
  Begin
   sendkey:=chr(0);
   SEditForm.FormKeyPress(Sender,sendkey);
  end;
  key:=0;
 End;
 //key:=0;
end;

procedure TSeditform.FormShow(Sender: TObject);
begin
 If Sprache=2 Then
  Begin
   seditform.NewSymbolB.caption:='new symbol';
   seditform.Symbolsave.caption:='save symbols';
  End;
 pb.Width:=extentx*compx+1;  pb.Height:=extenty*4*compy+1;
 preview.Width:=compX*extentX+1; preview.Height:=compY*4*extentY+1;

 listbox1.Items:=MainForm.listbox1.items;
 listbox1.ItemIndex:=0;
 //nEdit.Text:=Listbox1.Items[ListBox1.itemindex];
 pbFocus:=False;
 Seditform.refreshBClick(Sender);
end;

procedure TSeditform.ListBox1Click(Sender: TObject);
begin
 PBFocus:=False;
 GetPP:=False;
 GetPPM:=False;
 PB.Cursor:=crCross;
 //nEdit.Text:=Listbox1.Items[ListBox1.itemindex];
 pb.canvas.brush.style:=bssolid;
 pb.Canvas.brush.Color:=clwhite;
 ShowSymbol(Listbox1.ItemIndex+1,Seditform.pb);
 ShowSymbol(Listbox1.ItemIndex+1,Seditform.preview);
 PaintGrid;
 //pb.Canvas.pen.color:=clblack;
end;

procedure TSeditform.NewSymbolBClick(Sender: TObject);
begin
 listbox1.Items.Add(edit1.text);
 PBFocus:=False;
 GetPP:=False;
 GetPPM:=False;
 PB.Cursor:=crCross;
end;
function CheckEraser(const puffer:string):boolean;
Begin
 Result:=( (pos('Eraser',puffer)>0) OR (pos('Viskelوder',puffer)>0) OR (pos('Radierer',puffer)>0))
End;
procedure FillEraser(const index:integer);
var
 x,y,ori:integer;
Begin
 // 2x2, 3x3, 4x4, 5x5 eraser anlegen;
 for ori:=1 to 4 do
  for y:=0 to CompY-1 do
   for x:=0 to CompX-1 do
    Begin
     if ((x<ori+2) AND (y<ori+1)) Then comp[index,ori,x,y]:=32
      Else comp[index,ori,x,y]:=0;
    End;
End;
function AddPrefix(const z:shortint):shortstring;
Begin If z>=0 then result:='+'+inttostr(z) Else result:=inttostr(z); End;

procedure TSeditform.SymbolsaveClick(Sender: TObject);
var
 BIB: TextFile;
 filename:shortstring;
 puffer:string;
 x,y:integer; // Zنhler für Raster
 compindex,ori:byte; //orientation
 char:byte;
 name:shortstring;
 PickPointsExist:boolean;
begin
// PBFocus:=False;
  filename:=ExtractFilePath(Paramstr(0))+'component'+inttostr(sprache)+'.ini';
  Assignfile(bib,filename);
  rewrite(bib);
  //reset(bib);
  For compindex:=1 to listbox1.Items.Count Do
   Begin
    PickPointsExist:=((compindex-1)<(PickPointList.Count));
    If PickPointsExist then PickPoints:=PickPointList.Items[compindex-1];
    name:='<'+listbox1.Items[compindex-1]+'>';
    //if ((name='<Radierer/Eraser>') OR (name='<Viskelوder>'))

    If CheckEraser(name) Then FillEraser(compindex);

    If PickPointsExist then puffer:=name+AddPrefix(PickPoints^[0].X)+AddPrefix(PickPoints^[0].Y)+' '+
            AddPrefix(PickPoints^[0].XM)+AddPrefix(PickPoints^[0].YM)
    else puffer:=name;
    writeln(bib,puffer);
    For ori:=1 to 4 Do
     Begin
      For y:=0 to compy-1 do
       Begin
        Puffer:='';
        For x:=0 to compx-1 Do
         Begin
          char:=comp[compindex,ori,x,y];
           IF (char=32) AND NOT CheckEraser(name)
            Then char:=0;
         puffer:=puffer+chr(char);
         End;
        writeln(bib,puffer);
       End;
       If ori<4 Then
        Begin
         If PickPointsExist then puffer:='<R>'+AddPrefix(PickPoints^[ori].X)+AddPrefix(PickPoints^[ori].Y)+' '+
             AddPrefix(PickPoints^[ori].XM)+AddPrefix(PickPoints^[ori].YM)
         else puffer:='<R>';
         writeln(bib,puffer);
        End;
     End;
     puffer:='</>';
     writeln(bib,puffer);
    End;
  closefile(bib);
  showmessage(ExtractFilePath(Paramstr(0))+'component'+inttostr(sprache)+'.ini'+' saved...');
end;

procedure TSeditform.refreshBClick(Sender: TObject);
begin
// ShowSymbol(Listbox1.ItemIndex+1,Seditform.preview);
// GetPP:=False;
 pb.canvas.brush.style:=bssolid;
 pb.Canvas.brush.Color:=clwhite;
 ShowSymbol(Listbox1.ItemIndex+1,Seditform.pb);
 ShowSymbol(Listbox1.ItemIndex+1,Seditform.preview);
 PaintGrid;
end;

procedure TSeditform.Edit1Change(Sender: TObject);
begin
 PBFocus:=False;
end;

procedure TSeditform.BitBtn2Click(Sender: TObject);
begin
 LoadASC(MainForm.openasc.filename);
 MainForm.neuzeichnen1Click(sender);
end;

procedure TSeditform.PBPaint(Sender: TObject);
begin
 Seditform.refreshBClick(Sender);
end;

procedure TSeditform.PPLabel(Sender: TObject);
var
 m_Label,x_Label,y_Label:boolean;
 ori:byte;
begin
 If TLabel(sender).Tag=1 Then
  Begin
   TLabel(sender).Tag:=0;
   //TLabel(sender).Font.Color:=clgreen;
  End
  Else
   Begin
    TLabel(sender).Tag:=1;
    //TLabel(sender).Font.Color:=clred;
   End;

  PickPoints:=PickPointList.Items[ListBox1.ItemIndex];
  m_Label:=copy(TLabel(sender).name,3,1)='m';
  If m_Label Then
   Begin
    x_Label:=copy(TLabel(sender).name,4,1)='x';
    y_Label:=copy(TLabel(sender).name,4,1)='y';
   End
  Else
   Begin
    x_Label:=copy(TLabel(sender).name,3,1)='x';
    y_Label:=copy(TLabel(sender).name,3,1)='y';
   End;
  ori:=strtoint(copy(TLabel(sender).name,2,1))-1;
  If m_label Then
   Begin
    If x_Label Then
     Begin
      If TLabel(sender).Tag=1 Then
       PickPoints^[ori].XM:=ABS(PickPoints^[ori].XM)*-1
      Else
       PickPoints^[ori].XM:=ABS(PickPoints^[ori].XM);
     End;
    If y_Label Then
     Begin
      If TLabel(sender).Tag=1 Then
       PickPoints^[ori].YM:=ABS(PickPoints^[ori].YM)*-1
      Else
       PickPoints^[ori].YM:=ABS(PickPoints^[ori].YM);
     End;
   End
  Else
   Begin
    If x_Label Then
     Begin
      If TLabel(sender).Tag=1 Then
       PickPoints^[ori].X:=ABS(PickPoints^[ori].X)*-1
      Else
       PickPoints^[ori].X:=ABS(PickPoints^[ori].X);
     End;
    If y_Label Then
     Begin
      If TLabel(sender).Tag=1 Then
       PickPoints^[ori].Y:=ABS(PickPoints^[ori].Y)*-1
      Else
       PickPoints^[ori].Y:=ABS(PickPoints^[ori].Y);
     End;
   End;
   PickPointList.Items[SEditForm.listbox1.ItemIndex]:=PickPoints;
   ShowPP(SEditForm.ListBox1.ItemIndex);
end;

procedure TSeditform.SBClick(Sender: TObject);
begin
 getPP:=True;
 getPPM:=False;
    PB.Cursor:=crHandPoint;
//    Seditform.refreshBClick(Sender);
//    showPP(ListBox1.ItemIndex);
end;

procedure TSeditform.SBMClick(Sender: TObject);
begin
 getPPM:=True;
 getPP:=False;
    PB.Cursor:=crHandPoint;
//    Seditform.refreshBClick(Sender);
//    showPP(ListBox1.ItemIndex);
end;

procedure TSeditform.Button1Click(Sender: TObject);
begin
 Seditform.refreshBClick(Sender);
 showPP(ListBox1.ItemIndex);
end;

end.

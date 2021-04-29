unit component;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages,
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
    procedure PBMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
  cursorx, cursory: Byte;
  PBFocus, getPP, getPPM: Boolean;

implementation

uses main;

{$R *.lfm}

procedure ClearCursor;
begin
  //alte Cursor-Box grau überschreiben
  SEditForm.pb.canvas.brush.Style := bsclear;
  SEditForm.pb.canvas.pen.color := clgray;
  SEditForm.pb.Canvas.Rectangle(cursorx * extentx, cursory * extenty, (cursorx + 1) * extentx + 1, (cursory + 1) * extenty + 1);
end;

procedure showcursor;
begin
  ;
  //neuer Cursor anzeigen
  SEditForm.pb.canvas.brush.Style := bsclear;
  SEditForm.pb.canvas.pen.color := clblue;
  SEditForm.pb.Canvas.Rectangle(cursorx * extentx, cursory * extenty, (cursorx + 1) * extentx + 1, (cursory + 1) * extenty + 1);
end;

procedure ShowSymbol(const compindex: Integer; var Target: TPaintBox);
var
  ori, x, y, temp: Byte;
begin
  //PaintBox lِschen und Symbol in allen Ausrichtungen zeichen
  SEditForm.PB.Canvas.Font.Color := ClBlack;
  Target.Canvas.FillRect(Rect(0, 0, MatrixX * extentx, MatrixY * extenty));
  for ori := 1 to 4 do
    for x := 0 to CompX - 1 do
      for y := 0 to CompY - 1 do
      begin
        if Comp[compindex, ori, x, y] > 0 then
          temp := Comp[compindex, ori, x, y]
        else
          temp := 32;
        Target.Canvas.TextOut(x * extentx, (y + ((ori - 1) * compy)) * extenty, chr(temp));
      end;
end;

procedure ShowPP(const compindex: Integer);
var
  ori, x, y, xm, ym: Shortint;
begin
  PickPoints := PickPointList.Items[compindex];
  for ori := 0 to 3 do
  begin
    x := PickPoints^[ori].X;
    y := PickPoints^[ori].Y;
    xm := PickPoints^[ori].XM;
    ym := PickPoints^[ori].YM;
    SEditForm.PB.Canvas.Font.Color := clgreen;
    SEditForm.PB.Canvas.TextOut(abs(x) * extentx, (abs(y) + CompY * ori) * extenty, 'X');
    SEditForm.PB.Canvas.Font.Color := clyellow;
    SEditForm.PB.Canvas.TextOut(abs(xm) * extentx, (abs(ym) + CompY * ori) * extenty, 'M');

    (SEditForm.FindComponent('L' + IntToStr(ori + 1) + 'x') as TLabel).Caption := 'x= ' + IntToStr(x);
    (SEditForm.FindComponent('L' + IntToStr(ori + 1) + 'y') as TLabel).Caption := 'y= ' + IntToStr(y);
    (SEditForm.FindComponent('L' + IntToStr(ori + 1) + 'mx') as TLabel).Caption := 'x= ' + IntToStr(xm);
    (SEditForm.FindComponent('L' + IntToStr(ori + 1) + 'my') as TLabel).Caption := 'y= ' + IntToStr(ym);

    if x >= 0 then
    begin
      (SEditForm.FindComponent('L' + IntToStr(ori + 1) + 'x') as TLabel).Tag := 0;
      (SEditForm.FindComponent('L' + IntToStr(ori + 1) + 'x') as TLabel).Font.Color := clgreen;
    end
    else
    begin
      (SEditForm.FindComponent('L' + IntToStr(ori + 1) + 'x') as TLabel).Tag := 1;
      (SEditForm.FindComponent('L' + IntToStr(ori + 1) + 'x') as TLabel).Font.Color := clred;
    end;

    if y >= 0 then
    begin
      (SEditForm.FindComponent('L' + IntToStr(ori + 1) + 'y') as TLabel).Tag := 0;
      (SEditForm.FindComponent('L' + IntToStr(ori + 1) + 'y') as TLabel).Font.Color := clgreen;
    end
    else
    begin
      (SEditForm.FindComponent('L' + IntToStr(ori + 1) + 'y') as TLabel).Tag := 1;
      (SEditForm.FindComponent('L' + IntToStr(ori + 1) + 'y') as TLabel).Font.Color := clred;
    end;

    if xm >= 0 then
    begin
      (SEditForm.FindComponent('L' + IntToStr(ori + 1) + 'mx') as TLabel).Tag := 0;
      (SEditForm.FindComponent('L' + IntToStr(ori + 1) + 'mx') as TLabel).Font.Color := clgreen;
    end
    else
    begin
      (SEditForm.FindComponent('L' + IntToStr(ori + 1) + 'mx') as TLabel).Tag := 1;
      (SEditForm.FindComponent('L' + IntToStr(ori + 1) + 'mx') as TLabel).Font.Color := clred;
    end;
    if ym >= 0 then
    begin
      (SEditForm.FindComponent('L' + IntToStr(ori + 1) + 'my') as TLabel).Tag := 0;
      (SEditForm.FindComponent('L' + IntToStr(ori + 1) + 'my') as TLabel).Font.Color := clgreen;
    end
    else
    begin
      (SEditForm.FindComponent('L' + IntToStr(ori + 1) + 'my') as TLabel).Tag := 1;
      (SEditForm.FindComponent('L' + IntToStr(ori + 1) + 'my') as TLabel).Font.Color := clred;
    end;

  end;
end;


procedure InsertAndShowKey(const Key: Char);
var
  ori, cy: Byte;
begin
  ori := trunc(CursorY / CompY); //ori aus der cursorposition berechnen
  cy := CursorY - (ori * CompY);   //relativer Y-Cursor im Symbol berechnen
  Comp[SEditForm.listbox1.ItemIndex + 1, ori + 1, CursorX, cy] := Ord(key);
  SEditForm.PB.canvas.brush.style := bssolid;
  SEditForm.PB.canvas.pen.color := clblack;
  SEditForm.PB.Canvas.TextOut(CursorX * ExtentX, CursorY * extentY, key);
end;

procedure PaintGrid;
var
  temp: Byte;
begin
  SEditForm.pb.canvas.pen.Color := clgray;
  for temp := 0 to compx do
  begin
    SEditForm.pb.Canvas.MoveTo(temp * extentx, 0);
    SEditForm.pb.Canvas.LineTo(temp * extentx, compy * 4 * extenty);
  end;
  for temp := 0 to compy * 4 do
  begin
    if (temp mod compy) = 0 then
      SEditForm.pb.canvas.pen.color := clred
    else
      SEditForm.pb.canvas.pen.color := clgray;
    SEditForm.pb.Canvas.MoveTo(0, temp * extenty);
    SEditForm.pb.Canvas.LineTo(compx * extentx, temp * extenty);
  end;
end;

procedure TSeditform.PBMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  ori: Byte;
begin
  PBFocus := True;
  ClearCursor;
  //neue Cursorposition berechnen
  cursorx := trunc(x / extentx);
  cursory := trunc(y / extenty);
  if getPP or getPPM then
  begin
    PickPoints := PickPointList.Items[SEditForm.listbox1.ItemIndex];
    ori := trunc(CursorY / CompY); //ori aus der cursorposition berechnen
    if getPP then
    begin
      if (FindComponent('L' + IntToStr(ori + 1) + 'x') as TLabel).Tag = 0 then
        PickPoints^[ori].X := CursorX
      else
        PickPoints^[ori].X := -CursorX;
      if (FindComponent('L' + IntToStr(ori + 1) + 'y') as TLabel).Tag = 0 then
        PickPoints^[ori].Y := (CursorY - (ori * CompY))
      else
        PickPoints^[ori].Y := -(CursorY - (ori * CompY));
    end;
    if getPPM then
    begin
      if (FindComponent('L' + IntToStr(ori + 1) + 'mx') as TLabel).Tag = 0 then
        PickPoints^[ori].XM := CursorX
      else
        PickPoints^[ori].XM := -CursorX;
      if (FindComponent('L' + IntToStr(ori + 1) + 'my') as TLabel).Tag = 0 then
        PickPoints^[ori].YM := (CursorY - (ori * CompY))
      else
        PickPoints^[ori].YM := -(CursorY - (ori * CompY));
    end;
    PickPointList.Items[SEditForm.listbox1.ItemIndex] := PickPoints;
    PB.Cursor := crHandPoint;
    Seditform.refreshBClick(Sender);
    showPP(ListBox1.ItemIndex);
  end;
  Showcursor;
end;

procedure TSeditform.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if PBFocus then
  begin
    clearcursor;
    InsertAndShowKey(key);
    if CursorX < (CompX - 1) then
      Inc(cursorx)
    else
      //CarryReturn And LineFeed ;-)
    begin
      CursorX := 0;
      Inc(CursorY);
    end;
    if cursory >= compy * 4 then
      cursory := 0;
    showcursor;
    key := chr(0);
  end;
end;

procedure TSeditform.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  sendkey: Char;
begin
  if PBFocus then
  begin
    ClearCursor;
    if (key = VK_UP) and (cursory > 0) then
      Dec(cursory);
    if (key = VK_down) and (cursory < compy * 4 - 1) then
      Inc(cursory);
    if (key = VK_right) and (cursorx < compx - 1) then
      Inc(cursorx);
    if (key = VK_left) and (cursorx > 0) then
      Dec(cursorx);
    Showcursor;
    if (KEY = VK_UP) or (KEY = VK_down) or (KEY = VK_left) or (KEY = VK_right) then
      key := 0;
    //pb.canvas.pen.color:=clblack;
    //pb.canvas.brush.style:=bssolid;
    //pb.canvas.brush.Color:=clsilver;
    if key = VK_delete then
    begin
      sendkey := chr(0);
      SEditForm.FormKeyPress(Sender, sendkey);
    end;
    key := 0;
  end;
  //key:=0;
end;

procedure TSeditform.FormShow(Sender: TObject);
begin
  if Sprache = 2 then
  begin
    seditform.NewSymbolB.Caption := 'new symbol';
    seditform.Symbolsave.Caption := 'save symbols';
  end;
  pb.Width := extentx * compx + 1;
  pb.Height := extenty * 4 * compy + 1;
  preview.Width := compX * extentX + 1;
  preview.Height := compY * 4 * extentY + 1;

  listbox1.Items := MainForm.listbox1.items;
  listbox1.ItemIndex := 0;
  //nEdit.Text:=Listbox1.Items[ListBox1.itemindex];
  pbFocus := False;
  Seditform.refreshBClick(Sender);
end;

procedure TSeditform.ListBox1Click(Sender: TObject);
begin
  PBFocus := False;
  GetPP := False;
  GetPPM := False;
  PB.Cursor := crCross;
  //nEdit.Text:=Listbox1.Items[ListBox1.itemindex];
  pb.canvas.brush.style := bssolid;
  pb.Canvas.brush.Color := clwhite;
  ShowSymbol(Listbox1.ItemIndex + 1, Seditform.pb);
  ShowSymbol(Listbox1.ItemIndex + 1, Seditform.preview);
  PaintGrid;
  //pb.Canvas.pen.color:=clblack;
end;

procedure TSeditform.NewSymbolBClick(Sender: TObject);
begin
  listbox1.Items.Add(edit1.Text);
  PBFocus := False;
  GetPP := False;
  GetPPM := False;
  PB.Cursor := crCross;
end;

function CheckEraser(const puffer: String): Boolean;
begin
  Result := ((pos('Eraser', puffer) > 0) or (pos('Viskelوder', puffer) > 0) or (pos('Radierer', puffer) > 0));
end;

procedure FillEraser(const index: Integer);
var
  x, y, ori: Integer;
begin
  // 2x2, 3x3, 4x4, 5x5 eraser anlegen;
  for ori := 1 to 4 do
    for y := 0 to CompY - 1 do
      for x := 0 to CompX - 1 do
      begin
        if ((x < ori + 2) and (y < ori + 1)) then
          Comp[index, ori, x, y] := 32
        else
          Comp[index, ori, x, y] := 0;
      end;
end;

function AddPrefix(const z: Shortint): shortstring;
begin
  if z >= 0 then
    Result := '+' + IntToStr(z)
  else
    Result := IntToStr(z);
end;

procedure TSeditform.SymbolsaveClick(Sender: TObject);
var
  BIB: TextFile;
  filename: shortstring;
  puffer: String;
  x, y: Integer; // Zنhler für Raster
  compindex, ori: Byte; //orientation
  Char: Byte;
  Name: shortstring;
  PickPointsExist: Boolean;
begin
  // PBFocus:=False;
  filename := ExtractFilePath(ParamStr(0)) + 'component' + IntToStr(sprache) + '.ini';
  Assignfile(bib, filename);
  rewrite(bib);
  //reset(bib);
  for compindex := 1 to listbox1.Items.Count do
  begin
    PickPointsExist := ((compindex - 1) < (PickPointList.Count));
    if PickPointsExist then
      PickPoints := PickPointList.Items[compindex - 1];
    Name := '<' + listbox1.Items[compindex - 1] + '>';
    //if ((name='<Radierer/Eraser>') OR (name='<Viskelوder>'))

    if CheckEraser(Name) then
      FillEraser(compindex);

    if PickPointsExist then
      puffer := Name + AddPrefix(PickPoints^[0].X) + AddPrefix(PickPoints^[0].Y) + ' ' +
        AddPrefix(PickPoints^[0].XM) + AddPrefix(PickPoints^[0].YM)
    else
      puffer := Name;
    writeln(bib, puffer);
    for ori := 1 to 4 do
    begin
      for y := 0 to compy - 1 do
      begin
        Puffer := '';
        for x := 0 to compx - 1 do
        begin
          Char := Comp[compindex, ori, x, y];
          if (Char = 32) and not CheckEraser(Name) then
            Char := 0;
          puffer := puffer + chr(Char);
        end;
        writeln(bib, puffer);
      end;
      if ori < 4 then
      begin
        if PickPointsExist then
          puffer := '<R>' + AddPrefix(PickPoints^[ori].X) + AddPrefix(PickPoints^[ori].Y) + ' ' +
            AddPrefix(PickPoints^[ori].XM) + AddPrefix(PickPoints^[ori].YM)
        else
          puffer := '<R>';
        writeln(bib, puffer);
      end;
    end;
    puffer := '</>';
    writeln(bib, puffer);
  end;
  closefile(bib);
  ShowMessage(ExtractFilePath(ParamStr(0)) + 'component' + IntToStr(sprache) + '.ini' + ' saved...');
end;

procedure TSeditform.refreshBClick(Sender: TObject);
begin
  // ShowSymbol(Listbox1.ItemIndex+1,Seditform.preview);
  // GetPP:=False;
  pb.canvas.brush.style := bssolid;
  pb.Canvas.brush.Color := clwhite;
  ShowSymbol(Listbox1.ItemIndex + 1, Seditform.pb);
  ShowSymbol(Listbox1.ItemIndex + 1, Seditform.preview);
  PaintGrid;
end;

procedure TSeditform.Edit1Change(Sender: TObject);
begin
  PBFocus := False;
end;

procedure TSeditform.BitBtn2Click(Sender: TObject);
begin
  LoadASC(MainForm.openasc.filename);
  MainForm.neuzeichnen1Click(Sender);
end;

procedure TSeditform.PBPaint(Sender: TObject);
begin
  Seditform.refreshBClick(Sender);
end;

procedure TSeditform.PPLabel(Sender: TObject);
var
  m_Label, x_Label, y_Label: Boolean;
  ori: Byte;
begin
  if TLabel(Sender).Tag = 1 then
  begin
    TLabel(Sender).Tag := 0;
    //TLabel(sender).Font.Color:=clgreen;
  end
  else
  begin
    TLabel(Sender).Tag := 1;
    //TLabel(sender).Font.Color:=clred;
  end;

  PickPoints := PickPointList.Items[ListBox1.ItemIndex];
  m_Label := copy(TLabel(Sender).Name, 3, 1) = 'm';
  if m_Label then
  begin
    x_Label := copy(TLabel(Sender).Name, 4, 1) = 'x';
    y_Label := copy(TLabel(Sender).Name, 4, 1) = 'y';
  end
  else
  begin
    x_Label := copy(TLabel(Sender).Name, 3, 1) = 'x';
    y_Label := copy(TLabel(Sender).Name, 3, 1) = 'y';
  end;
  ori := StrToInt(copy(TLabel(Sender).Name, 2, 1)) - 1;
  if m_label then
  begin
    if x_Label then
    begin
      if TLabel(Sender).Tag = 1 then
        PickPoints^[ori].XM := ABS(PickPoints^[ori].XM) * -1
      else
        PickPoints^[ori].XM := ABS(PickPoints^[ori].XM);
    end;
    if y_Label then
    begin
      if TLabel(Sender).Tag = 1 then
        PickPoints^[ori].YM := ABS(PickPoints^[ori].YM) * -1
      else
        PickPoints^[ori].YM := ABS(PickPoints^[ori].YM);
    end;
  end
  else
  begin
    if x_Label then
    begin
      if TLabel(Sender).Tag = 1 then
        PickPoints^[ori].X := ABS(PickPoints^[ori].X) * -1
      else
        PickPoints^[ori].X := ABS(PickPoints^[ori].X);
    end;
    if y_Label then
    begin
      if TLabel(Sender).Tag = 1 then
        PickPoints^[ori].Y := ABS(PickPoints^[ori].Y) * -1
      else
        PickPoints^[ori].Y := ABS(PickPoints^[ori].Y);
    end;
  end;
  PickPointList.Items[SEditForm.listbox1.ItemIndex] := PickPoints;
  ShowPP(SEditForm.ListBox1.ItemIndex);
end;

procedure TSeditform.SBClick(Sender: TObject);
begin
  getPP := True;
  getPPM := False;
  PB.Cursor := crHandPoint;
  //    Seditform.refreshBClick(Sender);
  //    showPP(ListBox1.ItemIndex);
end;

procedure TSeditform.SBMClick(Sender: TObject);
begin
  getPPM := True;
  getPP := False;
  PB.Cursor := crHandPoint;
  //    Seditform.refreshBClick(Sender);
  //    showPP(ListBox1.ItemIndex);
end;

procedure TSeditform.Button1Click(Sender: TObject);
begin
  Seditform.refreshBClick(Sender);
  showPP(ListBox1.ItemIndex);
end;

end.

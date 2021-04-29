unit ImportASC;

{$MODE Delphi}

interface

uses SysUtils, Dialogs;

function getASCsymbol(const line: Shortstring; var Name: shortstring; var x, y: Integer; var ori: Byte; var mirrored: Boolean): Boolean;
function getASCFlag(const line: Shortstring; var Text: shortstring; var x, y: Integer): Boolean;
function getASCWire(const line: Shortstring; var x, y, x2, y2: Integer): Boolean;
function getASCText(const line: Shortstring; var Text: shortstring; var x, y: Integer): Boolean;
//function getASCWindows(const line:Shortstring;var x,y:integer):boolean;
function getASCInstName(const line: Shortstring; var Text: shortstring): Boolean;
function getASCValue(const line: Shortstring; var Text: shortstring): Boolean;

implementation


function getASCsymbol(const line: Shortstring; var Name: shortstring; var x, y: Integer; var ori: Byte; var mirrored: Boolean): Boolean;
var
  scan, lastscan: Byte;
  temp: Shortstring;
begin
  Result := False;
  if Copy(line, 0, 6) = 'SYMBOL' then
  begin
    try
      scan := 8;
      while (line[scan] <> ' ') do
        Inc(scan);
      Name := copy(line, 8, scan - 8);
      Inc(scan);
      lastscan := scan;
      while (line[scan] <> ' ') do
        Inc(scan);
      x := round(StrToInt(copy(line, lastscan, scan - lastscan)) / 4);
      Inc(scan);
      lastscan := scan;
      while (line[scan] <> ' ') do
        Inc(scan);
      y := round(StrToInt(copy(line, lastscan, scan - lastscan)) / 4);
      Inc(scan);
      lastscan := scan;
      while scan < length(line) do
        Inc(scan);
      mirrored := copy(line, lastscan, 1) = 'M';
      temp := copy(line, lastscan + 1, length(line));
      ori := round(StrToInt(temp) / 90) + 1;
      Result := True;
    except
      on EConvertError do
        ShowMessage(line + ' ist kein gültiges *.asc Kommando...');
    end;
  end;
end;

function getASCFlag(const line: Shortstring; var Text: shortstring; var x, y: Integer): Boolean;
var
  scan, lastscan: Byte;
begin
  Result := False;
  if copy(line, 0, 4) = 'FLAG' then
  begin
    try
      scan := 6;
      while (line[scan] <> ' ') do
        Inc(scan);
      x := round(StrToInt(copy(line, 6, scan - 6)) / 4) - 1;
      Inc(scan);
      lastscan := scan;
      while (line[scan] <> ' ') do
        Inc(scan);
      y := round(StrToInt(copy(line, lastscan, scan - lastscan)) / 4) + 1;
      Inc(scan);
      Text := copy(line, scan, length(line));
      Result := True;
    except
      on EConvertError do
        ShowMessage(line + ' ist kein gültiges *.asc Kommando...');
    end;
  end;
end;

function getASCText(const line: Shortstring; var Text: shortstring; var x, y: Integer): Boolean;
var
  scan, lastscan: Byte;
begin
  Result := False;
  if AnsiLowerCase(copy(line, 0, 4)) = 'text' then
  begin
    try
      scan := 6;
      while (line[scan] <> ' ') do
        Inc(scan);
      x := round(StrToInt(copy(line, 6, scan - 6)) / 4);
      Inc(scan);
      lastscan := scan;
      while (line[scan] <> ' ') do
        Inc(scan);
      y := round(StrToInt(copy(line, lastscan, scan - lastscan)) / 4) + 1;
      Inc(scan);
      while (line[scan] <> ' ') do
        Inc(scan);
      Inc(scan);
      while (line[scan] <> ' ') do
        Inc(scan);
      Inc(scan);
      Text := copy(line, scan, length(line));
      Result := True;
    except
      on EConvertError do
        ShowMessage(line + ' ist kein gültiges *.asc Kommando...');
    end;
  end;
end;

{function getASCWindows(const line:Shortstring;var x,y:integer):boolean;
var
 scan,lastscan:byte;
 //o:integer;
Begin
 //ToDO nicht fertig
 result:=false;
 If AnsiLowerCase(copy(line,0,6))='window' Then
 Begin
 Try
     scan:=8;
     while (line[scan]<>' ') do inc(scan);
     x:=round(strtoint(copy(line,8,scan-8))/4);
     inc(scan);
     while (line[scan]<>' ') do inc(scan);
     //o:=round(strtoint(copy(line,lastscan,scan-lastscan))/4);
     inc(scan);
     lastscan:=scan;
     while (line[scan]<>' ') do inc(scan);
     y:=round(strtoint(copy(line,lastscan,scan-lastscan))/4);
     Result:=True;
  except on EConvertError do showmessage(line+' ist kein gültiges *.asc Kommando...');
  End;
  End;
End;   }

function getASCWire(const line: Shortstring; var x, y, x2, y2: Integer): Boolean;
var
  scan, lastscan: Byte;
begin
  Result := False;
  if Copy(line, 0, 4) = 'WIRE' then
  begin
    try
      scan := 6;
      while (line[scan] <> ' ') do
        Inc(scan);
      x := round(StrToInt(copy(line, 6, scan - 6)) / 4);
      Inc(scan);
      lastscan := scan;
      while (line[scan] <> ' ') do
        Inc(scan);
      y := round(StrToInt(copy(line, lastscan, scan - lastscan)) / 4);
      Inc(scan);
      lastscan := scan;
      while (line[scan] <> ' ') do
        Inc(scan);
      x2 := round(StrToInt(copy(line, lastscan, scan - lastscan)) / 4);
      Inc(scan);
      y2 := round(StrToInt(copy(line, scan, length(line) - scan + 1)) / 4);
      Result := True;
    except
      on EConvertError do
        ShowMessage(line + ' ist kein gültiges *.asc wire Kommando...');
    end;
  end;
end;

function getASCInstName(const line: Shortstring; var Text: shortstring): Boolean;
begin
  Result := False;
  if copy(line, 0, 16) = 'SYMATTR InstName' then
  begin
    Text := copy(line, 18, length(line));
    Result := True;
  end;
end;

function getASCValue(const line: Shortstring; var Text: shortstring): Boolean;
begin
  Result := False;
  if copy(line, 0, 13) = 'SYMATTR Value' then
  begin
    Text := copy(line, 15, length(line));
    Result := True;
  end;
end;

end.

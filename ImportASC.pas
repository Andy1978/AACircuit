unit ImportASC;

interface

uses SYSUtils,Dialogs;

 function getASCsymbol(const line:Shortstring;var name:shortstring;var x,y:integer;var ori:byte;var mirrored:boolean):boolean;
 function getASCFlag(const line:Shortstring;var text:shortstring;var x,y:integer):boolean;
 function getASCWire(const line:Shortstring;var x,y,x2,y2:integer):boolean;
 function getASCText(const line:Shortstring;var text:shortstring;var x,y:integer):boolean;
 //function getASCWindows(const line:Shortstring;var x,y:integer):boolean;
 function getASCInstName(const line:Shortstring;var text:shortstring):boolean;
 function getASCValue(const line:Shortstring;var text:shortstring):boolean;
implementation


function getASCsymbol(const line:Shortstring;var name:shortstring;var x,y:integer;var ori:byte;var mirrored:boolean):boolean;
var
 scan,lastscan:byte;
 temp:Shortstring;
Begin
 result:=false;
 If Copy(line,0,6)='SYMBOL' Then
 Begin
 Try
     scan:=8;
     while (line[scan]<>' ') do inc(scan);
     name:=copy(line,8,scan-8);
     inc(scan);
     lastscan:=scan;
     while (line[scan]<>' ') do inc(scan);
     x:=round(strtoint(copy(line,lastscan,scan-lastscan))/4);
     inc(scan);
     lastscan:=scan;
     while (line[scan]<>' ') do inc(scan);
     y:=round(strtoint(copy(line,lastscan,scan-lastscan))/4);
     inc(scan);
     lastscan:=scan;
     while scan<length(line) do inc(scan);
     mirrored:=copy(line,lastscan,1)='M';
     temp:=copy(line,lastscan+1,length(line));
     ori:=round(strtoint(temp)/90)+1;
     result:=True;
  except on EConvertError do showmessage(line+' ist kein gültiges *.asc Kommando...');
  End;
  End;
End;
function getASCFlag(const line:Shortstring;var text:shortstring;var x,y:integer):boolean;
var
 scan,lastscan:byte;
Begin
 result:=false;
 If copy(line,0,4)='FLAG' Then
 Begin
 Try
     scan:=6;
     while (line[scan]<>' ') do inc(scan);
     x:=round(strtoint(copy(line,6,scan-6))/4)-1;
     inc(scan);
     lastscan:=scan;
     while (line[scan]<>' ') do inc(scan);
     y:=round(strtoint(copy(line,lastscan,scan-lastscan))/4)+1;
     inc(scan);
     text:=copy(line,scan,length(line));
     Result:=True;
  except on EConvertError do showmessage(line+' ist kein gültiges *.asc Kommando...');
  End;
  End;
End;
function getASCText(const line:Shortstring;var text:shortstring;var x,y:integer):boolean;
var
 scan,lastscan:byte;
Begin
 result:=false;
 If AnsiLowerCase(copy(line,0,4))='text' Then
 Begin
 Try
     scan:=6;
     while (line[scan]<>' ') do inc(scan);
     x:=round(strtoint(copy(line,6,scan-6))/4);
     inc(scan);
     lastscan:=scan;
     while (line[scan]<>' ') do inc(scan);
     y:=round(strtoint(copy(line,lastscan,scan-lastscan))/4)+1;
     inc(scan);
     while (line[scan]<>' ') do inc(scan);
     inc(scan);
     while (line[scan]<>' ') do inc(scan);
     inc(scan);
     text:=copy(line,scan,length(line));
     Result:=True;
  except on EConvertError do showmessage(line+' ist kein gültiges *.asc Kommando...');
  End;
  End;
End;

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

function getASCWire(const line:Shortstring;var x,y,x2,y2:integer):boolean;
var
 scan,lastscan:byte;
Begin
 result:=false;
 If Copy(line,0,4)='WIRE' Then
 Begin
 Try
     scan:=6;
     while (line[scan]<>' ') do inc(scan);
     x:=round(strtoint(copy(line,6,scan-6))/4);
     inc(scan);
     lastscan:=scan;
     while (line[scan]<>' ') do inc(scan);
     y:=round(strtoint(copy(line,lastscan,scan-lastscan))/4);
     inc(scan);
     lastscan:=scan;
     while (line[scan]<>' ') do inc(scan);
     x2:=round(strtoint(copy(line,lastscan,scan-lastscan))/4);
     inc(scan);
     y2:=round(strtoint(copy(line,scan,length(line)-scan+1))/4);
     result:=True;
  except on EConvertError do showmessage(line+' ist kein gültiges *.asc wire Kommando...');
  End;
  end;
End;

function getASCInstName(const line:Shortstring;var text:shortstring):boolean;
Begin
 result:=false;
 If copy(line,0,16)='SYMATTR InstName' Then
  Begin
     text:=copy(line,18,length(line));
     Result:=True;
  End;
End;
function getASCValue(const line:Shortstring;var text:shortstring):boolean;
Begin
 result:=false;
 If copy(line,0,13)='SYMATTR Value' Then
  Begin
     text:=copy(line,15,length(line));
     Result:=True;
  End;
End;
end.

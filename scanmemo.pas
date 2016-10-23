unit scanmemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
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

{$R *.DFM}

procedure Tsresult.LBClick(Sender: TObject);
begin
 modalresult:=mrok;
end;

procedure Tsresult.FormShow(Sender: TObject);
begin
 lb.ItemIndex:=-1;
end;

end.

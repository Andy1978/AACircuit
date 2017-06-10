unit selection;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages,
  Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  Tselectform = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label6: TLabel;
    BitBtn1: TBitBtn;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  selectform: Tselectform;

implementation

{$R *.lfm}

end.

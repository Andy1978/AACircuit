unit splash;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType,
  SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TsplashF = class(TForm)
    Image1: TImage;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Memo1: TMemo;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
  private
  public
  end;

var
  splashF: TsplashF;

implementation

{$R *.lfm}

end.

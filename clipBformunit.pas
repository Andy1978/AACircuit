unit clipBformunit;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages,
  Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TclipbForm = class(TForm)
    clipBmemo: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    loadDialog: TOpenDialog;
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  clipbForm: TclipbForm;

implementation

{$R *.lfm}

procedure TclipbForm.FormShow(Sender: TObject);
var
  x: Word;
begin
  if LoadDialog.Execute then
  begin
    ClipBForm.ClipBMemo.Lines.LoadFromFile(LoadDialog.filename);
    // Auf maximal 100 Zeilen kürzen
    if ClipBForm.ClipBMemo.Lines.Count > 100 then
      for x := 100 to ClipBForm.ClipBMemo.Lines.Count do
        ClipBForm.ClipBMemo.Lines.Delete(100);
  end
  else
    modalresult := mrNo;
end;

procedure TclipbForm.BitBtn3Click(Sender: TObject);
begin
  modalresult := mrNo;
end;

procedure TclipbForm.BitBtn2Click(Sender: TObject);
begin
  modalresult := mrYes;
end;

end.

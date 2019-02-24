unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs;

type
  TGrey = class(TForm)
    procedure FormPaint(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Grey:         TGrey;
  idx:          integer;
  shades:       integer;
  step:         integer;
  col:          integer;

implementation

{$R *.lfm}
procedure TGrey.FormPaint(Sender: TObject);
begin
  shades := 50;
  step := Round(Grey.width/shades);

  for idx:=0 to (shades-1) do
  begin
       col := 255-Round(idx*255/shades);
       canvas.Brush.Color := RGBToColor(col, col, col);
       canvas.FillRect(0, 0, (shades-idx)*step, Grey.height);
  end;
end;

end.


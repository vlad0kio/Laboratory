unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,Vcl.Imaging.GIFImg;

type
  TForm2 = class(TForm)
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1;


procedure TForm2.FormActivate(Sender: TObject);
begin
   ( Image1.Picture.Graphic as TGIFImage ).Animate := True;// gets it goin'

  ( Image1.Picture.Graphic as TGIFImage ).AnimationSpeed:= 100;// adjust your speed

  Form2.DoubleBuffered := True;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
ProgressBar1.Position:=ProgressBar1.Position+10;
if ProgressBar1.Position=100 then
begin
  Timer1.Enabled:=False;
  Form1.Show;
  Form2.Hide;
end;

end;

end.

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.MPlayer,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, ShellAPI,
  Vcl.Menus;

type
  TForm1 = class(TForm)
    MediaPlayer1: TMediaPlayer;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure MediaPlayer1Notify(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Main, Unit2;

procedure TForm1.FormActivate(Sender: TObject);
begin
ScreenForm.Close;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.CLose;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  MediaPlayer1.FileName := 'mario.mp3';
  MediaPlayer1.Open;
  MediaPlayer1.Play;
end;


procedure TForm1.MediaPlayer1Notify(Sender: TObject);
begin
  with MediaPlayer1 do
    if NotifyValue = nvSuccessful then
    begin
      Notify := True;
      Play;
    end;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  ShellExecute(0,PChar('Open'),PChar('manual.chm'),nil,nil,SW_SHOW);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
ScreenForm.Show;
Form1.Hide;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
Form1.Close;
Form2.Close;
ScreenForm.Close;
end;

end.

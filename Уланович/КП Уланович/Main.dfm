object ScreenForm: TScreenForm
  Left = 0
  Top = 0
  Caption = #1052#1072#1088#1080#1086
  ClientHeight = 533
  ClientWidth = 830
  Color = clNone
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  TextHeight = 13
  object Display: TPaintBox
    Left = 0
    Top = 0
    Width = 830
    Height = 533
    Align = alClient
    OnPaint = DisplayPaint
    ExplicitLeft = 232
    ExplicitTop = 112
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object RenderTimer: TTimer
    Interval = 20
    OnTimer = RenderTimerTimer
    Left = 456
    Top = 232
  end
end

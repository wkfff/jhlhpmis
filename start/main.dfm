object mainform: Tmainform
  Left = 0
  Top = 0
  Caption = #20140#28246#38738#33714#23637#35272
  ClientHeight = 552
  ClientWidth = 868
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 500
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = #24494#36719#38597#40657
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 27
  object RzPageControl1: TRzPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 862
    Height = 546
    Hint = ''
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    DblClickUndocks = False
    Align = alClient
    BackgroundColor = clBtnFace
    BoldCurrentTab = True
    ButtonColor = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    FlatColor = clGray
    HotTrackColorType = htctComplement
    ParentBackgroundColor = False
    ParentColor = False
    ParentFont = False
    ShowMenuButton = True
    ShowShadow = False
    TabColors.HighlightBar = 1350640
    TabColors.Shadow = clBlue
    TabColors.Unselected = clHotLight
    TabIndex = 0
    TabOrder = 1
    TabStyle = tsSquareCorners
    TextColors.Selected = 1350640
    Transparent = True
    Visible = False
    OnChange = RzPageControl1Change
    OnClose = RzPageControl1Close
    OnMouseDown = RzPageControl1MouseDown
    FixedDimension = 32
    object TabSheet1: TRzTabSheet
      Caption = ' '#39318#39029' '
      object dxTileControl1: TdxTileControl
        Left = 0
        Top = 0
        Width = 860
        Height = 509
        LookAndFeel.NativeStyle = True
        OptionsBehavior.FocusItemOnCycle = False
        OptionsBehavior.ScrollMode = smDefault
        OptionsView.CenterContentHorz = True
        OptionsView.CenterContentVert = True
        OptionsView.GroupBlockMaxColumnCount = 3
        OptionsView.GroupLayout = glVertical
        OptionsView.ItemHeight = 150
        OptionsView.ItemWidth = 150
        Style.Stretch = smTile
        TabOrder = 0
        Transparent = True
        object dxTileControl1Group1: TdxTileControlGroup
          Index = 0
        end
        object dxTileControl1Group2: TdxTileControlGroup
          Index = 1
        end
        object dxTileControl1Item1: TdxTileControlItem
          GroupIndex = 0
          IndexInGroup = 0
          Style.BorderColor = 12615680
          Style.GradientBeginColor = 12615680
          Text1.Align = oaMiddleCenter
          Text1.Alignment = taCenter
          Text1.AssignedValues = [avFont]
          Text1.Font.Charset = DEFAULT_CHARSET
          Text1.Font.Color = clDefault
          Text1.Font.Height = -20
          Text1.Font.Name = 'Segoe UI'
          Text1.Font.Style = []
          Text1.Font.Quality = fqClearType
          Text1.Value = #39038#23458#20449#24687#36755#20837
          Text1.WordWrap = True
          Text2.AssignedValues = [avFont]
          Text2.Font.Charset = DEFAULT_CHARSET
          Text2.Font.Color = clDefault
          Text2.Font.Height = -13
          Text2.Font.Name = 'Segoe UI'
          Text2.Font.Style = []
          Text3.AssignedValues = []
          Text4.AssignedValues = []
          OnClick = dxTileControl1Item1Click
        end
        object dxTileControl1Item2: TdxTileControlItem
          GroupIndex = 0
          IndexInGroup = 1
          Text1.Align = oaMiddleCenter
          Text1.AssignedValues = [avFont]
          Text1.Font.Charset = DEFAULT_CHARSET
          Text1.Font.Color = clDefault
          Text1.Font.Height = -20
          Text1.Font.Name = 'Segoe UI'
          Text1.Font.Style = []
          Text1.Font.Quality = fqClearType
          Text1.Value = #23637#20250#31036#21697#21457#25918
          Text2.AssignedValues = []
          Text3.AssignedValues = []
          Text4.AssignedValues = []
          OnClick = dxTileControl1Item2Click
        end
        object dxTileControl1Item3: TdxTileControlItem
          GroupIndex = 0
          IndexInGroup = 2
          Style.BorderColor = 33023
          Style.GradientBeginColor = 33023
          Text1.Align = oaMiddleCenter
          Text1.AssignedValues = [avFont]
          Text1.Font.Charset = DEFAULT_CHARSET
          Text1.Font.Color = clDefault
          Text1.Font.Height = -20
          Text1.Font.Name = 'Segoe UI'
          Text1.Font.Style = []
          Text1.Font.Quality = fqClearType
          Text1.Value = #21442#23637#21830#30331#35760
          Text2.AssignedValues = []
          Text3.AssignedValues = []
          Text4.AssignedValues = []
          OnClick = dxTileControl1Item3Click
        end
        object dxTileControl1Item4: TdxTileControlItem
          GroupIndex = 0
          IndexInGroup = 3
          Style.GradientBeginColor = 12615808
          Text1.Align = oaMiddleCenter
          Text1.AssignedValues = [avColor, avFont]
          Text1.Color = clMaroon
          Text1.Font.Charset = DEFAULT_CHARSET
          Text1.Font.Color = clDefault
          Text1.Font.Height = -20
          Text1.Font.Name = 'Segoe UI'
          Text1.Font.Style = []
          Text1.Font.Quality = fqClearType
          Text1.Value = #25968#25454#21516#27493
          Text2.AssignedValues = []
          Text3.AssignedValues = []
          Text4.AssignedValues = []
          OnClick = dxTileControl1Item4Click
        end
        object dxTileControl1Item5: TdxTileControlItem
          GroupIndex = 0
          IndexInGroup = 4
          Style.GradientBeginColor = 16384
          Text1.Align = oaMiddleCenter
          Text1.AssignedValues = [avFont]
          Text1.Font.Charset = DEFAULT_CHARSET
          Text1.Font.Color = clDefault
          Text1.Font.Height = -20
          Text1.Font.Name = 'Segoe UI'
          Text1.Font.Style = []
          Text1.Value = #25968#25454#19978#20256
          Text2.AssignedValues = []
          Text3.AssignedValues = []
          Text4.AssignedValues = []
          OnClick = dxTileControl1Item5Click
        end
        object dxTileControl1Item6: TdxTileControlItem
          GroupIndex = 0
          IndexInGroup = 5
          Text1.Align = oaMiddleCenter
          Text1.AssignedValues = [avFont]
          Text1.Font.Charset = DEFAULT_CHARSET
          Text1.Font.Color = clDefault
          Text1.Font.Height = -20
          Text1.Font.Name = 'Segoe UI'
          Text1.Font.Style = []
          Text1.Value = #36719#20214#35774#32622
          Text2.AssignedValues = []
          Text3.AssignedValues = []
          Text4.AssignedValues = []
          OnClick = dxTileControl1Item6Click
        end
      end
    end
  end
  inline loginframe1: Tloginframe
    Left = 199
    Top = 75
    Width = 468
    Height = 400
    Align = alCustom
    Anchors = []
    TabOrder = 0
    ExplicitLeft = 199
    ExplicitTop = 75
    ExplicitWidth = 468
    DesignSize = (
      468
      400)
    inherited GroupBox1: TGroupBox
      Left = 86
      Top = 108
      ParentFont = True
      ExplicitLeft = 86
      ExplicitTop = 108
      inherited Label1: TLabel
        Width = 65
        Height = 27
        ParentFont = True
        ExplicitWidth = 65
        ExplicitHeight = 27
      end
      inherited Label2: TLabel
        Width = 65
        Height = 27
        ParentFont = True
        ExplicitWidth = 65
        ExplicitHeight = 27
      end
      inherited usernameedit: TEdit
        Height = 35
        ParentFont = True
        ExplicitHeight = 35
      end
      inherited passwordedit: TEdit
        Height = 35
        ParentFont = True
        ExplicitHeight = 35
      end
      inherited Panel1: TPanel
        ExplicitLeft = 2
        inherited loginbutton: TButton
          OnClick = loginframe1loginbuttonClick
        end
        inherited syncmemberButton: TButton
          OnClick = loginframe1syncmemberButtonClick
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 516
    Top = 438
    object N1: TMenuItem
      Caption = #20851#38381#26631#31614
      OnClick = N1Click
    end
  end
  object updateTimer: TTimer
    Enabled = False
    Interval = 1800000
    OnTimer = updateTimerTimer
    Left = 136
    Top = 296
  end
  object timesyncTimer: TTimer
    Enabled = False
    Interval = 300000
    OnTimer = timesyncTimerTimer
    Left = 128
    Top = 432
  end
  object IdSNTP1: TIdSNTP
    Active = True
    Port = 123
    ReceiveTimeout = 2000
    Left = 64
    Top = 328
  end
end

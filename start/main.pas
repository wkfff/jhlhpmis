unit main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  login,
  Vcl.ComCtrls,
  Vcl.Menus,
  RzTabs,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  dxCustomTileControl,
  cxClasses,
  dxTileControl,
  shopper, Vcl.StdCtrls,customer,clientsyc;

type
  Tmainform = class(TForm)
    loginframe1: Tloginframe;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    dxTileControl1: TdxTileControl;
    dxTileControl1Group1: TdxTileControlGroup;
    dxTileControl1Item1: TdxTileControlItem;
    dxTileControl1Item2: TdxTileControlItem;
    dxTileControl1Item3: TdxTileControlItem;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    dxTileControl1Group2: TdxTileControlGroup;
    dxTileControl1Item4: TdxTileControlItem;
    dxTileControl1Item5: TdxTileControlItem;
    dxTileControl1Item6: TdxTileControlItem;
    procedure loginframe1loginbuttonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxTileControl1Item1Click(Sender: TdxTileControlItem);
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure RzPageControl1Change(Sender: TObject);
    procedure RzPageControl1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N1Click(Sender: TObject);
    procedure dxTileControl1Item2Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item3Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item4Click(Sender: TdxTileControlItem);
  private
    { Private declarations }
    bplshopperframe: Tbplshopperframe;
    bplshopperframe1:  Tbplshopperframe;
    bplcustomerframe: TbplCustomerFrame;
    bplclientsycframe: TclientsycFrame;
    tabX, tabY: Integer;
  public
    { Public declarations }
  end;

var
  mainform: Tmainform;

implementation

{$R *.dfm}

procedure Tmainform.dxTileControl1Item1Click(Sender: TdxTileControlItem);
var
  i: Integer;
  menutabsheet: TRzTabSheet;
begin
  for i := 0 to RzPageControl1.PageCount - 1 do
  begin
    if RzPageControl1.Pages[i].Tag = 1 then
    begin
      RzPageControl1.ActivePageIndex := i;
      exit;
    end;
  end;

  menutabsheet := TRzTabSheet.Create(RzPageControl1);
  menutabsheet.Caption := ' 顾客信息输入 ';
  menutabsheet.Tag := 1;
  menutabsheet.PageControl := RzPageControl1;
  // if bplshopperframe = nil then
  begin
    bplshopperframe := Tbplshopperframe.Create(menutabsheet);
    bplshopperframe.Name := 'shopperinputer';
    bplshopperframe.Align := alClient;
  end;

  RzPageControl1.ActivePageIndex := menutabsheet.PageIndex;
  // bplshopperframe.Parent := nil;
  bplshopperframe.List;
  bplshopperframe.Parent := RzPageControl1.ActivePage;
end;

procedure Tmainform.dxTileControl1Item2Click(Sender: TdxTileControlItem);
var
  i: Integer;
  menutabsheet: TRzTabSheet;
begin
  for i := 0 to RzPageControl1.PageCount - 1 do
  begin
    if RzPageControl1.Pages[i].Tag = 2 then
    begin
      RzPageControl1.ActivePageIndex := i;
      exit;
    end;
  end;
  menutabsheet := TRzTabSheet.Create(RzPageControl1);
  menutabsheet.Caption := ' 礼品发放 ';
  menutabsheet.Tag := 2;
  menutabsheet.PageControl := RzPageControl1;
  // if bplshopperframe = nil then
  begin
    bplshopperframe1 := Tbplshopperframe.Create(menutabsheet);
    bplshopperframe1.Name := 'shopperinputer1';
    bplshopperframe1.Align := alClient;
  end;

  RzPageControl1.ActivePageIndex := menutabsheet.PageIndex;
  // bplshopperframe.Parent := nil;
  bplshopperframe1.Parent := RzPageControl1.ActivePage;
  bplshopperframe1.List;

end;

procedure Tmainform.dxTileControl1Item3Click(Sender: TdxTileControlItem);
var
  i: Integer;
  menutabsheet: TRzTabSheet;
begin
  for i := 0 to RzPageControl1.PageCount - 1 do
  begin
    if RzPageControl1.Pages[i].Tag = 3 then
    begin
      RzPageControl1.ActivePageIndex := i;
      exit;
    end;
  end;

  menutabsheet := TRzTabSheet.Create(RzPageControl1);
  menutabsheet.Caption := ' 参展商登记 ';
  menutabsheet.Tag := 3;
  menutabsheet.PageControl := RzPageControl1;
  // if bplshopperframe = nil then
  begin
    bplcustomerframe:= Tbplcustomerframe.Create(menutabsheet);
    bplcustomerframe.Name := 'customerinputer';
    bplcustomerframe.Align := alClient;
  end;

  RzPageControl1.ActivePageIndex := menutabsheet.PageIndex;
  bplcustomerframe.Parent := RzPageControl1.ActivePage;
  bplcustomerframe.customertypecxComboBox.SetFocus;

end;

procedure Tmainform.dxTileControl1Item4Click(Sender: TdxTileControlItem);
var
  i: Integer;
  menutabsheet: TRzTabSheet;
begin
  for i := 0 to RzPageControl1.PageCount - 1 do
  begin
    if RzPageControl1.Pages[i].Tag = 4 then
    begin
      RzPageControl1.ActivePageIndex := i;
      exit;
    end;
  end;

  menutabsheet := TRzTabSheet.Create(RzPageControl1);
  menutabsheet.Caption := ' 数据同步 ';
  menutabsheet.Tag := 4;
  menutabsheet.PageControl := RzPageControl1;
  // if bplshopperframe = nil then
  begin
  try
    bplclientsycFrame:= TclientsycFrame.Create(menutabsheet);
    bplclientsycFrame.Name := 'clientsyc';
    bplclientsycFrame.Align := alClient;

    RzPageControl1.ActivePageIndex := menutabsheet.PageIndex;
    bplclientsycFrame.Parent := RzPageControl1.ActivePage;
  except
    FreeAndNil(menutabsheet);
    FreeAndNil(bplclientsycframe);
    raise;
  end;
  end;



end;

procedure Tmainform.FormCreate(Sender: TObject);
begin
  width := 500;
  height := 400;
end;

procedure Tmainform.loginframe1loginbuttonClick(Sender: TObject);
begin
  try
    loginframe1.loginbuttonClick(Sender);
  except
    on E: Exception do
      raise Exception.Create(E.Message);
  end;
  // windowstate:=wsMinimized;
  hide;
  loginframe1.hide;
  width := 1680;
  height := 950;
  self.Position := poDesktopCenter;
  show;
  RzPageControl1.show;
  // cxPageControl1.Show;
  // windowstate:=wsNormal;
  // self.BringToFront;
end;

procedure Tmainform.N1Click(Sender: TObject);
var
  index: Integer;
begin
  index := RzPageControl1.TabAtPos(tabX, tabY);
  if (index > 0) and (index <> -1) then
  begin
    RzPageControl1.ActivePageIndex := index;
    RzPageControl1.CloseActiveTab;
  end;

end;

procedure Tmainform.RzPageControl1Change(Sender: TObject);
begin
  RzPageControl1.ShowCloseButton := RzPageControl1.ActivePageIndex > 0;
  RzPageControl1.ShowCloseButtonOnActiveTab :=
    RzPageControl1.ActivePageIndex > 0;
end;

procedure Tmainform.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  if RzPageControl1.ActivePageIndex > 0 then
  begin

    if MessageBox(self.Handle, '是否要关闭当前标签', '', MB_ICONQUESTION + MB_OkCancel)
      <> mrOk then
      exit;

    AllowClose := true;
    // if RzPageControl1.ActivePage.Tag = 1 then
    // bplshopperframe.Parent := nil;

    //FreeAndNil(bplshopperframe);
    // RzPageControl1.ActivePage.Destroy;
  end;
end;

procedure Tmainform.RzPageControl1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  p: Tpoint;
  index: Integer;
begin
  index := RzPageControl1.TabAtPos(X, Y);
  tabX := X;
  tabY := Y;
  if (Button = mbRight) and (index <> -1) and (index > 0) then
  begin
    p.X := X;
    p.Y := Y;
    p := ClientToScreen(p);
    PopupMenu1.Popup(p.X, p.Y);
  end;
end;

end.

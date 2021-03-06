﻿unit customer;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Dialogs,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  Data.DB,
  cxDBData,
  Vcl.ExtCtrls,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  customerdm,
  cxContainer,
  Vcl.StdCtrls,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  cxExtEditRepositoryItems,
  cxCurrencyEdit,
  cxPropertiesStore,
  cxEditRepositoryItems,
  cxDBEditRepository,
  System.DateUtils,
  Vcl.Menus,
  common,
  Clipbrd,
  RzStatus,
  RzPanel,
  cxExport,
  FireDAC.Comp.DataSet,
  bplFrame;

type
  TbplCustomerFrame = class(TFrame, IcxExportProgress)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    Splitter1: TSplitter;
    expocxLookupComboBox: TcxLookupComboBox;
    StaticText1: TStaticText;
    cxEditRepository1: TcxEditRepository;
    IDcxEditRepository1Label: TcxEditRepositoryLabel;
    cxPropertiesStore1: TcxPropertiesStore;
    applyButton: TButton;
    Button2: TButton;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    infoMemo: TMemo;
    addrEdit: TEdit;
    standnumberEdit: TEdit;
    nameEdit: TEdit;
    companyEdit: TEdit;
    emailEdit: TEdit;
    allpaycxCurrencyEdit: TcxCurrencyEdit;
    qqEdit: TEdit;
    firstpaycxCurrencyEdit: TcxCurrencyEdit;
    nowpaycxCurrencyEdit: TcxCurrencyEdit;
    paytypecxLookupComboBox: TcxLookupComboBox;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    telphonecxMaskEdit: TcxMaskEdit;
    cxEditRepository1DateItem: TcxEditRepositoryDateItem;
    paytypecxEditRepository1LookupComboBoxItem: TcxEditRepositoryLookupComboBoxItem;
    customertypecxEditRepository1ComboBoxItem1: TcxEditRepositoryComboBoxItem;
    cxEditRepository1CurrencyItem1: TcxEditRepositoryCurrencyItem;
    phonecxMaskEdit: TcxMaskEdit;
    customertypecxComboBox: TcxComboBox;
    salesnamecxEditRepository1ComboBoxItem: TcxEditRepositoryComboBoxItem;
    salescxComboBox: TcxComboBox;
    otherpaycxStyle: TcxStyle;
    cxEditRepository1PopupItem1: TcxEditRepositoryPopupItem;
    PopupMenu1: TPopupMenu;
    autowidthmenu: TMenuItem;
    refreshmenu: TMenuItem;
    fetchmenu: TMenuItem;
    N1: TMenuItem;
    softremovemenu: TMenuItem;
    fetchallmenu: TMenuItem;
    PopupMenu2: TPopupMenu;
    N2: TMenuItem;
    toexcelmenu: TMenuItem;
    EditmodeCheckBox: TCheckBox;
    updateButton: TButton;
    copyitemmenu: TMenuItem;
    RzStatusBar1: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzProgressStatus1: TRzProgressStatus;
    RzStatusPane1: TRzStatusPane;
    cxEditRepository1TextItem1: TcxEditRepositoryTextItem;
    standsearchButton: TButton;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    procedure expocxLookupComboBoxPropertiesChange(Sender: TObject);
    procedure customertypecxEditRepository1ComboBoxItem1PropertiesInitPopup(Sender: TObject);
    procedure salesnamecxEditRepository1ComboBoxItemPropertiesInitPopup(Sender: TObject);
    procedure salesnamecxEditRepository1ComboBoxItemPropertiesEditValueChanged(Sender: TObject);
    procedure allpaycxCurrencyEditClick(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxEditRepository1PopupItem1PropertiesInitPopup(Sender: TObject);
    procedure cxEditRepository1PopupItem1PropertiesCloseUp(Sender: TObject);
    procedure applyButtonClick(Sender: TObject);
    procedure autowidthmenuClick(Sender: TObject);
    procedure refreshmenuClick(Sender: TObject);
    procedure fetchmenuClick(Sender: TObject);
    procedure fetchallmenuClick(Sender: TObject);
    procedure softremovemenuClick(Sender: TObject);
    procedure toexcelmenuClick(Sender: TObject);
    procedure salesnamecxEditRepository1ComboBoxItemPropertiesDrawItem(AControl: TcxCustomComboBox; ACanvas: TcxCanvas; AIndex: Integer; const ARect: TRect; AState: TOwnerDrawState);
    procedure salescxComboBoxEnter(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EditmodeCheckBoxClick(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure phonecxMaskEditPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure copyitemmenuClick(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxEditRepository1TextItem1PropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure standsearchButtonClick(Sender: TObject);
  private
      { Private declarations }
    columninfoMemo: TMemo;
    procedure initGirdTableView;
    procedure CxGridToExcel(AcxGrid: TcxGrid);
    procedure MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AppendUpdateData;
    procedure OnProgress(Sender: TObject; Percent: Integer);
    procedure ValidateStandNumber(Sender: TObject);
    procedure customerFDQueryAfterOpen(Dataset:TObject);
    procedure customerFDQueryAfterRecords(Dataset:TObject);
  public
      { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

uses
  cxGridExportLink,
  connectiondm,
  vcl.forms;

{$R *.dfm}

// 将当前GRID数据导出到EXCEL文件
procedure TbplCustomerFrame.CxGridToExcel(AcxGrid: TcxGrid);
var
  SaveDialog: TSaveDialog;
begin
  SaveDialog := TSaveDialog.Create(nil);
  try
    with SaveDialog do
    begin
      Filter := '*.xls|*.xls';
      if Execute then
      begin
        if FileExists(SaveDialog.FileName) then
          if Application.MessageBox('文件已经存在,是否要覆盖?', '是否要覆盖', MB_YESNO + MB_ICONWARNING + MB_TOPMOST) = IDNO then
            exit;
        ExportGridToExcel(SaveDialog.FileName, AcxGrid, true, true, true, 'xls', Self);
      end;
    end;
  finally
    SaveDialog.Free;
  end;
end;

procedure TbplCustomerFrame.OnProgress(Sender: TObject; Percent: Integer);
begin
  RzProgressStatus1.Percent := Percent;
  if Percent = 100 then
  begin
    ShowMessage('导出完成');
    RzStatusPane1.Visible := false;
    RzProgressStatus1.Visible := false;
  end;
  if Percent = 1 then
  begin
    RzProgressStatus1.Visible := true;
    RzStatusPane1.Visible := true;
  end;
end;

procedure TbplCustomerFrame.allpaycxCurrencyEditClick(Sender: TObject);
begin
  with (Sender as TcxCurrencyEdit) do
  begin
    if Value = 0 then
      SelectAll;
  end;
end;

{
  加入客户数据
}
procedure TbplCustomerFrame.AppendUpdateData;
var
  required_str: string;
begin
  required_str := '';

  if trim(standnumberEdit.Text) = '' then
    required_str := required_str + '展位号未填写' + #13#10;

  if allpaycxCurrencyEdit.Value=0 then
     required_str := required_str + '总金额不能为0' + #13#10;

  if Trim(salescxComboBox.Text) = ''  then
   required_str := required_str + '招展人员必须填写' + #13#10;

  // if trim(nameEdit.Text)='' then
  // required_str:=required_str+'姓名未填写'+#13#10;
  //
  // if phonecxMaskEdit.Text='' then
  // required_str:=required_str+'手机号未填写'+#13#10;

  if required_str <> '' then
  begin
    beep;
    showmessage(required_str);
    exit;
  end;

  if Trim(standnumberEdit.Text) <> '' then
  begin
    if customerDataModule.customerFDQuery.Locate('standnumber', Trim(standnumberEdit.Text), [loCaseInsensitive]) then
       if Application.MessageBox( '此展位号已经存在,是否确定要继续添加?', '展位号已存在', MB_OKCANCEL +
         MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) = IDCANCEL then
       begin
         exit;
       end;
  end;

  with customerDataModule do
  begin
    if EditmodeCheckBox.Checked then
      customerFDQuery.Edit
    else
      customerFDQuery.Append;
    try
      customerFDQuery.FieldValues['eid'] := expoFDQuery.FieldValues['id'];
      customerFDQuery.FieldValues['customertype'] := trim(customertypecxComboBox.Text);
      customerFDQuery.FieldValues['standnumber'] := trim(standnumberEdit.Text);
      customerFDQuery.FieldValues['name'] := trim(nameEdit.Text);
      customerFDQuery.FieldValues['mobilephone'] := phonecxMaskEdit.Text;
      customerFDQuery.FieldValues['paytype'] := paytypeFDQuery.FieldValues['id'];
      customerFDQuery.FieldValues['allpay'] := allpaycxCurrencyEdit.Value;
      customerFDQuery.FieldValues['firstpay'] := firstpaycxCurrencyEdit.Value;
      customerFDQuery.FieldValues['nowpay'] := nowpaycxCurrencyEdit.Value;
      customerFDQuery.FieldValues['telphone'] := trim(telphonecxMaskEdit.Text);
      customerFDQuery.FieldValues['company'] := trim(companyEdit.Text);
      customerFDQuery.FieldValues['email'] := trim(emailEdit.Text);
      customerFDQuery.FieldValues['qq'] := trim(qqEdit.Text);
      customerFDQuery.FieldValues['addr'] := trim(addrEdit.Text);
      customerFDQuery.FieldValues['customerinfo'] := trim(infoMemo.Lines.Text);
      customerFDQuery.FieldValues['groupid'] := 0;
      customerFDQuery.FieldValues['salesname'] := trim(salescxComboBox.Text);
      customerFDQuery.FieldValues['salesid'] := 0;
      customerFDQuery.FieldValues['create_member'] := clientuser.Userid;
      if customerFDQuery.State = dsInsert then
      begin
        customerFDQuery.FieldValues['create_datetime'] := DateTimeToUnix(IncHour(Now, -8));
        customerFDQuery.FieldValues['createtime'] := Now;
      end;

      customerFDQuery.FieldValues['update_datetime'] := DateTimeToUnix(IncHour(Now, -8));
      customerFDQuery.FieldValues['updatetime'] := Now;

      customerFDQuery.FieldValues['status'] := 1;
      customerFDQuery.FieldValues['trash'] := 0;
      customerFDQuery.Post;
      customertypecxComboBox.SetFocus;
    except
      customerFDQuery.Cancel;
      raise;
    end;
  end;

end;

procedure TbplCustomerFrame.applyButtonClick(Sender: TObject);
begin
  AppendUpdateData;
end;

procedure TbplCustomerFrame.autowidthmenuClick(Sender: TObject);
begin
  cxGrid1DBTableView1.ApplyBestFit();
end;

procedure TbplCustomerFrame.Button2Click(Sender: TObject);
begin
  customertypecxComboBox.ItemIndex := 0;
  standnumberEdit.Text := '';
  nameEdit.Text := '';
  phonecxMaskEdit.Text := '';
  companyEdit.Text := '';
  allpaycxCurrencyEdit.Value := 0;
  firstpaycxCurrencyEdit.Value := 0;
  nowpaycxCurrencyEdit.Value := 0;
  paytypecxLookupComboBox.ItemIndex := 0;
  salescxComboBox.Text := '';
  telphonecxMaskEdit.Text := '';
  qqEdit.Text := '';
  emailEdit.Text := '';
  addrEdit.Text := '';
  infoMemo.Lines.Clear;
  customertypecxComboBox.SetFocus;
end;

procedure TbplCustomerFrame.copyitemmenuClick(Sender: TObject);
begin
  Clipboard.AsText := cxGrid1DBTableView1.Controller.SelectedRows[0].DisplayTexts[cxGrid1DBTableView1.Controller.FocusedColumn.Index];
end;

constructor TbplCustomerFrame.Create(AOwner: TComponent);
var
  i: Integer;
begin
  inherited;
  if customerDataModule = nil then
  begin
    customerDataModule := TcustomerDataModule.Create(nil);
    //customerDataModule.AfteOpen:=self.customerFDQueryAfterRecords;
    customerDataModule.AfteOpen:=self.customerFDQueryAfterOpen;
    expocxLookupComboBox.ItemIndex := 0;
    paytypecxLookupComboBox.ItemIndex := 0;
    //initGirdTableView;
    //cxPropertiesStore1.RestoreFrom;
    if not Assigned(columninfoMemo) then
    begin
      columninfoMemo := TMemo.Create(Self);
      columninfoMemo.left := 2000;
      columninfoMemo.ScrollBars := ssVertical;
      columninfoMemo.Width := 300;
      columninfoMemo.Height := 200;
      columninfoMemo.Visible := false;
      columninfoMemo.Parent := Panel1;
      columninfoMemo.Font.Name := '微软雅黑';
      columninfoMemo.Font.Size := 16;
      cxEditRepository1PopupItem1.Properties.PopupControl := columninfoMemo;
    end;
  end;
  RzProgressStatus1.Visible := False;
  RzStatusPane1.Visible := false;
  RzStatusBar1.Visible := true;

end;

//点击招展人员下拉框X,删除此人员 ,否则选择当前项
procedure TbplCustomerFrame.MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  clickItemIndex, clickX: Integer;
  Name: string;
begin
  Name := '';
  clickItemIndex := TcxComboBoxListBox(Sender).ItemAtPos(Point(X, Y), true);
  clickX := TcxComboBoxListBox(Sender).left + TcxComboBoxListBox(Sender).Width - 25;
  if X >= clickX then
  begin
    Name := salesnamecxEditRepository1ComboBoxItem.Properties.Items.Strings[clickItemIndex];
    if Application.MessageBox(PChar('是否要删除' + Name + '?'), '提示', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin
      if salescxComboBox.ItemIndex = clickItemIndex then
        salescxComboBox.Text := '';
      if customerDataModule.salesFDQuery.Locate('etypeid;name', varArrayOf([customerDataModule.expoFDQuery.FieldByName('expotypeid').AsInteger, Name])) then
        customerDataModule.salesFDQuery.Delete;
    end;
  end
  else
  begin
    salescxComboBox.ItemIndex := clickItemIndex;
  end;
end;

procedure TbplCustomerFrame.phonecxMaskEditPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  ErrorText := '手机号不正确';
end;

procedure TbplCustomerFrame.customerFDQueryAfterOpen(Dataset: TObject);
var
  i:integer;
begin
  initGirdTableView;
  for i := 0 to cxGrid1DBTableView1.ColumnCount - 1 do
  begin
    with cxPropertiesStore1.Components.Add do
    begin
      Component := cxGrid1DBTableView1.Columns[i];
      Properties.Add('width');
    end;
  end;
 cxPropertiesStore1.RestoreFrom;
end;

procedure TbplCustomerFrame.customerFDQueryAfterRecords(Dataset: TObject);
begin
// cxGrid1DBTableView1.DataController.CreateAllItems(true);
end;

procedure TbplCustomerFrame.customertypecxEditRepository1ComboBoxItem1PropertiesInitPopup(Sender: TObject);
begin
  with customertypecxEditRepository1ComboBoxItem1 do
  begin
    Properties.Items.Free;
    Properties.Items.Text := customerDataModule.getCustomerType.Text;
  end;
end;

// 客户备注弹出菜单关闭,将MEMO的值写入表
procedure TbplCustomerFrame.cxEditRepository1PopupItem1PropertiesCloseUp(Sender: TObject);
begin
  with customerDataModule.customerFDQuery do
  begin
    Edit;
    FieldByName('customerinfo').Value := columninfoMemo.Lines.Text.trim;
    Post;
  end;
end;

// 客户备注弹出菜单初始化,将字段值放入MEMO
procedure TbplCustomerFrame.cxEditRepository1PopupItem1PropertiesInitPopup(Sender: TObject);
begin
  if Assigned(columninfoMemo) then
  begin
    columninfoMemo.Lines.Text := customerDataModule.customerFDQuery.FieldByName('customerinfo').AsString;
  end;
end;

procedure TbplCustomerFrame.cxEditRepository1TextItem1PropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
var
  I: Integer;
begin
  Error:=false;
  for I := 0 to cxGrid1DBTableView1.ViewData.RecordCount-1 do
  begin
    if cxGrid1DBTableView1.ViewData.Records[i].Values[3]=DisplayValue then
       if Application.MessageBox( '此展位号已经存在,是否确定要修改?', '展位号已存在', MB_OKCANCEL +
             MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) = IDCANCEL then
             begin
               Error:=true;
               break;
             end;
  end;
end;

procedure TbplCustomerFrame.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  EditmodeCheckBox.Checked := not EditmodeCheckBox.Checked;
  EditmodeCheckBoxClick(EditmodeCheckBox);
end;

procedure TbplCustomerFrame.cxGrid1DBTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if not EditmodeCheckBox.Checked then
    exit;

  with customerDataModule.customerFDQuery do
  begin
    customertypecxComboBox.Text := FieldValues['customertype'];
    standnumberEdit.Text := FieldValues['standnumber'];
    nameEdit.Text := FieldValues['name'];
    phonecxMaskEdit.Text := FieldValues['mobilephone'];
    companyEdit.Text := FieldValues['company'];
    allpaycxCurrencyEdit.Value := FieldValues['allpay'];
    firstpaycxCurrencyEdit.Value := FieldValues['firstpay'];
    nowpaycxCurrencyEdit.Value := FieldValues['nowpay'];
    paytypecxLookupComboBox.ItemIndex := FieldValues['paytype'] - 1;
    salescxComboBox.Text := FieldValues['salesname'];
    telphonecxMaskEdit.Text := FieldValues['telphone'];
    emailEdit.Text := FieldValues['email'];
    qqEdit.Text := FieldValues['qq'];
    addrEdit.Text := FieldValues['addr'];
    infoMemo.Lines.Text := FieldValues['customerinfo'];
  end;
end;

procedure TbplCustomerFrame.cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (Key = 67) then
    copyitemmenuClick(nil);
end;

procedure TbplCustomerFrame.cxGrid1DBTableView1StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if ARecord.IsData then
    if (AItem.Caption = '剩余金额') then
    begin
      if ARecord.Values[AItem.Index] > 0 then
        AStyle := otherpaycxStyle;
    end
end;

destructor TbplCustomerFrame.Destroy;
begin
  if customerDataModule.customerFDQuery.State = dsEdit then
    customerDataModule.customerFDQuery.Cancel;
  cxPropertiesStore1.StoreTo;
  FreeAndNil(customerDataModule);
  inherited;
end;

procedure TbplCustomerFrame.EditmodeCheckBoxClick(Sender: TObject);
begin
  updateButton.Visible := EditmodeCheckBox.Checked;
  applyButton.Visible := not EditmodeCheckBox.Checked;
  if EditmodeCheckBox.Checked then
    cxGrid1DBTableView1FocusedRecordChanged(cxGrid1DBTableView1, nil, nil, false);
end;

procedure TbplCustomerFrame.ValidateStandNumber(Sender:TObject);
begin
 //
end;

procedure TbplCustomerFrame.initGirdTableView;
begin
  if cxGrid1DBTableView1.ColumnCount = 0 then
  begin
      cxGrid1DBTableView1.DataController.CreateAllItems(true);
  end;
  if cxGrid1DBTableView1.ColumnCount > 0 then
  begin
    // cxGrid1DBTableView1.DataController.CreateAllItems(True);

    with cxGrid1DBTableView1.DataController.Summary.DefaultGroupSummaryItems.Add do
    begin
      Kind:=skCount;
      Format:='合计:0条';
    end;

    with TcxGridDBTableSummaryItem(cxGrid1DBTableView1.DataController.Summary.FooterSummaryItems.Add) do
    begin
      // FieldName:='id';
      Column := cxGrid1DBTableView1.GetColumnByFieldName('id');
      Kind := skCount;
      Format := '共0条';
    end;
    with TcxGridDBTableSummaryItem(cxGrid1DBTableView1.DataController.Summary.FooterSummaryItems.Add) do
    begin
      // FieldName:='allpay';
      Column := cxGrid1DBTableView1.GetColumnByFieldName('allpay');
      Kind := skSum;
      Format := '¥,0.00;¥-,0.00';
    end;
    with TcxGridDBTableSummaryItem(cxGrid1DBTableView1.DataController.Summary.FooterSummaryItems.Add) do
    begin
      // FieldName:='firstpay';
      Column := cxGrid1DBTableView1.GetColumnByFieldName('firstpay');
      Kind := skSum;
      Format := '¥,0.00;¥-,0.00';
    end;
    with TcxGridDBTableSummaryItem(cxGrid1DBTableView1.DataController.Summary.FooterSummaryItems.Add) do
    begin
      // FieldName:='nowpay';
      Column := cxGrid1DBTableView1.GetColumnByFieldName('nowpay');
      Kind := skSum;
      Format := '¥,0.00;¥-,0.00';
    end;
    with TcxGridDBTableSummaryItem(cxGrid1DBTableView1.DataController.Summary.FooterSummaryItems.Add) do
    begin
      // FieldName:='otherpay';
      Column := cxGrid1DBTableView1.GetColumnByFieldName('otherpay');
      Kind := skSum;
      Format := '¥,0.00;¥-,0.00';
    end;

    with cxGrid1DBTableView1.GetColumnByFieldName('id') do
    begin
      HeaderAlignmentHorz := taCenter;
      RepositoryItem := IDcxEditRepository1Label;
      Caption := '编号';
      Index := 1;
    end;

    with cxGrid1DBTableView1.GetColumnByFieldName('eid') do
    begin
      Visible := false;
      Caption := '展会';
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('qq') do
    begin
      Visible := false;
      Caption := 'QQ';
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('email') do
    begin
      Visible := false;
      Caption := '邮箱';
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('addr') do
    begin
      Visible := false;
      Caption := '地址';
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('company') do
    begin
      // Visible:=false;
      Caption := '公司';
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('telphone') do
    begin
      Visible := false;
      Caption := '电话';
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('customertype') do
    begin
      // Visible:=false;
      RepositoryItem := customertypecxEditRepository1ComboBoxItem1;
      HeaderAlignmentHorz := taCenter;
      Caption := '客户类型';
      index := 2;
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('standnumber') do
    begin
      // Visible:=false;
      Caption := '展位号';
      index := 3;
      RepositoryItem:=cxEditRepository1TextItem1;
      //PropertiesClass:=TcxCustomTextEdit.GetPropertiesClass;
      //Properties.OnEditValueChanged:=ValidateStandNumber;
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('name') do
    begin
      // Visible:=false;
      Caption := '姓名';
      index := 4;
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('mobilephone') do
    begin
      // Visible:=false;
      Caption := '手机';
      index := 5;
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('paytype') do
    begin
      // Visible:=false;
      Caption := '支付类型';
      index := 6;
      RepositoryItem := paytypecxEditRepository1LookupComboBoxItem;
      HeaderAlignmentHorz := taCenter;
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('allpay') do
    begin
      // Visible:=false;
      Caption := '总金额';
      index := 7;
      HeaderAlignmentHorz := taRightJustify;
      RepositoryItem := cxEditRepository1CurrencyItem1;
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('firstpay') do
    begin
      // Visible:=false;
      Caption := '定金';
      index := 8;
      HeaderAlignmentHorz := taRightJustify;
      RepositoryItem := cxEditRepository1CurrencyItem1;
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('nowpay') do
    begin
      // Visible:=false;
      Caption := '现场支付';
      index := 9;
      HeaderAlignmentHorz := taRightJustify;
      RepositoryItem := cxEditRepository1CurrencyItem1;
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('otherpay') do
    begin
      // Visible:=false;
      Caption := '剩余金额';
      index := 10;
      HeaderAlignmentHorz := taRightJustify;
      RepositoryItem := cxEditRepository1CurrencyItem1;
      Editing := false;
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('customerinfo') do
    begin
      // Visible:=false;
      Caption := '客户备注';
      index := 13;
      RepositoryItem := cxEditRepository1PopupItem1;
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('groupid') do
    begin
      Visible := false;
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('salesname') do
    begin
      // Visible:=false;
      Caption := '招展人员';
      index := 11;
      RepositoryItem := salesnamecxEditRepository1ComboBoxItem;

      // Properties.Alignment.Horz:=taCenter;
      HeaderAlignmentHorz := taCenter;
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('salesid') do
    begin
      Visible := false;
      Caption := '招展人员编号';
      index := 12;
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('uuid') do
    begin
      Visible := false;
      Caption := 'UUID';
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('create_member') do
    begin
      Visible := false;
      Caption := '创建人员';
      index := 13;
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('update_microsecond') do
    begin
      Visible := false;
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('create_datetime') do
    begin
      Visible := false;
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('update_datetime') do
    begin
      Visible := false;
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('createtime') do
    begin
      // Visible:=false;
      RepositoryItem := cxEditRepository1DateItem;
      Options.Editing := false;
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('updatetime') do
    begin
      // Visible:=false;
      RepositoryItem := cxEditRepository1DateItem;
      Options.Editing := false;
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('status') do
    begin
      Visible := false;
    end;
    with cxGrid1DBTableView1.GetColumnByFieldName('trash') do
    begin
      Visible := false;
    end;
  end;
  cxGrid1DBTableView1.DataController.DataSource.Enabled:=true;
end;

procedure TbplCustomerFrame.refreshmenuClick(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.RefreshExternalData;
end;

procedure TbplCustomerFrame.expocxLookupComboBoxPropertiesChange(Sender: TObject);
var
  s: string;
  i: Integer;
  idfooter: TcxDataSummaryItem;
  create_member_str:string;
begin
  create_member_str:='';
  if clientuser.Username<>'admin' then
    create_member_str:=' and create_member='+clientuser.Userid.ToString;

  s := 'and eid=' + customerDataModule.expoFDQuery.FieldByName('id').AsString +create_member_str;
  customerDataModule.customerOpen(s);
 // customertypecxEditRepository1ComboBoxItem1PropertiesInitPopup(nil);
 // salesnamecxEditRepository1ComboBoxItemPropertiesInitPopup(nil);
 // customertypecxComboBox.Properties.Items.Text := customerDataModule.getCustomerType.Text;
 // customertypecxComboBox.ItemIndex := 0;
end;

procedure TbplCustomerFrame.fetchallmenuClick(Sender: TObject);
begin
  customerDataModule.customerOpen('');
end;

procedure TbplCustomerFrame.fetchmenuClick(Sender: TObject);
begin
  expocxLookupComboBoxPropertiesChange(nil);
end;

procedure TbplCustomerFrame.salescxComboBoxEnter(Sender: TObject);
var
  A: TcxComboBox;
begin
  TcxComboBoxListBox(salescxComboBox.ILookupData.ActiveControl).OnMouseUp := MouseUp;
  // salesnamecxEditRepository1ComboBoxItem.Properties.

  // TcxComboBoxListBox(
  // TcxComboBox(cxGrid1DBTableView1.GetColumnByFieldName('salesname').RepositoryItem).ILookupData.ActiveControl
  // ).OnMouseUp:= MouseUp;
end;

//重画招展人员下拉框
procedure TbplCustomerFrame.salesnamecxEditRepository1ComboBoxItemPropertiesDrawItem(AControl: TcxCustomComboBox; ACanvas: TcxCanvas; AIndex: Integer; const ARect: TRect; AState: TOwnerDrawState);
var
  VRect: TRect;
begin
  VRect := ARect;
  VRect.Right := ARect.Right - 25;
  ACanvas.FillRect(VRect);
  if odSelected in AState then
  begin
    ACanvas.Font.Color := clWhite;
  end
  else
    ACanvas.Font.Color := clBlack;
  ACanvas.TextOut(ARect.left, ARect.Top, salesnamecxEditRepository1ComboBoxItem.Properties.Items.Strings[AIndex]);
  VRect.left := ARect.Right - 25;
  VRect.Right := ARect.Right;
  ACanvas.FillRect(VRect, clWhite);
  ACanvas.Brush.Color := clWhite;
  if odSelected in AState then
    ACanvas.Font.Color := clRed;
  ACanvas.TextOut(ARect.Right - 20, ARect.Top, 'X');
end;

procedure TbplCustomerFrame.salesnamecxEditRepository1ComboBoxItemPropertiesEditValueChanged(Sender: TObject);
begin
  customerDataModule.addSales(TcxComboBox(Sender).Text);
  // showmessage(TcxComboBox(Sender).Text);
end;

procedure TbplCustomerFrame.salesnamecxEditRepository1ComboBoxItemPropertiesInitPopup(Sender: TObject);
begin
  salesnamecxEditRepository1ComboBoxItem.Properties.Items.Text := customerDataModule.getSalesName.Text;
end;

procedure TbplCustomerFrame.softremovemenuClick(Sender: TObject);
begin
  customerDataModule.softremovecurr;
end;

procedure TbplCustomerFrame.standsearchButtonClick(Sender: TObject);
var
  index:integer;
begin
  if not Trim(standnumberEdit.Text).IsEmpty then
  begin
    index:=cxGrid1DBTableView1.Controller.FocusedRecordIndex;
    if index>0 then inc(index);
    index:=cxGrid1DBTableView1.DataController.FindRecordIndexByText(index,3,Trim(standnumberEdit.Text),false,true,true);
    cxGrid1DBTableView1.Controller.FocusedRecordIndex:=index;
  end;
end;

procedure TbplCustomerFrame.toexcelmenuClick(Sender: TObject);
begin
  CxGridToExcel(cxGrid1);
end;

end.


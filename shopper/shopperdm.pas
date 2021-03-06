unit shopperdm;

interface

uses
  System.SysUtils,
  System.Classes,
  Vcl.Dialogs,
  System.Variants,
  System.DateUtils,
  Vcl.Forms,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Stan.StorageBin,
  FireDAC.Comp.Client,
  Data.DB,
  FireDAC.Comp.DataSet;

type
  Tshopperdatamod = class(TDataModule)
    shopperfdquery: TFDQuery;
    shoppersourcefdquery: TFDQuery;
    shoppersourcefdqueryid: TIntegerField;
    shoppersourcefdquerypid: TIntegerField;
    shoppersourcefdquerytitle: TWideStringField;
    shoppersourcefdquerystatus: TIntegerField;
    sexfdmemtable: TFDMemTable;
    sexfdmemtableid: TIntegerField;
    sexfdmemtabletitle: TStringField;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
    shopperfdqueryid: TIntegerField;
    shopperfdqueryeid: TIntegerField;
    shopperfdquerygid: TIntegerField;
    shopperfdquerysid: TIntegerField;
    shopperfdquerycardcode: TWideStringField;
    shopperfdqueryname: TWideStringField;
    shopperfdquerysex: TIntegerField;
    shopperfdqueryweixin: TWideStringField;
    shopperfdqueryphone: TWideStringField;
    shopperfdqueryemail: TWideStringField;
    shopperfdquerypassport: TWideStringField;
    shopperfdqueryadcode: TIntegerField;
    shopperfdqueryaddr: TWideStringField;
    shopperfdquerychinese_birthday: TIntegerField;
    shopperfdquerytrash: TIntegerField;
    shopperfdquerystatus: TIntegerField;
    shopperfdqueryexpiry_time: TIntegerField;
    shopperfdquerycreate_time: TIntegerField;
    shopperfdqueryupdate_time: TIntegerField;
    shopperfdquerybirthday_time: TIntegerField;
    shopperfdquerylastshop_time: TIntegerField;
    shopperfdqueryexpirytime: TDateField;
    shopperfdquerycreatetime: TDateField;
    shopperfdqueryupdatetime: TDateField;
    shopperfdquerybirthdaytime: TDateField;
    shopperfdquerylastshoptime: TDateTimeField;
    areafdquery: TFDQuery;
    shopperfdqueryarea: TStringField;
    areafdqueryp: TWideStringField;
    areafdqueryc: TWideStringField;
    areafdquerya: TWideStringField;
    areafdqueryadcode: TIntegerField;
    expofdquery: TFDQuery;
    expofdqueryid: TIntegerField;
    expofdqueryexpotypeid: TIntegerField;
    expofdquerytitle: TWideStringField;
    expofdquerysubtitle: TWideStringField;
    expofdqueryadcode: TIntegerField;
    expofdqueryaddr: TWideStringField;
    expofdquerystartdate: TDateField;
    expofdqueryenddate: TDateField;
    expofdquerybeforedate: TDateField;
    expofdqueryafterdate: TDateField;
    expofdqueryinfo: TWideMemoField;
    expofdqueryweblink: TWideStringField;
    expofdquerystatus: TIntegerField;
    expofdquerytrash: TIntegerField;
    FDEventAlerter1: TFDEventAlerter;
    validateFdCommand: TFDCommand;
    updateshopperFDCommand: TFDCommand;
    softremoveFDCommand: TFDCommand;
    shopperfdquerymod: TIntegerField;
    shopperfdquerygoods: TWideStringField;
    shoppersourcefdquerymod: TWideStringField;
    recoverdelFDCommand: TFDCommand;
    procedure shopperfdqueryAfterGetRecord(DataSet: TFDDataSet);
    procedure shopperfdquerycreatetimeChange(Sender: TField);
    procedure shopperfdqueryexpirytimeChange(Sender: TField);
    procedure shopperfdqueryupdatetimeChange(Sender: TField);
    procedure shopperfdquerylastshoptimeChange(Sender: TField);
    procedure shopperfdquerybirthdaytimeChange(Sender: TField);
    procedure shopperfdqueryBeforeOpen(DataSet: TDataSet);
    procedure shopperfdqueryAfterOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure FDEventAlerter1Alert(ASender: TFDCustomEventAlerter; const AEventName: string;
      const AArgument: Variant);
    procedure shopperfdqueryUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest;
      var AAction: TFDErrorAction; AOptions: TFDUpdateRowOptions);
    procedure shopperfdqueryAfterApplyUpdates(DataSet: TFDDataSet; AErrors: Integer);
    procedure softremoveFDCommandError(ASender, AInitiator: TObject; var AException: Exception);
    procedure shopperfdqueryBeforePost(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    private
      { Private declarations }
    public
      { Public declarations }
      PhoneList: TStringList;
      procedure AddPhonetoList(const phone: string);
      procedure ClearPhonetoList;
      procedure SoftRemoveWithPhone;
      procedure List(map: string);
      function validatePhone(phone: string; id: Integer; const count: Integer = 0)
        : Boolean; overload;
      function validatePhone(phone: string): string; overload;
  end;

function UnixDateToDateTime(const USec: Longint): TDateTime;

const
  SHOPPER_SQL = 'SELECT * FROM jhlh_pmis_shopper where status=1 and trash=0 %s';

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
  connectiondm;
{$R *.dfm}

function UnixDateToDateTime(const USec: Longint): TDateTime;
const
  cUnixStartDate: TDateTime = 25569.0; // 1970/01/01
begin
  Result := (USec / 86400) + cUnixStartDate;
end;

{ Tshopperdatamod }

// 批量增加记录的时候使用,将PHONE加入到一个STRINGLIST
procedure Tshopperdatamod.AddPhonetoList(const phone: string);
begin
  if trim(phone) = '' then
    exit;
  if PhoneList = nil then
    PhoneList := TStringList.Create;
  PhoneList.Add('"' + phone + '"');
end;

// 清空PhoneList
procedure Tshopperdatamod.ClearPhonetoList;
begin
  PhoneList.Clear;
end;

// 使用FDCommand来执行一个SQL,一次性软删除
procedure Tshopperdatamod.SoftRemoveWithPhone;
var
  s: string;
  // wText: TextFile;
begin
  if (PhoneList = nil) or (PhoneList.count = 0) then
    exit;
  try
    s := string.Join(',', PhoneList.ToStringArray);
    // 直接从STRINGLIST到数组再组合成STRING

    softremoveFDCommand.Connection := connectionDataModule.mainFDConnection;
    softremoveFDCommand.MacroByName('Phone').AsRaw := s;
    softremoveFDCommand.ParamByName('eid').Value := expofdquery.FieldByName('id').Value;
    // 使用FireDAC的Macro功能,生成SQL

    { 因为SQL太长,保存到TXT文件进行查看,是否正确生成
      softremoveFDCommand.Prepare;
      AssignFile(wText, 'd:\a.txt');
      Rewrite(wText);//创建文件，或者使用ReSet打开文件
      Writeln(wText,softremoveFDCommand.SQLText);
      CloseFile(wText);
    }
    try
      softremoveFDCommand.Execute;
    except
      raise;
    end;
  finally
    softremoveFDCommand.Close;
    softremoveFDCommand.Connection := nil;
    ClearPhonetoList;
  end;
  Application.Terminate

end;

function Tshopperdatamod.validatePhone(phone: string): string;
var
  Value: Variant;
begin
  Result := '';
  Value := shopperfdquery.Lookup('phone;sid', VarArrayof([phone,shoppersourcefdquery.FieldByName('id').AsInteger]), 'create_time');
  if Vartype(Value) = varInteger then
    Result := formatdatetime('yyyy年mm月dd日', UnixDateToDateTime(Value));
end;

procedure Tshopperdatamod.DataModuleCreate(Sender: TObject);
begin
  // 生成一个性别的内存表
  with sexfdmemtable.Table.Rows do
  begin
    Add([0, '未知']);
    Add([1, '男']);
    Add([2, '女']);
  end;
  sexfdmemtable.CommitUpdates;
  sexfdmemtable.Active := true;

  FDEventAlerter1.Connection := connectionDataModule.mainFDConnection;
  areafdquery.Connection := connectionDataModule.mainFDConnection;
  shopperfdquery.Connection := connectionDataModule.mainFDConnection;
  shoppersourcefdquery.Connection := connectionDataModule.mainFDConnection;
  expofdquery.Connection := connectionDataModule.mainFDConnection;
  validateFdCommand.Connection := connectionDataModule.mainFDConnection;
  updateshopperFDCommand.Connection := connectionDataModule.mainFDConnection;
  recoverdelFDCommand.Connection:=connectionDataModule.mainFDConnection;

  //FDEventAlerter1.Active := true;

  areafdquery.Active := true;
  shoppersourcefdquery.Active := true;
  expofdquery.Active := true;
end;

procedure Tshopperdatamod.DataModuleDestroy(Sender: TObject);
begin
  areafdquery.Active := false;
  shoppersourcefdquery.Active := false;
  expofdquery.Active := false;
  shopperfdquery.Active:=false;
end;

procedure Tshopperdatamod.FDEventAlerter1Alert(ASender: TFDCustomEventAlerter;
  const AEventName: string; const AArgument: Variant);
begin
  shopperfdquery.Refresh;
end;

procedure Tshopperdatamod.List(map: string);
begin
  // shopperfdquery.Open(format(SHOPPER_SQL,[map]));
end;

procedure Tshopperdatamod.shopperfdqueryAfterApplyUpdates(DataSet: TFDDataSet; AErrors: Integer);
begin
  if AErrors = 0 then
    SoftRemoveWithPhone;
end;

procedure Tshopperdatamod.shopperfdqueryAfterGetRecord(DataSet: TFDDataSet);
var
  area: string;
begin
  if (shopperfdquery.FieldValues['create_time'] = 0) then
    shopperfdquery.FieldValues['createtime'] := null
  else
    shopperfdquery.FieldValues['createtime'] :=
      UnixDateToDateTime(shopperfdquery.FieldValues['create_time']);

  if (shopperfdquery.FieldValues['update_time'] = 0) then
    shopperfdquery.FieldValues['updatetime'] := null
  else
    shopperfdquery.FieldValues['updatetime'] :=
      UnixDateToDateTime(shopperfdquery.FieldValues['update_time']);

  if (shopperfdquery.FieldValues['birthday_time'] = 0) then
    shopperfdquery.FieldValues['birthdaytime'] := null
  else
    shopperfdquery.FieldValues['birthdaytime'] :=
      UnixDateToDateTime(shopperfdquery.FieldValues['birthday_time']);

  if (shopperfdquery.FieldValues['expiry_time'] = 0) then
    shopperfdquery.FieldValues['expirytime'] := null
  else
    shopperfdquery.FieldValues['expirytime'] :=
      UnixDateToDateTime(shopperfdquery.FieldValues['expiry_time']);

  if (shopperfdquery.FieldValues['lastshop_time'] = 0) then
    shopperfdquery.FieldValues['lastshoptime'] := null
  else
    shopperfdquery.FieldValues['lastshoptime'] :=
      UnixDateToDateTime(shopperfdquery.FieldValues['lastshop_time']);

  if (shopperfdquery.FieldValues['adcode'] > 0) then
  begin
    areafdquery.DisableControls;
    if areafdquery.FindKey([shopperfdquery.FieldByName('adcode').AsInteger]) then
      shopperfdquery.FieldValues['area'] := areafdquery.FieldValues['p'] + areafdquery.FieldValues
        ['c'] + areafdquery.FieldValues['a']
    else
      shopperfdquery.FieldValues['area'] := '无';
    areafdquery.EnableControls;
  end
  else
    shopperfdquery.FieldValues['area'] := '无';

end;

procedure Tshopperdatamod.shopperfdqueryAfterOpen(DataSet: TDataSet);
begin
  DataSet.EnableControls;
end;

procedure Tshopperdatamod.shopperfdqueryBeforeOpen(DataSet: TDataSet);
begin
  DataSet.DisableControls;
end;

procedure Tshopperdatamod.shopperfdqueryBeforePost(DataSet: TDataSet);
begin
  if DataSet.State = dsEdit then
  begin
    DataSet.FieldValues['update_time'] := DateTimeToUnix(IncHour(now(), 0));
    DataSet.FieldValues['updatetime'] := now;
    //showmessage('ddd');
  end;
end;

procedure Tshopperdatamod.shopperfdquerybirthdaytimeChange(Sender: TField);
begin
  if (Sender.Value = null) then
    shopperfdquery.FieldValues['birthday_time'] := 0
  else
    shopperfdquery.FieldValues['birthday_time'] := DateTimeToUnix(IncHour(Sender.AsDateTime, 0));
end;

procedure Tshopperdatamod.shopperfdquerycreatetimeChange(Sender: TField);
begin
  if (Sender.Value = null) then
    shopperfdquery.FieldValues['create_time'] := 0
  else
    shopperfdquery.FieldValues['create_time'] := DateTimeToUnix(IncHour(Sender.AsDateTime, 0));
end;

procedure Tshopperdatamod.shopperfdqueryexpirytimeChange(Sender: TField);
begin
  if (Sender.Value = null) then
    shopperfdquery.FieldValues['expiry_time'] := 0
  else
    shopperfdquery.FieldValues['expiry_time'] := DateTimeToUnix(IncHour(Sender.AsDateTime, 0));
end;

procedure Tshopperdatamod.shopperfdquerylastshoptimeChange(Sender: TField);
begin
  if (Sender.Value = null) then
    shopperfdquery.FieldValues['lastshop_time'] := 0
  else
    shopperfdquery.FieldValues['lastshop_time'] := DateTimeToUnix(IncHour(Sender.AsDateTime, -8));
end;

procedure Tshopperdatamod.shopperfdqueryUpdateRecord(ASender: TDataSet; ARequest: TFDUpdateRequest;
  var AAction: TFDErrorAction; AOptions: TFDUpdateRowOptions);
begin
  AddPhonetoList(ASender.FieldByName('phone').AsString);
  AAction := eaDefault;
end;

procedure Tshopperdatamod.shopperfdqueryupdatetimeChange(Sender: TField);
begin
  if (Sender.Value = null) then
    shopperfdquery.FieldValues['update_time'] := 0
  else
    shopperfdquery.FieldValues['update_time'] := DateTimeToUnix(IncHour(Sender.AsDateTime, 0))
end;

procedure Tshopperdatamod.softremoveFDCommandError(ASender, AInitiator: TObject;
  var AException: Exception);
begin
  showmessage(AException.Message);
end;

function Tshopperdatamod.validatePhone(phone: string; id: Integer;
  const count: Integer = 0): Boolean;
var
  oTab: TFDDatSTable;
begin
  Result := true;
  validateFdCommand.Params.Items[0].Value := phone;
  validateFdCommand.Params.Items[1].AsInteger:= expofdquery.FieldByName('id').Value;
  oTab := validateFdCommand.Define;
  validateFdCommand.OpenOrExecute;
  validateFdCommand.Fetch(oTab);
  try
    if oTab.Rows.count > count then
    begin
      validateFdCommand.Close;
      updateshopperFDCommand.Params.Items[0].Value := phone;
      updateshopperFDCommand.Params.Items[1].AsInteger := id;
      updateshopperFDCommand.Params.Items[2].AsInteger := expofdquery.FieldByName('id').AsInteger;
      updateshopperFDCommand.OpenOrExecute;

      Result := false;
    end;
  finally
    oTab.Free;
  end;
end;

end.

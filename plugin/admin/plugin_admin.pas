unit plugin_admin;

interface
uses System.Classes,plugin, plugin_admin_frame;


function GetPluginInfo:TPluginInfo;

exports GetPluginInfo;

implementation

function GetPluginInfo:TPluginInfo;
begin
  Result.plugguid:='2B9D420DB8384BD7B617CFB425C3E2D4';
  Result.plugtype:=1; //frame plugin
  Result.plugname:='admin1';
  Result.plugtitle:='ϵͳ����';
  Result.plugversion:='1.0';
  Result.plugcommit:='';
  Result.plugauther:='';
  Result.plugclassname:='TpluginadminFrame';
end;

initialization
  RegisterClass(TpluginadminFrame);

finalization
  UnRegisterClass(TpluginadminFrame);

end.

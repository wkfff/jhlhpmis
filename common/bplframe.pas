unit bplframe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TBplFrame = class(VCl.Forms.TFrame)
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

  TBplFrameClass = class of TBplFrame;
  TFrame = TBplFrame;

implementation


{ TBplFrame }

constructor TBplFrame.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TBplFrame.Destroy;
begin

  inherited;
end;

end.

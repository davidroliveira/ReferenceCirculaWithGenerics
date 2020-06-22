unit Entity.Master;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TEntityMaster<TEntityDog> = class
  strict private
    Name: String;
    FDog: TEntityDog;
    procedure SetDog(Value: TEntityDog);
    function GetDog: TEntityDog;
  public
    property Dog: TEntityDog read GetDog write SetDog;
  end;

implementation

function TEntityMaster<TEntityDog>.GetDog: TEntityDog;
begin
  Result := TEntityDog(FDog);
end;

procedure TEntityMaster<TEntityDog>.SetDog(Value: TEntityDog);
begin
  FDog := Value;
end;

end.

unit Entity.Dog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TEntityDog<TEntityMaster> = class
  strict private
    Name: String;
    FMaster: TEntityMaster;
    FEntityDog: TEntityDog<TEntityMaster>;
    procedure SetMaster(Value: TEntityMaster);
    function GetMaster: TEntityMaster;
  public
    property Master: TEntityMaster read GetMaster write SetMaster;
  end;

implementation

function TEntityDog<TEntityMaster>.GetMaster: TEntityMaster;
begin
  Result := TEntityMaster(FMaster);
end;

procedure TEntityDog<TEntityMaster>.SetMaster(Value: TEntityMaster);
begin
  FMaster := Value;
end;

end.

unit Classes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,

  Entity.Master, Entity.Dog;

type
  TEntityDog = class;
  TEntityMaster = class;

  TEntityMaster = class(Entity.Master.TEntityMaster<TEntityDog>);
  TEntityDog = class(Entity.Dog.TEntityDog<TEntityMaster>);

implementation

end.

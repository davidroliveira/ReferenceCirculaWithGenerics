unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classes;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    Master: TEntityMaster;
    Dog: TEntityDog;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Self.Master.Dog := Self.Dog;
  Self.Dog.Master := Self.Master;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Master := TEntityMaster.Create;
  Dog := TEntityDog.Create;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  Master.Free;
  Dog.Free;
end;

end.

program Project1;

uses
  Vcl.Forms,
  eInterface.View in 'eInterface.View.Principal' {Form1},
  eInterface.Model.Interfaces in 'eInterface.Model.Interfaces.pas',
  eInterface.Model.PessoaFisica in 'eInterface.Model.PessoaFisica.pas',
  eInterface.Model.PessoaJuridica in 'eInterface.Model.PessoaJuridica.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

unit eInterface.Model.PessoaFisica;

interface

uses
  eInterface.Model.Interfaces;

type
  TModelPessoaFisica = class(TInterfacedObject, iPessoa)
  private
    FNome: String;
    FSobreNome: String;
    function Nome (Value: String): iPessoa;
    function SobreNome(Value: string): iPessoa;
    function NomeCompleto: String;
  public
    constructor create;
    destructor destroy; override;
    class function New: IPessoa;
  end;

implementation

{ TModelPessoaFisica }



{ TModelPessoaFisica }

constructor TModelPessoaFisica.create;
begin

end;

destructor TModelPessoaFisica.destroy;
begin

  inherited;
end;

class function TModelPessoaFisica.New: IPessoa;
begin
  Result := Self.create;
end;

function TModelPessoaFisica.Nome(Value: String): iPessoa;
begin
  Result := Self;
  FNome:= Value;
end;

function TModelPessoaFisica.SobreNome(Value: string): iPessoa;
begin
  Result := Self;
  FSobreNome:= Value;
end;

function TModelPessoaFisica.NomeCompleto: String;
begin
  Result:=  FNome + ' ' + FSobreNome;
end;



end.

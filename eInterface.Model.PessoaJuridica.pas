unit eInterface.Model.PessoaJuridica;

interface

uses
  eInterface.Model.Interfaces;

type
  TModelPessoaJuridica = class(TInterfacedObject, iPessoa)
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

{ TModelPessoaJuridica }



{ TModelPessoaJuridica }

constructor TModelPessoaJuridica.create;
begin

end;

destructor TModelPessoaJuridica.destroy;
begin

  inherited;
end;

class function TModelPessoaJuridica.New: IPessoa;
begin
  Result := Self.create;
end;

function TModelPessoaJuridica.Nome(Value: String): iPessoa;
begin
  Result := Self;
  FNome:= Value;
end;

function TModelPessoaJuridica.SobreNome(Value: string): iPessoa;
begin
  Result := Self;
  FSobreNome:= Value;
end;

function TModelPessoaJuridica.NomeCompleto: String;
begin
  Result:=  FNome + ' ' + FSobreNome + ' Ltda Me';
end;

end.
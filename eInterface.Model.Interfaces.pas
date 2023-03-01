unit eInterface.Model.Interfaces;

interface

type
  iPessoa= interface
    ['{56818153-5EA6-4070-9428-BF6AFE9B61D8}']
    function nome (Value: String): iPessoa;
    function SobreNome(Value: string): iPessoa;
    function NomeCompleto: String;
  end;

implementation

end.

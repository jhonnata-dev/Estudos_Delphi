unit Classes.Pix;

interface

uses Classes.Pagamento;

type TPix = class(TPagamento)
     private
       { private declarations }
     protected
       { protected declarations }
     public
       { public declarations }

     published
       { published declarations }
       function Pagar : string;

     end;

implementation



{ TPix }

function TPix.Pagar: string;
begin
  Result := 'Dentro do pix';
end;

end.

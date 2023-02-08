unit FormatCNPJ;

interface

type

  TFormatCNPJ = class
  public
    function FormatarCNPJ(CNPJ: string): string;
  end;

implementation

function TFormatCNPJ.FormatarCNPJ(CNPJ: string): string;
var
  CNPJFormatado: string;
  I: Integer;
begin
  CNPJFormatado := CNPJ[1];

  for I := 2 to Length(CNPJ) do
  begin
    if (I = 3) or (I = 6) or (I = 9) or (I = 13) then
      CNPJFormatado := CNPJFormatado + '%' + CNPJ[I]
    else
      CNPJFormatado := CNPJFormatado + CNPJ[I];
  end;

  Result := CNPJFormatado;
end;

end.


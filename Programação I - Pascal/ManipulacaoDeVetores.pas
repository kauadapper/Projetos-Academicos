{ Kauã Dapper }

program ler_valores;

const
  TAM = 10;

var
  vet: array [1..TAM] of integer;
  vp, vi: array [1..TAM] of integer;
  ind, cont_p, cont_i: integer;

begin
  writeln('Insira 10 valores inteiros:');
  for ind := 1 to 10 do
    readln(vet[ind]);

  cont_p := 1;
  cont_i := 1;

  for ind := 1 to TAM do
  begin
    if vet[ind] mod 2 = 0 then
    begin
      vp[cont_p] := vet[ind];
      cont_p := cont_p + 1;
    end
    else
    begin
      vi[cont_i] := vet[ind];
      cont_i := cont_i + 1;
    end;
  end;

  if (cont_p = 1) then
    writeln('Nao ha numeros pares')
  else
  begin
    writeln('Os valores pares sao esses:');
    for ind := 1 to cont_p - 1 do
      writeln(vp[ind]);
  end;

  if (cont_i = 1) then
    writeln('Nao ha numeros impares')
  else
  begin
    writeln('Os valores impares sao esses:');
    for ind := 1 to cont_i - 1 do
      writeln(vi[ind]);
  end;

  readln;
end.
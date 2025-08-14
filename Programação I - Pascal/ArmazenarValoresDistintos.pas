{ Kauã Dapper }

program Questao2;

const
  TAM = 20;

var
  vet: array[1..TAM] of integer;
  naoesta: array[1..5] of integer;
  ind, ind2, valor_presente: integer;
  presente: boolean;

begin
  randomize;

  for ind := 1 to TAM do
    vet[ind] := random(100);

  writeln('Insira os valores que deseja saber se estao presentes no vetor. Para encerrar, digite 0.');

  ind2 := 1;
  repeat
    readln(valor_presente);
    presente := false;
    for ind := 1 to TAM do
    begin
      if valor_presente = vet[ind] then
      begin
        presente := true;
        break;
      end;
    end;

    if (not presente) and (ind2 <= 5) and (valor_presente <> 0) then
    begin
      naoesta[ind2] := valor_presente;
      ind2 := ind2 + 1;
    end;
  until (valor_presente = 0) or (ind2 > 5);

  writeln('Valores que nao estao presentes:');
  for ind := 1 to ind2 - 1 do
    write(naoesta[ind]:4);

end.
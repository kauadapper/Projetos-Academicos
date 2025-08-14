{ Kauã Dapper }

program valores;

var
  vetor: array[1..15] of integer;
  ind, valor, conferir, cont: integer;
  porcentagem: real;

begin
  cont := 0;
  writeln('Insira 15 valores abaixo:');
  
  for ind := 1 to 15 do
    begin
      readln(valor);
      vetor[ind] := valor;
    end;

    writeln('Insira um numero para conferir quantas vezes ele aparece no vetor:');
    readln(conferir);
    for ind := 1 to 15 do
    begin
      if vetor[ind] = conferir then
        cont := cont + 1;
    end;

  porcentagem := (cont / 15) * 100;
  writeln('Voce conferiu o numero: ', conferir, '. Ele aparece ', cont, ' vezes. ', porcentagem:0:1, '%.');
end.
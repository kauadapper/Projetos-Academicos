{ Kauã Dapper }
{ Questão 1 }

program questao1;

const
  TOTAL_CIDADES = 5;

var
  cidades: array[1..TOTAL_CIDADES] of string;
  populacao: array[1..TOTAL_CIDADES] of integer;
  passagens: array[1..TOTAL_CIDADES, 1..TOTAL_CIDADES] of real;
  cidade_destino: integer;
  i, j: integer;
  cidade_populosa: integer;

procedure dados_randomicos;
begin
  for i := 1 to TOTAL_CIDADES do
  begin
    Str(i, cidades[i]);
    cidades[i] := 'Cidade' + cidades[i];
    populacao[i] := Random(100000);
    
    if populacao[i] <= 0 then
      populacao[i] := populacao[i] * -1;
  end;

  for i := 1 to TOTAL_CIDADES do
    for j := 1 to TOTAL_CIDADES do
      passagens[i, j] := Random * 100;
end;

procedure info;
begin
  writeln('Cidades e Populacao:');
  for i := 1 to TOTAL_CIDADES do
    writeln(cidades[i], ' - Populacao: ', populacao[i]);

  writeln('Matriz de precos das passagens:');
  for i := 1 to TOTAL_CIDADES do
  begin
    for j := 1 to TOTAL_CIDADES do
      write(passagens[i, j]:8:2, ' ');

    writeln;
  end;
end;

procedure cidade_populosa_pesquisa;
begin
  cidade_populosa := 1;
  for i := 2 to TOTAL_CIDADES do
    if populacao[i] > populacao[cidade_populosa] then
      cidade_populosa := i;
end;

procedure valorPassagem;
begin
  write('Insira o numero da cidade destino: ');
  readln(cidade_destino);

  writeln('Preco da passagem da cidade mais populosa para ', cidades[cidade_destino], ': ', passagens[cidade_populosa, cidade_destino]:8:2);
end;

begin
  dados_randomicos;
  info;
  cidade_populosa_pesquisa;
  valorPassagem;
end.
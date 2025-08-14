{ Kauã Dapper }

program loja;

const
  TAMLIN = 5;
  TAMCOL = 12;

var
  produtos: array[1..TAMLIN] of string;
  vendas: array[1..TAMLIN, 1..TAMCOL] of integer;
  total_vendas_produtos: array[1..TAMLIN] of integer;
  total_vendas_mes: array[1..TAMCOL] of integer;
  produto_maior: integer;
  mes_maior: integer;
  i, j: integer;

begin
  writeln('Informe os nomes dos 5 produtos:');
  for i := 1 to TAMLIN do
  begin
    write('Produto ', i, ': ');
    readln(produtos[i]);
  end;


  randomize;
  for i := 1 to TAMLIN do
  begin
    for j := 1 to TAMCOL do
    begin
      vendas[i, j] := random(100);
    end;
  end;


  for i := 1 to TAMLIN do
  begin
    total_vendas_produtos[i] := 0;
    for j := 1 to TAMCOL do
    begin
      total_vendas_produtos[i] := total_vendas_produtos[i] + vendas[i, j];
      total_vendas_mes[j] := total_vendas_mes[j] + vendas[i, j];
    end;
  end;


  produto_maior := 1;
  for i := 2 to TAMLIN do
  begin
    if total_vendas_produtos[i] > total_vendas_produtos[produto_maior] then
      produto_maior := i;
  end;


  mes_maior := 1;
  for j := 2 to TAMCOL do
  begin
    if total_vendas_mes[j] > total_vendas_mes[mes_maior] then
      mes_maior := j;
  end;

  writeln();
  writeln('Produto mais vendido no ano: ', produtos[produto_maior]);
  writeln('Total de unidades vendidas desse produto: ', total_vendas_produtos[produto_maior]);
  writeln('Mes mais vendido: ', mes_maior);
  writeln('Total de unidades vendidas no mes mais vendido: ', total_vendas_mes[mes_maior]);
end.
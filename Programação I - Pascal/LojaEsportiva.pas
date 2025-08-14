{ Kauã Dapper }

program LojaEsportiva;

const
  MAX_PRODUTOS = 150;

type
  Produto = record
    nome: string;
    codigo: integer;
    preco_unitario: real;
    total_estoque: integer;
  end;

var
  Produtos: array[1..MAX_PRODUTOS] of Produto;
  total_produtos: integer;

procedure lerProdutos;
var
  i: integer;
begin
  writeln('Insira os dados dos produtos. Para encerrar, digite 0 como codigo.');
  i := 1;

  repeat
    writeln('Produto ', i, ':');
    write('Nome: ');
    readln(Produtos[i].nome);

    if Produtos[i].nome <> '0' then
    begin
      write('Codigo: ');
      readln(Produtos[i].codigo);

      write('Preco unitario: ');
      readln(Produtos[i].preco_unitario);

      write('Total em estoque: ');
      readln(Produtos[i].total_estoque);

      i := i + 1;
    end;

  until (i > MAX_PRODUTOS) or (Produtos[i].nome = '0');

  total_produtos := i - 1;
end;

procedure ProdutosEmFalta;
var
  i: integer;
begin
  writeln('Produtos fora de estoque:');
  for i := 1 to total_produtos do
  begin
    if Produtos[i].total_estoque = 0 then
      writeln(Produtos[i].nome);
  end;
end;

function media_preco: real;
var
  i: integer;
  soma_preco: real;
begin
  soma_preco := 0;

  for i := 1 to total_produtos do
    soma_preco := soma_preco + Produtos[i].preco_unitario;

  media_preco := soma_preco / total_produtos;
end;

procedure produtosCaros;
var
  i, j: integer;
  Temp: Produto;
begin
  for i := 1 to total_produtos - 1 do
    for j := i + 1 to total_produtos do
      if Produtos[i].preco_unitario < Produtos[j].preco_unitario then
      begin
        Temp := Produtos[i];
        Produtos[i] := Produtos[j];
        Produtos[j] := Temp;
      end;

  writeln('Os 3 produtos mais caros:');
  for i := 1 to 3 do
    writeln('Nome: ', Produtos[i].nome, ' | Preco: ', Produtos[i].preco_unitario:0:2);
end;

begin
  lerProdutos;
  ProdutosEmFalta;
  writeln('Confira a media de preco: ', media_preco:0:2);
  produtosCaros;
end.
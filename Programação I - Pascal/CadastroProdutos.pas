{ Kauã Dapper }

program loja_informatica;

const
  TAM = 5;

type
  Produto = record
    nome: string;
    preco: real;
    categoria: integer;
  end;

var
  produtos: array[1..TAM] of Produto;
  i, cont_software, cont_hardware: integer;
  resposta: char;
  maior_preco_software: real;
  nome_mais_caro_software: string;

begin
  cont_software := 0;
  cont_hardware := 0;
  maior_preco_software := 0;

  for i := 1 to TAM do
  begin
    writeln('Insira o nome do produto: ');
    readln(produtos[i].nome);
    writeln('Insira o preco do produto: ');
    readln(produtos[i].preco);
    writeln('Insira a categoria do produto (1-Software, 2-Hardware): ');
    readln(produtos[i].categoria);

    if produtos[i].categoria = 1 then
    begin
      cont_software := cont_software + 1;
      if produtos[i].preco > maior_preco_software then
      begin
        maior_preco_software := produtos[i].preco;
        nome_mais_caro_software := produtos[i].nome;
      end;
    end
    else if produtos[i].categoria = 2 then
      cont_hardware := cont_hardware + 1;

    writeln('Produto: ', produtos[i].nome, ' Valor: ', produtos[i].preco:0:2, ' Categoria (1-Software, 2-Hardware): ', produtos[i].categoria);
    writeln('Deseja fazer um novo cadastro? - (S/N)');
    readln(resposta);
    resposta := UpCase(resposta);

    if resposta = 'N' then
      Break;
  end;

  writeln('Total de produtos cadastrados: ', i);
  if cont_software > cont_hardware then
    writeln('A categoria de produto mais vendida eh Software.')
  else if cont_hardware > cont_software then
    writeln('A categoria de produto mais vendida eh Hardware.')
  else
    writeln('A loja vende a mesma quantidade de produtos de Software e Hardware.');

  if maior_preco_software > 0 then
    writeln('O software mais caro vendido na loja eh: ', nome_mais_caro_software, '. Valor em reais: ', maior_preco_software:1:0)
  else
    writeln('Nao foram cadastrados softwares na loja.');
end.
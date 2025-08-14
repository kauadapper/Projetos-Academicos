{ Kauã Dapper }
{ Questão 2 }

program questao2;

const
  MAX_PESSOAS = 125;

type
  Categoria = (A, D);
  Pessoa = record
    nome: string[50];
    idade: integer;
    categoria: Categoria;
    curso: string[50];
  end;

var
  pessoas: array[1..MAX_PESSOAS] of Pessoa;
  total_pessoas: integer;

procedure leitura(var pessoa: Pessoa);
begin
  writeln('Insira o nome: ');
  readln(pessoa.nome);
  
  writeln('Insira a idade: ');
  readln(pessoa.idade);
  
  writeln('Insira a categoria (A-Aluno; D-Docente): ');
  readln(pessoa.categoria);
  
  writeln('Insira o nome do curso vinculado: ');
  readln(pessoa.curso);
end;

procedure velho_pesquisar(curso: string);
var
  i: integer;
  mais_velho: Pessoa;
begin
  mais_velho.idade := 0;
  
  for i := 1 to total_pessoas do
  begin
    if (pessoas[i].curso = curso) and (pessoas[i].idade > mais_velho.idade) then
      mais_velho := pessoas[i];
  end;
  
  if mais_velho.idade > 0 then
    writeln('A pessoa mais velha do curso ', curso, ' eh: ', mais_velho.nome)
  else
    writeln('Nenhuma pessoa encontrada para o curso ', curso);
end;

procedure percentualAlunos;
var
  i, total_alunos: integer;
  percentual: real;
begin
  total_alunos := 0;
  
  for i := 1 to total_pessoas do
  begin
    if pessoas[i].categoria = A then
      total_alunos := total_alunos + 1;
  end;
  
  if total_pessoas > 0 then
  begin
    percentual := (total_alunos / total_pessoas) * 100;
    writeln('Percentual de alunos: ', percentual:0:2, '%');
  end
  else
    writeln('Nenhuma pessoa entrevistada.');
end;

procedure programaPrincipal;
var
  opcao: char;
  curso_pesquisa: string;
begin
  total_pessoas := 0;
  
  repeat
    writeln('Opcoes:');
    writeln('1 - Realizar a leitura dos dados.');
    writeln('2 - Informar a pessoa mais velha de um determinado curso.');
    writeln('3 - Informar o percentual de alunos que frequentaram a biblioteca.');
    writeln('0 - Sair.');
    
    readln(opcao);
    
    case opcao of
      '1': begin
             if total_pessoas < MAX_PESSOAS then
             begin
               total_pessoas := total_pessoas + 1;
               leitura(pessoas[total_pessoas]);
             end
             else
               writeln('Limite de pessoas atingido.');
           end;
      '2': begin
             writeln('Digite o nome do curso para pesquisa: ');
             readln(curso_pesquisa);
             velho_pesquisar(curso_pesquisa);
           end;
      '3': percentualAlunos;
    end;
    
  until opcao = '0';
end;

begin
  programaPrincipal;
end.
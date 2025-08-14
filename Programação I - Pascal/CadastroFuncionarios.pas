{ Kauã Dapper }

program empresa;

const
  MAX_FUNCIONARIOS = 35;
  CARGO1 = 1;
  CARGO2 = 2;
  CARGO3 = 3;

type
  RegistroFuncionarios = record
    nome: string;
    salario: real;
    cargo: integer;
  end;

var
  funcionarios: array[1..MAX_FUNCIONARIOS] of RegistroFuncionarios;

procedure cadastroFuncionario(var func: RegistroFuncionarios);
begin
  writeln('Digite o nome do funcionario: ');
  readln(func.nome);
  writeln('Digite o salario do funcionario: ');
  readln(func.salario);
  writeln('Digite o cargo do funcionario (1, 2 ou 3): ');
  readln(func.cargo);
end;

function verificarRegistroFuncionarios(nome: string): boolean;
var
  i: integer;
begin
  verificarRegistroFuncionarios := false;
  for i := 1 to MAX_FUNCIONARIOS do
  begin
    if funcionarios[i].nome = nome then
    begin
      verificarRegistroFuncionarios := true;
      writeln('Funcionario encontrado!');
      writeln('Cargo: ', funcionarios[i].cargo);
      writeln('Salario: ', funcionarios[i].salario:0:2);
      break;
    end;
  end;
  if not verificarRegistroFuncionarios then
    writeln('Funcionario nao encontrado.');
end;

function MediaSalarial: real;
var
  i: integer;
  soma: real;
begin
  soma := 0;
  for i := 1 to MAX_FUNCIONARIOS do
    soma := soma + funcionarios[i].salario;
  MediaSalarial := soma / MAX_FUNCIONARIOS;
  writeln(MediaSalarial:0:2);
end;

function RegistroFuncionariosAcimaMedia(cargo: integer): integer;
var
  i, count: integer;
  media: real;
begin
  media := MediaSalarial;
  count := 0;
  for i := 1 to MAX_FUNCIONARIOS do
    if (funcionarios[i].cargo = cargo) and (funcionarios[i].salario > media) then
      count := count + 1;
  RegistroFuncionariosAcimaMedia := count;
end;

var
  i: integer;
  continuar: char;
  nomeBusca: string;
  cargoBusca: integer;

begin
  for i := 1 to MAX_FUNCIONARIOS do
  begin
    cadastroFuncionario(funcionarios[i]);
    writeln('Adicionar outro funcionario (S/N)? ');
    readln(continuar);
    if (continuar <> 'S') and (continuar <> 's') then
      break;
  end;
 
  writeln('Digite o nome do funcionario a ser pesquisado: ');
  readln(nomeBusca);
  verificarRegistroFuncionarios(nomeBusca);

  writeln('Digite o cargo para verificar a quantidade de funcionarios acima da media salarial: ');
  readln(cargoBusca);
  writeln('Quantidade de funcionarios do cargo ', cargoBusca, ' com salario acima da media salarial de R$ ', RegistroFuncionariosAcimaMedia(cargoBusca),'');

end.
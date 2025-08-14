{ Kauã Dapper }

program turma;

type 
  alunos = record
    nome: string;
    g1, g2: real;
    aulas: integer;
  end;

const
  TAM = 35;
  AULAS_TOTAIS = 20;

var
  vetor: array[1..TAM] of alunos;
  cont, encerrar, aprovados, reprovados: integer;
  melhor_media, percentual_aprovados, percentual_reprovados: real;
  melhores_alunos: array of alunos;

procedure calcularEImprimirMedia(var aluno: alunos);
var
  media_notas, media_aulas: real;
begin
  media_notas := (aluno.g1 + aluno.g2) / 2;
  media_aulas := (aluno.aulas / AULAS_TOTAIS) * 100;
  writeln('O aluno ', aluno.nome, ' teve sua nota media de: ', media_notas:0:2, ' . Assistiu ', media_aulas:0:2, '% das aulas.');
  
  if (media_notas >= 8) and (media_aulas >= 75) then
    writeln('Aprovado!')
  else
    writeln('Reprovado!');

  writeln;
end;

begin
  cont := 0;

  repeat
    writeln('Informe as informacoes do aluno.');
    write('Nome: '); readln(vetor[cont + 1].nome);
    write('Nota G1: '); readln(vetor[cont + 1].g1);
    write('Nota G2: '); readln(vetor[cont + 1].g2);
    write('Aulas assistidas: '); readln(vetor[cont + 1].aulas);

    if (vetor[cont + 1].g1 < 0) or (vetor[cont + 1].g1 > 10) or
       (vetor[cont + 1].g2 < 0) or (vetor[cont + 1].g2 > 10) or
       (vetor[cont + 1].aulas < 0) or (vetor[cont + 1].aulas > AULAS_TOTAIS) then
    begin
      writeln('Erro: Informe valores validos para as notas (0 a 10) e aulas (0 a ', AULAS_TOTAIS, ').');
      continue;
    end;

    calcularEImprimirMedia(vetor[cont + 1]);

    cont := cont + 1;
    write('Deseja encerrar? Se sim, digite 0. Para continuar, digite 1: '); readln(encerrar);
  until (cont >= TAM) or (encerrar = 0);

melhor_media := 0;
setlength(melhores_alunos, 0);
aprovados := 0;
reprovados := 0;

for cont := 1 to TAM do
begin
  if (vetor[cont].g1 >= 0) and (vetor[cont].g1 <= 10) and
     (vetor[cont].g2 >= 0) and (vetor[cont].g2 <= 10) and
     (vetor[cont].aulas >= 0) and (vetor[cont].aulas <= AULAS_TOTAIS) then
  begin
    calcularEImprimirMedia(vetor[cont]);

    if (vetor[cont].g1 + vetor[cont].g2) / 2 > melhor_media then
    begin
      melhor_media := (vetor[cont].g1 + vetor[cont].g2) / 2;
      setlength(melhores_alunos, 1);
      melhores_alunos[0] := vetor[cont];
    end
    else if (vetor[cont].g1 + vetor[cont].g2) / 2 = melhor_media then
    begin
      setlength(melhores_alunos, length(melhores_alunos) + 1);
      melhores_alunos[length(melhores_alunos) - 1] := vetor[cont];
    end;

    if ((vetor[cont].g1 + vetor[cont].g2) / 2 >= 8) and
       ((vetor[cont].aulas / AULAS_TOTAIS) * 100 >= 75) then
      aprovados := aprovados + 1
    else
      reprovados := reprovados + 1;
  end;
end;

writeln;
writeln('Melhores Alunos: ');
for cont := 0 to length(melhores_alunos) - 1 do
  writeln(melhores_alunos[cont].nome, ' - Media: ', (melhores_alunos[cont].g1 + melhores_alunos[cont].g2) / 2:0:2);

percentual_aprovados := (aprovados / TAM) * 100;
percentual_reprovados := (reprovados / TAM) * 100;

writeln;
writeln('Percentual de Alunos Aprovados: ', percentual_aprovados:0:2, '%');
writeln('Percentual de Alunos Reprovados: ', percentual_reprovados:0:2, '%');

end.
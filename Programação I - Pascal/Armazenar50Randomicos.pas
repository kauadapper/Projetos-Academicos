{ Kauã Dapper }

program programa;

const
    TAMLIN = 5;
    TAMCOL = 6;
    MAX_VALORES_DISTINTOS = 50;

var
  mat: array[1..TAMLIN, 1..TAMCOL] of integer;
  valores_distintos: array[1..MAX_VALORES_DISTINTOS] of integer;
  lin, col, valor, maior_valor, cont, maior_cont, num_distintos: integer;

begin
    maior_valor := 0;
    cont := 0;
    maior_cont := 0;
    num_distintos := 0;
    randomize;

    for valor := 1 to MAX_VALORES_DISTINTOS do
        valores_distintos[valor] := 0;


    for lin := 1 to TAMLIN do
        begin
            for col := 1 to TAMCOL do
                begin
                    mat[lin, col] := random(51);

                    if valores_distintos[mat[lin, col]] = 0 then
                        begin
                            valores_distintos[mat[lin, col]] := 1;
                            num_distintos := num_distintos + 1;
                        end;
                end;
        end;

    writeln('Matriz gerada:');
    for lin := 1 to TAMLIN do
        begin
            for col := 1 to TAMCOL do
                write(mat[lin, col]:4);
                writeln();
        end;

    writeln('Valores distintos na matriz:');
    for valor := 1 to MAX_VALORES_DISTINTOS do
        begin
            if valores_distintos[valor] = 1 then
            writeln('Valor: ', valor);
        end;

    for valor := 0 to 50 do
        begin
            cont := 0;
            for lin := 1 to TAMLIN do
                for col := 1 to TAMCOL do
                    if mat[lin, col] = valor then
                    cont := cont + 1;

            if cont > maior_cont then
                begin
                    maior_valor := valor;
                    maior_cont := cont;
                end;
        end;

    writeln('O valor que mais ocorre na matriz eh ', maior_valor, '. Ocorre ', maior_cont, ' vezes.');

end.
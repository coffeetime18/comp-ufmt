program trabalhoProg1;

var
  v: array[0..100] of Integer; // vetor com tamanho máximo 100
  n, i, j, temp, num, inicio, fim, meio, resultado: Integer;

begin
  n := 0; // quantidade de números lidos

  writeln('Digite números inteiros aleatórios (0 finalizará a entrada de dados):');
  // lê os números até zero ser digitado
  repeat
    readln(num);
    if num <> 0 then
    begin
      v[n] := num; // adiciona ao vetor
      n := n + 1;  // incrementa contador
    end;
  until (num = 0) or (n = 100);

  writeln('Digite o número que deseja buscar:');
  readln(num);

  
  // Ordenar o vetor (bubble sort)
  
  for i := 0 to n - 2 do
    for j := 0 to n - 2 - i do
      if v[j] > v[j+1] then
      begin
        temp := v[j];
        v[j] := v[j+1];
        v[j+1] := temp;
      end;

  
  // Busca binária para encontrar o menor índice do número
  
  inicio := 0;
  fim := n - 1;
  resultado := -1; // assume que não encontrou

  while inicio <= fim do
  begin
    meio := (inicio + fim) div 2;

    if v[meio] = num then
    begin
      resultado := meio; // encontrou
      fim := meio - 1;   // continuar procurando à esquerda
    end
    else if v[meio] < num then
      inicio := meio + 1
    else
      fim := meio - 1;
  end;

  
  // Exibe resultado
  
  if resultado = -1 then
    writeln('O número buscado não está presente')
  else
    writeln('O número buscado se encontra na posicão: ', resultado); // índice começa em 0
end.


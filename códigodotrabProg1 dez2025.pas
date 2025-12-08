program trabalhoProg1;

var
  v: array[0..100] of Integer; // vetor com tamanho máximo 100 que vai armazenar os números digitados
  n, i, j, temp, num, inicio, fim, meio, resultado: Integer;

begin
  n := 0; // contador é inicializado em 0 pois ainda não foi lido nenhum número

  writeln('Digite números inteiros aleatórios (0 finalizará a entrada de dados):');
  // lê os números até zero ser digitado
  repeat
    readln(num); // lê um número do teclado
    if num <> 0 then // se o número for diferente zero
    begin           // começa a executar as instruções abaixo
      v[n] := num; // guarda o número na posição "n" do vetor
      n := n + 1;  // incrementa contador em 1
    end;
  until (num = 0) or (n = 100); // termina ao digitar 0 ou atingir o limite do vetor max = 100

  writeln('Digite o número que deseja buscar:');
  readln(num); // guarda o número na variável num

  
  // Ordena o vetor (bubble sort)
  
  for i := 0 to n - 2 do        // percorre o vetor várias vezes
    for j := 0 to n - 2 - i do  // compara elementos vizinhos
      if v[j] > v[j+1] then     // se estiver fora de ordem começa as instruções abaixo do "begin"
      begin                     
        temp := v[j];            // guarda temporariamente
        v[j] := v[j+1];         // troca os dois elementos
        v[j+1] := temp;          // completa a troca
      end;

  
  // Coemça a busca binária para encontrar o menor índice do número
  
  inicio := 0;          // primeira posição do vetor
  fim := n - 1;         // última posição do vetor
  resultado := -1;      // -1 indica que ainda não encontramos o número

  while inicio <= fim do        // enquanto houver elementos para verificar
  begin
    meio := (inicio + fim) div 2;  // calcula o índice do elemento do meio

    if v[meio] = num then         // verifica se o número foi encontrado
    begin
      resultado := meio; // // guarda o índice encontrado
      fim := meio - 1;   // continua procurando à esquerda
    end
    else if v[meio] < num then // se o número do meio for menor que o número procurado
      inicio := meio + 1        // procura-se à direita
    else                        // se o número do meio for maior que o procurado
      fim := meio - 1;          // procura-se à esquerda
  end;

  
  // Exibe resultado
  
  if resultado = -1 then  // se não encontrou o número solicitado exibe a mensagem abaixo "o número buscado não está presente"
    writeln('O número buscado não está presente')   
  else
    writeln('O número buscado se encontra na posicão: ', resultado); // índice começa em 0
end.


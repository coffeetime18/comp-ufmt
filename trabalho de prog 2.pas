program EncontrarOMenorElemento;

var
  tabela: array[1..3, 1..3] of integer; // tamanho da matriz quadrada 3x3 e armazena todos os 9 números na memória de forma organizada.
  linha, coluna: integer;               // declaração das variáveis que vão percorrer a matriz
  menorValor: integer;                  // variável que guarda o menor elemento da matriz
  linhaDoMenor, colunaDoMenor: integer; // variável pra guardar o "endereço" do menor elemento/número da matriz

begin
  
  writeln('Matriz a ser preenchida abaixo:');
  
  for linha := 1 to 3 do  // começo do laço externo onde a variável "linha" começa valendo 1 
  begin
    for coluna := 1 to 3 do // começo do laço interno para cada variável "linha", a variável "coluna" passa contando de 1 até 3 que é o tamanho da matriz
    begin
      
      write('Digite números aleatórios para preencher as linhas e colunas da matriz [', linha, ',', coluna, ']: ');  // nessa parte o write serve pra manter o controle do endereço das linhas e colunas da matriz [1,1], [1,2]
      readln(tabela[linha, coluna]); // readln serve pra ler o número digitado pelo usuário e gardar ele na posição exata que ele se encontra na matriz
    end;
  end;

  
  writeln; 
  writeln('resultado da matriz completamente preenchida:'); // mostra pro usuário a matriz preenchida
  for linha := 1 to 3 do
  begin
    for coluna := 1 to 3 do
    begin
      
      write(tabela[linha, coluna]:4, ' ');  // alinha o espaçamento da matriz preenchida para mostrar todos os números digitados pelo usuário em suas respectivas "casas"
    end;
    writeln; // writeln pra pular uma linha e dar um espaçamento
  end;

  
  
  menorValor := tabela[1, 1]; // denomina o menor valor da matriz como [1,1] pra ser o menor provisóriamente
  linhaDoMenor := 1;    // deixa registrado que temporariamente a posição [1,1] é a primeira
  colunaDoMenor := 1;  // deixa registrado que temporariamente a posição [1,1] é a primeira

  
  
  for linha := 1 to 3 do // varre as fileiras de linha na horizontal fixando o número respectivo na linha
  begin
    
    for coluna := 1 to 3 do // varre as fileiras de colunas na vertical fixando o número respectivo na coluna
    begin  
      
      if tabela[linha, coluna] < menorValor then // analisa se o valor que está na matriz agora é menor que o salvo temporariamente
      begin
        
        menorValor := tabela[linha, coluna]; // se sim e a condição for verdadeira e realmente for o menor número achado ele fica guardado aqui
        linhaDoMenor := linha;    // as coordenadas atuais do menor número encontrado são guardadas na variável para não serem perdidas no final do laço         
        colunaDoMenor := coluna;  // as coordenadas atuais do menor número encontrado são guardadas na variável para não serem perdidas no final do laço            
      end; // caso o número analisado não for o menor ele é ignorado e passa pra próxima "coluna".
    end;
    
  end;

  
  writeln;
  writeln('O menor número encontrado foi: ', menorValor); // mostra pro usuário o menor elemento/número encontrado que foi armazenado na variável menorValor.
  writeln('Ele se encontra na posição respectivamente linha/coluna: [', linhaDoMenor, ',', colunaDoMenor, ']'); // mostra pro usuário em qual posição o elemento/número foi encontrado

  readln; 
end.
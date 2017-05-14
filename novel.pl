personagem(laura).
personagem(lucas).
personagem(phelipe).
personagem(ricardo).
personagem(andre).


emite_fala(Personagem, Alternativa, NumeroFala) :-
    ler_txt(Arquivo, Personagem, Alternativa, NumeroFala).
    
% A regra precisa saber qual personagem falou aquilo, em qual alternativa
% e qual eh o numero daquela fala na alternativa.

ler_txt(File, Personagem, Alternativa, NumeroFala) :-
    open(Arquivo, read, Conteudo),
    get_char(Conteudo, LetraPersonagem),
    conteudo_da_fala(LetraPersonagem, Personagem),
    close(Conteudo).

% !. interrompe a leitura do arquivo.
conteudo_da_fala(end_of_file, _) :- !.

% se encontrar falas do personagem específico, continua a leitura.
conteudo_da_fala(Personagem, Conteudo) :-
    get_char(Conteudo, LetraAlternativa),
    conteudo_da_fala(LetraAlternativa, Alternativa).

% se encontrar a alternativa da fala específica, continua a leitura.
conteudo_da_fala(Alternativa, Conteudo) :-
    get_char(Conteudo, LetraNumero),
    conteudo_da_fala(LetraNumero, NumeroFala).

% se encontrar o número da fala específica, começa a leitura da fala.
conteudo_da_fala(NumeroFala, Conteudo) :-
    get_char(Conteudo, LetraFala)
    conteudo_da_fala(LetraFala, Conteudo).

% ';' representa o fim de fala do personagem.
conteudo_da_fala(';', _) :- !.

% printa a letra e continua a leitura.
conteudo_da_fala(Letra, Conteudo) :-
    write(Letra),
    get_char(Conteudo, ProxLetra),
    conteudo_da_fala(ProxLetra, Conteudo).
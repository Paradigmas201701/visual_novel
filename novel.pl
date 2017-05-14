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
    get_char(Conteudo, LetraAtual),
    conteudo_da_fala(LetraAtual, Personagem),
    close(Conteudo).

% !. interrompe a leitura do arquivo.
conteudo_da_fala(end_of_file, _) :- !.

% se encontrar falas do personagem específico, continua a leitura.
conteudo_da_fala(Personagem, _) :-
    get_char(Conteudo, Alternativa).

% se encontrar a alternativa da fala específica, continua a leitura.
conteudo_da_fala(Alternativa, _) :-
    conteudo_da_fala(Conteudo, NumeroFala).

% se encontrar o número da fala específica, continua a leitura.
conteudo_da_fala(NumeroFala, _) :-
    conteudo_da_fala(Conteudo, _).

% ';' representa o fim de fala do personagem.
conteudo_da_fala(';', _) :- !.

% printa a letra e continua a leitura.
conteudo_da_fala(Letra, Conteudo) :-
    write(Letra),
    get_char(Conteudo, LetraPegada),
    conteudo_da_fala(LetraPegada, Conteudo).
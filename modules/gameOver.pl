%% -----------------------------------------------------------------------------
%% Module contenant les prédicats permettant de déterminer si le jeu est terminé
%% pour un joueur.
:- module(gameOver, [gameOver/2]).
%% -----------------------------------------------------------------------------

:- use_module(board).

%% Game over
%% Vérification de la condition d'arrêt du jeu
%% @param Board Plateau de jeu
%% @param Player Le joueur à vérifier
gameOver(Joueur, Board) :- 
    flatten(Board, InlineBoard),
    count(Joueur, InlineBoard, N),
    N =< 8.

% -------------------------------------------------------------------------------

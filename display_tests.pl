%% -----------------------------------------------------------------------------
%% Module contenant les tests du module "display".
:- module(displayTests, []).
%% -----------------------------------------------------------------------------

:- use_module('display.pl').

%% Initialisation du plateau de test -------------------------------------------

initTestBoard(
[
    [ 1, 1, 0, 0, 0,-1,-1,-1,-1],
    [ 1, 1, 0, 0, 0, 0,-1,-1,-1],
    [ 1, 1, 1, 0, 0, 0, 0,-1,-1],
    [ 1, 1, 1, 0, 0, 0, 0, 2,-1],
    [ 1, 1, 1, 0, 0, 0, 2, 2, 2],
    [-1, 1, 0, 0, 0, 0, 2, 2, 2],
    [-1,-1, 0, 0, 0, 0, 2, 2, 2],
    [-1,-1,-1, 0, 0, 0, 0, 2, 2],
    [-1,-1,-1,-1, 0, 0, 0, 2, 2]
]).

initTestMatrix(
[
    [11,12,13,14,15,16,17,18,19],
    [21,22,23,24,25,26,27,28,29],
    [31,32,33,34,35,36,37,38,39],
    [41,42,43,44,45,46,47,48,49],
    [51,52,53,54,55,56,57,58,59],
    [61,62,63,64,65,66,67,68,69],
    [71,72,73,74,75,76,77,78,79],
    [81,82,83,84,85,86,87,88,89],
    [91,92,93,94,95,96,97,98,99]
]).

%% Lancement des tests ---------------------------------------------------------

runTests(Result) :-
    initTestBoard(Board),
    initTestMatrix(Matrix),
    
    % Test : Affiche la grille de jeu
    print('Test 1.............'),
    (
        (display:displayBoard(Board), print('SUCCESS\n'), !)
        ;
        (print('...FAIL\n'))
    ),
    
    print('Test 2.............'),
    (
        (display:displayMatrix(Matrix), print('SUCCESS\n'), !)
        ;
        (print('...FAIL\n'))
    ),

    Result is 0.
    

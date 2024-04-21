module Chess (
    Piece, Board
) where

import qualified Data.Map as M

data Piece = WhitePawn | WhiteKnight | WhiteBishop | WhiteRook | WhiteQueen | WhiteKing |
             BlackPawn | BlackKnight | BlackBishop | BlackRook | BlackQueen | BlackKing

type Board = M.Map (Int, Int) Piece 

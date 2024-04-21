module Chess (
    Piece, Board
) where

import qualified Data.Map as M

data Piece = WhitePawn | WhiteKnight | WhiteBishop | WhiteRook | WhiteQueen | WhiteKing |
             BlackPawn | BlackKnight | BlackBishop | BlackRook | BlackQueen | BlackKing deriving (Show, Eq)

newtype Board = Board (M.Map (Int, Int) Piece)

instance Show Board where
    show (Board m) = show . map (\((a,b),p) -> (['a'..'h']!!(a-1):show b, p)) . M.toList $ m 

newBoard :: Board
newBoard = Board . M.fromList $ zip (zip [1..8] (replicate 8 1)) [WhiteRook, WhiteKnight, WhiteBishop, WhiteQueen, WhiteKing, WhiteBishop, WhiteKnight, WhiteRook] ++
                                zip (zip [1..8] (replicate 8 2)) (replicate 8 WhitePawn) ++
                                zip (zip [1..8] (replicate 8 7)) [BlackRook, BlackKnight, BlackBishop, BlackQueen, BlackKing, BlackBishop, BlackKnight, BlackRook] ++
                                zip (zip [1..8] (replicate 8 8)) (replicate 8 BlackPawn)

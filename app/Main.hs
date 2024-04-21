module Main where

import Graphics.Gloss

import Chess
import Draw

main :: IO ()
main = display (InWindow "Test" (400, 400) (10, 10)) white board


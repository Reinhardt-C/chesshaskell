module Main where

import Graphics.Gloss

import Chess
import Draw

main :: IO ()
main = display (InWindow "Test" (800, 800) (10, 10)) white (circleSolid 80)


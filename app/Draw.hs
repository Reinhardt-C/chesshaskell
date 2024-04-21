module Draw (
    board
) where

import Graphics.Gloss

-- 320x320 board
board :: Picture
board = translate (-140) (-140) . pictures $ map (\n -> translate ((*40) . fromIntegral $ n`div`8) ((*40) . fromIntegral $ mod n 8) $ if even (n-n`div`8) then lightSquare else darkSquare) [0..63]

lightSquare :: Picture
lightSquare = color (makeColorI 224 213 234 255) $ rectangleSolid 40 40

darkSquare :: Picture
darkSquare = color (makeColorI 153 125 181 255) $ rectangleSolid 40 40

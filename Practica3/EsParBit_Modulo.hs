module EsParBit_Modulo where
import Data.Bits ((.&.))

esparBool x =
    if x `mod` 2 == 0
    then True
    else False



esParBit :: Int -> Bool
esParBit n = (n .&. 1) == 0

{- funcion auxiliar para 
la funcion coprimos
-}

mcd :: Int -> Int -> Int
mcd x s = if s == 0
then x 
else mcd s (x`mod` s)
module EsParBit where
import Data.Bits ((.&.))

esparBool x =
    if x `mod` 2 == 0
    then True
    else False



esParBit :: Int -> Bool
esParBit n = (n .&. 1) == 0
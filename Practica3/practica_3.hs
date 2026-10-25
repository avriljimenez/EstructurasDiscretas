import EsParBit_Modulo


{-  funcion: cetes
    Descripcion:
    uso:
-}

data P = Dias Double | Meses Double
cetes :: Double -> P -> Double

cetes v (Dias x) = v* (1+ (if x == 28 then 0.0609 else if x == 182 then 0.0691 else 0.0744) * x / 360)
cetes v (Meses s) = cetes v (Dias (if s == 1 then 28 else if m == 6 then 182 else 364))

{-  funcion: mensajeCetes
    Descripcion:
    uso:
-}

{-  funcion: negativos
    Descripcion: cuenta los numeros negativos que hay en una lista
    uso:
-}

negativos list = length [x | x <- list, x<0]

{-  funcion: soloPares
    Descripcion: devuelve los numeros pares que encuentre en una lista
    uso:
-}

soloPares list = [ x | x <- list, esParBit x]

{-  funcion: primos
    Descripcion: devuelve los numeros primos de una lista
    uso:
-}

primos list = [ x | x <- list, length [ s | s <- [1..x], mod x s == 0] == 2]

{-  funcion: coprimos
    Descripcion: recibe un entero y devuelve una lista de los coprimos de n
    uso:
-}

coprimos :: Int -> [Int]
coprimos n = [x | x <- [1..n], mcd x n == 1]

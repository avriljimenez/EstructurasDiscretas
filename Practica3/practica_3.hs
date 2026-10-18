import EsParBit_Modulo


{-  funcion: cetes
    Descripcion:
    uso:
-}

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

primos list = [ x | x <- list, ]

{-  funcion: coprimos
    Descripcion: recibe un entero y devuelve una lista de los coprimos de n
    uso:
-}

coprimos :: Int -> [Int]
coprimos n = [x | x <- ]
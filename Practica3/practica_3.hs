import EsParBit_Modulo


{-  funcion: cetes
    Descripcion:
    uso: cetes 100 (Dias 28)
         =100.4
         cetes 100 (Meses 1)
         =100.4
-}

data P = Dias Double | Meses Double
cetes :: Double -> P -> Double

cetes v (Dias x) = v* (1+ (if x == 28 then 0.0609 else if x == 182 then 0.0691 else 0.0744) * x / 360)
cetes v (Meses s) = cetes v (Dias (if s == 1 then 28 else if s == 6 then 182 else 364))

{-  funcion: mensajeCetes
    Descripcion:
    uso: mensajeCetes 100 (Dias 28)
        "Despues de n dias, obtuve m de rendimiento bruto sin asumir ningun riesgo creditico. El monto 
        total de mi inversion es de k."
-}

mensajeCetes :: Double -> P -> String
mensajeCetes v (Dias x) = "despues de" ++ show x ++ "dias obtuve" ++ show (cetes v (Dias x)- v)
 ++ " de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es de " ++ show (cetes v (Dias x))

mensajeCetes v (Meses s) = "despues de " ++ show s ++ "meses obtuve" ++ show (cetes v (Meses s) - v)
 ++ " de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es de " ++ show (cetes v (Meses s))

{-  funcion: negativos
    Descripcion: cuenta los numeros negativos que hay en una lista
    uso: negativos [-1, 2, 4, 6, -4]
        = 2
-}

negativos list = length [x | x <- list, x<0]

{-  funcion: soloPares
    Descripcion: devuelve los numeros pares que encuentre en una lista
    uso: soloPares [1, 2, 3, 4]
        [2,4]
-}

soloPares list = [ x | x <- list, esParBit x]

{-  funcion: primos
    Descripcion: devuelve los numeros primos de una lista
    uso: primos [1..20]
        =[2, 3, 5, 7, 11, 13, 19]
-}

primos list = [ x | x <- list, length [ s | s <- [1..x], mod x s == 0] == 2]

{-  funcion: coprimos
    Descripcion: recibe un entero y devuelve una lista de los coprimos de n
    uso: coprimos 10
        [1,3,7,9]
-}

coprimos :: Int -> [Int]
coprimos n = [x | x <- [1..n], mcd x n == 1]

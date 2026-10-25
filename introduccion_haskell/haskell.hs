{-
Esto es un comentario multilinea
-}


{-
funcion : say Hello
Descripcion > muestra texto de acuerdo a una cadena
uso: sayHello Avil  -> "Hola Avril birnvenido al mundo de haskell
-}

sayHello :: String -> IO ()
sayHello x = putStrLn ("Hola " ++ x ++ "bienvenido al mundo haskell")

{- funcion triple
Descripcion: Devuelve el triple de un numero
uso: triple de 3 es 9
-}

triple :: Int -> Int
triple x = x^3

main :: IO ()
main = sayHello "Avril"

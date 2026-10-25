{-funcion:reconversion
    Descripcion: se realiza una reconversion monetaria quitandole tres ceros al valor ingrado
    uso: reconversion  1000 -> 1.0 
-}
reconversion :: Double -> Double
reconversion x = x / 1000


{-funcion: cashback
    Descripcion: calcula el cashback obtenido de una tarjeta de credito con (TDC)con el 10% de puntos
    uso: cashback 2525 -> 264
-}
cashback :: Double -> Double
cashback x = x * 0.10


{-funcion: cashback_Monto
    Descripcion: calcula dinero equivalente del beneficio de puntos que otorgan algunas TDC
    uso: cashback_Monto 264 0.10 -> 26.4
-}
cashback_Monto :: Double -> Double -> Double
cashback_Monto x y = x * y

{-funcion: minutosHoras
    Descripcion: recibe minutos, hace una conversion y los devuelve su conversion en horas
    uso: minutosHoras 112 -> 1 hora y 52 minutos
-}
minutosHoras :: Int -> String
minutosHoras x= show (x `div` 60) ++ (if (x `div` 60) == 1 then " hora y" else "horas y" ) ++ show (x `mod` 60) ++ "minutos"

{- funcion: esEstafa
    Descripcion: En caso de estafa devuelve True si la transaccion representa una estafa, o False en caso contrario
    uso: esEstafa 100 200 100 0 -> True
-}
esEstafa :: Int -> Int -> Int -> Int -> Bool
esEstafa c bA bE cA =  cA < (bA - c)

{- funcion: esDescendente
    Descripcion: recibe 4 parametros numericos y devuelve True si los numeros fueron ingresados de forma descendente
    y False si los numeros no fueron ungresados de manera descendente
    uso: esDescendente 10 9 8 7 -> True
-}
esDescendente :: Int -> Int -> Int -> Int -> Bool
esDescendente x y z w = if x > y then (if y > z then (if z > w then True else False) else False) else False

{-funcion: imc
    Descripcion: recibe 2 parametros el primero en kg y el segundo en cm o metros y devuelve tu imc
    uso: imc 53.5 161 -> normal
-}
imc :: Double -> Double -> String
imc peso altura = if (peso/((altura / 100) * (altura / 100))) < 18.5 then "bajo" else (if (peso / ((altura / 100) * (altura / 100))) < 25.0 then "normal" else (if (peso / ((altura / 100) * (altura / 100))) < 30.0 then "sobrepeso" else "obesidad"))

{- funcion: hipotenusa
    Descripcion: se reciben 2 parametros de tipo flotante b y h (base y altura) y devuelve un valor 
    flotante que representa el valor de la hipotenusa
    uso: hipotenusa 9.0 12.0 -> 15.0
-}
hipotenusa :: Float -> Float -> Float
hipotenusa b h = sqrt (b*b + h*h)

{- funcion: pendiente
    Descripcion: se reciben 2 parametros que seran tuplas de los elementos de tipo flotante (x1,y1) y (x2,y2), 
    y regresa un valor de tipo flotante que representa la pendiente de la recta que pasa por 2 puntos
    uso: pendiente (3.0 , 2.0) (7.0 , 8.0) -> 1.5
-}
pendiente :: (Float , Float) -> (Float , Float) -> Float
pendiente (x1 , y1) (x2 , y2 ) = ((y2 - y1) / (x2 - x1))

{- funcion: distanciaPuntos
    Descripcion: recibe dos parametros (dos tuplas de tipo flotante) (x1 y y1) y (x2 y y2 ) y devuelve un valor de tipo flotante que representa la dictancia entre los puntos 
    (x1 , y1) y (x2 , y2)
    uso: distanciaPuntos (2.0 , 1.0) (5.0, 5.0) -> 5.0
-}
distanciaPuntos :: (Float , Float) -> (Float , Float) -> Float
distanciaPuntos (x1 , y1) (x2 , y2) = sqrt ((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))
{-funcion:reconversion
    Descripcion: se realiza una reconversion monetaria quitandole tres ceros al valor ingrado
    uso:
-}
reconversion :: Double -> Double
reconversion x = x / 1000


{-funcion: cashback
    Descripcion: calcula el cashback obtenido de una tarjeta de credito con (TDC)con el 10% de puntos
    uso:
-}
cashback :: Double -> Double
cashback x = x * 0.10


{-funcion: cashback_Monto
    Descripcion: calcula dinero equivalente del beneficio de puntos que otorgan algunas TDC
    uso:
-}
cashback_Monto :: Double -> Double -> Double
cashback_Monto x y = x * y

{-funcion: minutosHoras
    Descripcion: recibe minutos, hace una conversion y los devuelve su conversion en horas
    uso:
-}
-- Cambio para commit
-- commit 3
-- cambio

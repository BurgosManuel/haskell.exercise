-- 7. Programe una función similar a map, tener en cuenta el modo de escribir funciones utilizando 
-- expresiones lambda y que aplique dos funciones a cada elemento de la lista.
cuadrado :: Int -> Int
cuadrado x = x * x

siguiente :: Int -> Int
siguiente x = x + 1

-- Toma dos funciones como parametro y las aplica a cada elemento de la lista original.
-- Aplicamos las dos funciones en la expresion lambda y concatenamos la salida para formar la lista resultante
fun :: (Int -> Int) -> (Int -> Int) -> [Int] -> [Int]
fun _ _ [] = []
fun f g (x:xs) = (\y -> f (g y)) x : fun f g xs
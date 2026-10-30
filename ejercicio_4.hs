-- 1. Longitud de una cadena
-- Sumamos +1 por cada elemento presente en la cadena
longCadena :: String -> Int
longCadena "" = 0
longCadena (x:xs) = 1 + longCadena xs

-- 2. Dada una cadena o palabra invertir la misma 
-- La funcion ++ concatena listas, llegamos hasta el final de la lista parametro recursivamente y 
-- concatenamos los valores de atras para adelante
invertirCadena :: String -> String 
invertirCadena "" = ""
invertirCadena (x:xs) = invertirCadena xs ++ [x]

-- 3. Verificar si un elemento pertenece a una cadena
-- Enviamos un caracter y lo comparamos con cada elemento de la cadena parámetro
verificaElem :: Char -> String -> Bool 
verificaElem c "" = False
verificaElem c (x:xs) = (c == x) || verificaElem c xs

-- 4. Eliminar elementos repetidos
-- Usamos la funcion `elem` para verificar si el elemento ya se encuentra en la lista.
-- Si es así, lo ignoramos y seguimos con el resto de la lista. Si no, lo agregamos a la lista resultante.
eliminaRep :: [String] -> [String]
eliminaRep [] = []
eliminaRep (x:xs)
  | x `elem` xs = eliminaRep xs
  | otherwise   = x : eliminaRep xs

-- 5. Unir dos listas (con repetidos)
-- "Desarmamos" la primera lista y la agregamos a la segunda lista de forma recursiva
unirLista :: [String] -> [String] -> [String]
unirLista [] ys = ys
unirLista (x:xs) ys = x : unirLista xs ys

-- 6. Modificar unirLista para que no incluya repetidos
-- Aplicamos la funcion eliminaRep definida previamente a la lista concatenada
unirListaSinRep :: [String] -> [String] -> [String]
unirListaSinRep xs ys = eliminaRep (unirLista xs ys)

-- 7. Separar vocales de un String
-- Usamos la funcion `elem` para verificar si el caracter es una vocal. Si es así, lo agregamos a la lista resultante.
vocales :: String -> String
vocales "" = ""
vocales (x:xs)
  | x `elem` "aeiouAEIOU" = x : vocales xs
  | otherwise             = vocales xs
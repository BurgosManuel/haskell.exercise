-- 1. Suma de los componentes de una tupla
sumaComp :: (Int, Int) -> Int
sumaComp (x, y) = x + y

-- 2. Función que recibe 2 enteros y devuelva una tupla donde el primer componente sea el mayor de 
-- los dos y la segunda el menor. 
maxmin :: Int -> Int -> (Int, Int)
maxmin x y
  | x >= y    = (x, y)
  | otherwise = (y, x)

-- 3. Suma de los componentes de una lista de tuplas
sumaListaTuplas :: [(Int, Int)] -> [Int]
sumaListaTuplas [] = []
sumaListaTuplas ((x, y):xs) = (x + y) : sumaListaTuplas xs

-- 4.Contamos con una base de datos de películas representada con una lista de tuplas. 
-- Cada tupla contiene la siguiente información: (<Nombre de la película>, <Año de estreno>,<Duración de la 
-- película>,<Nombre del director>). Observamos entonces que el tipo de la tupla que representa 
-- cada película es (String, Int, Int, String). 

-- 4a.Definir la función verTodas : [(String, Int, Int, String)] → Int que dada una lista de películas 
-- devuelva el tiempo que tardaría en verlas a todas. 
verTodas :: [(String, Int, Int, String)] -> Int
verTodas [] = 0
verTodas ((_, _, duracion, _) : xs) = duracion + verTodas xs

-- 4b. Definir la función estrenos: [(String, Int, Int, String)] → [String] que dada una lista de películas 
-- devuelva el listado de películas que estrenaron en 2019.
estrenos :: [(String, Int, Int, String)] -> [String]
estrenos [] = []
estrenos ((titulo, anio, _, _) : xs)
  | anio == 2019 = titulo : estrenos xs
  | otherwise    = estrenos xs
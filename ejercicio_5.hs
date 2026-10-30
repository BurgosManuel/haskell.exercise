-- 1. A cada número de la lista original [1..10] se le suma 10.
xs1 = [x + 10 | x <- [1..10]]

-- 2. Convertimos cada elemento par en una lista de un solo elemento
xs2 = [[x] | x <- [1..10], x `mod` 2 == 0]

-- 3. Invertimos el orden de los elementos restando a 11 su valor.
xs3 = [11 - x | x <- [1..10]]

-- 4. Reemplazamos los elementos por un Booleano que representa si es impar.
xs4 = [x `mod` 2 == 1 | x <- [1..10]]

-- 5. Multiplicamos cada elemento * 3 y verificamos si el resultado es menor o igual a 3.
-- Solo hay 6 resultados asi que limitamos el resultado con la condicion x<=6
xs5 = [(x * 3, x <= 3) | x <- [1..10], x <= 6]

-- 6. El resultado solo debe cotener tuplas de los elementos impares sumados por 10 y 11 respectivamente.
-- Esto nos devuelve [(11,12),(13,14),(15,16),(17,18),(19,20)]
xs6 = [(x + 10, x + 11) | x <- [1..10], x `mod` 2 == 1]
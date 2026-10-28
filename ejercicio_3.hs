-- 1. dado tres números que representan longitudes indicar si pueden formar un triangulo

-- Aplicamos Teorema de la Desigualdad Triangular
esTriangulo :: Float -> Float -> Float -> Bool
esTriangulo a b c = (a + b > c) && (a + c > b) && (b + c > a)

-- 2. Fecha ingresada como una secuencia de números: 20112019. Se pide una funcion para que extraer el dia, luego el mes y luego el año 

-- Dia: 20112019 / 1000000 = 20.112019 -> (se descarta decimal) 20
extraerDia :: Int -> Int
extraerDia fecha = fecha `div` 1000000

-- Mes: 20112019 / 10000 = 2011.2019 -> 2011 / 100 = 20.11 -> El resto (`mod`) es 11
extraerMes :: Int -> Int
extraerMes fecha = (fecha `div` 10000) `mod` 100

-- Año: El resto (`mod`) de 20112019 / 10000 = 2019
extraerAnio :: Int -> Int
extraerAnio fecha = fecha `mod` 10000

-- 3. Averiguar si un alumno aprobó un parcial (se considera aprobado con nota mayor igual a 6) 
aprobado :: Float -> Bool
aprobado nota = nota >= 6

-- 4.  El promedio de 3 numeros
promedio :: Float -> Float -> Float -> Float
promedio a b c = (a + b + c) / 3

-- 5. Volumen de una esfera (V = 4/3 * PI * R³)
volumenEsfera :: Float -> Float
volumenEsfera r = (4/3) * pi * (r^3)

-- 6. Area de un Circulo
areaCirculo :: Float -> Float
areaCirculo r = pi * (r^2)

-- 7. Ultima cifra de un numero entero (resto de una division por 10)
ultimaCifra :: Int -> Int
ultimaCifra n = n `mod` 10
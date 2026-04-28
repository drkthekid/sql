## comandos select
USE study_sql;

## visualizar tabela inteira
SELECT * FROM cursos;

## ordem de acordo com a coluna
SELECT * FROM cursos
order by name;

## ordem de acordo com a coluna inversa (ordem alfabetica)
SELECT * FROM cursos
order by name DESC;

## Filtrar colunas (ordenando por ano e order alfabetica)
SELECT name, duration, ano FROM cursos
ORDER by ano, name;

## Filtrar linhas (por ano e ordem alfabetica)
SELECT * FROM cursos
WHERE ano = "2024"
ORDER BY name;

## Filtrar linhas e colunas (por ano e ordem alfabetica)
SELECT name,duration FROM cursos
WHERE ano = "2024"
ORDER BY name;

## query
SELECT name,duration FROM cursos
WHERE ano <= "2025"
ORDER BY name;

## entre
SELECT name, ano FROM cursos
WHERE ano BETWEEN 2020 and 2022
ORDER BY ano DESC;

## em
SELECT name, description, ano FROM cursos
WHERE ano IN (2020, 2022)
ORDER BY ano DESC;

SELECT name, duration, totalClass FROM cursos
WHERE duration > 35 and totalClass > 2;

DESC cursos;


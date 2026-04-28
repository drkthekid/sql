## Continuação study.sql . . . 

USE study_sql;

INSERT INTO cursos (id, name, description, duration, totalClass, ano)
VALUES
(DEFAULT, "Desenvolvimento de Sistemas", "Muito legal", 1200, 1, DEFAULT),
(DEFAULT, "Mecatronica", "Só tem beta", 1200, 3, DEFAULT),
(DEFAULT, "Automação Industrial", "Bem bleh", 1200, 1, DEFAULT);

SELECT * FROM cursos;

## Atualizando uma linha/tupla do banco de dados
UPDATE cursos
SET name = "Mecatronica Esquisita"
WHERE id = 2;

## atualizando duas linhas
UPDATE cursos
SET description = "Mudou minha vida muito obrigado", ano = "2024"
WHERE id = 1;

## deletando uma linha
DELETE FROM cursos
where id = 3;

DELETE from cursos
WHERE ano = "2024"
LIMIT 2;

## deletar todos os registros
TRUNCATE TABLE cursos;

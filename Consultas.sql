-- 1. Listar nome e ano de todos os filmes.
SELECT 
	Nome, 
	Ano 
FROM 
	Filmes;


-- 2. Listar nome e ano dos filmes, ordenados pelo ano (crescente).
SELECT 
	Nome, 
	Ano 
FROM 
	Filmes 
ORDER BY 
	Ano ASC;


-- 3. Exibir nome, ano e dura��o do filme "De volta para o futuro".
SELECT 
	Nome,
	Ano,
	Duracao
FROM 
	Filmes 
WHERE 
	Nome = 'De volta para o futuro';


-- 4. Listar filmes lan�ados em 1997.
SELECT 
	Nome,
	Ano,
	Duracao 
FROM 
	Filmes 
WHERE 
	Ano = 1997;


-- 5. Listar filmes lan�ados ap�s 2000.
SELECT
	Nome,
	Ano,
	Duracao 
FROM 
	Filmes 
WHERE 
	Ano > 2000;


-- 6. Listar filmes com dura��o maior que 100 e menor que 150 minutos, ordenados pela dura��o.
SELECT 
	Nome,
	Ano, 
	Duracao 
FROM 
	Filmes 
WHERE 
	Duracao BETWEEN 101 AND 149 
ORDER BY 
	Duracao ASC; 


-- 7. Exibir a quantidade de filmes por ano, ordenados em ordem decrescente.
SELECT 
	Ano, 
	COUNT(*) AS Quantidade 
FROM 
	Filmes 
GROUP BY 
	Ano 
ORDER BY 
	Quantidade DESC;


-- 8. Listar o primeiro e �ltimo nome de atores do g�nero masculino.
SELECT 
	PrimeiroNome, 
	UltimoNome 
FROM 
	Atores 
WHERE 
	Genero = 'M';


-- 9. Listar o primeiro e �ltimo nome de atrizes, ordenadas pelo primeiro nome.
SELECT 
	PrimeiroNome, 
	UltimoNome 
FROM 
	Atores 
WHERE 
	Genero = 'F' 
ORDER BY 
	PrimeiroNome ASC;


-- 10. Listar nome dos filmes com seus respectivos g�neros.
SELECT 
	f.Nome,
	g.Genero
FROM 
	FilmesGenero fg
	INNER JOIN Filmes f ON f.Id = fg.IdFilme
	INNER JOIN Generos g ON g.Id = fg.IdGenero;
	

-- 11. Listar filmes do g�nero "Mist�rio".
SELECT
	f.Nome, 
	g.Genero
FROM
	FilmesGenero fg
	INNER JOIN Filmes f ON f.Id = fg.IdFilme
	INNER JOIN Generos g ON g.Id = fg.IdGenero
WHERE 
	g.Genero = 'Mist�rio';


-- 12. Listar nome dos filmes, atores e seus pap�is.
SELECT
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
FROM
	ElencoFilme ef
	INNER JOIN Atores a ON a.Id = ef.IdAtor
	INNER JOIN Filmes f ON f.Id = ef.IdFilme;
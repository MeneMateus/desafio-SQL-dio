-- 1
SELECT Nome,Ano From Filmes

-- 2
SELECT Nome,Ano From Filmes Order by Ano

-- 3
SELECT Nome,Ano,Duracao from Filmes where id = 28

-- 4
SELECT Nome,Ano,Duracao from Filmes where Ano = 1997

-- 5
SELECT Nome,Ano,Duracao from Filmes where Ano > 2000

-- 6
SELECT Nome,Ano,Duracao from Filmes where Duracao > 100 and Duracao < 150 ORDER By Duracao

-- 7
SELECT Ano,COUNT(1) Quantidade from Filmes group by Ano ORDER by Quantidade Desc

-- 8
SELECT PrimeiroNome,UltimoNome,Genero FROM Atores Where Genero = 'M'

-- 9
SELECT PrimeiroNome,UltimoNome,Genero from Atores where Genero = 'F' Order By PrimeiroNome

-- 10
SELECT f.Nome, g.Genero from Filmes f 
Inner join FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id

-- 11
SELECT f.Nome, g.Genero from Filmes f 
Inner join FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE Genero = 'Mistério'

-- 12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from Filmes f 
Inner join ElencoFilme ef ON f.Id = ef.IdFilme
inner join Atores a ON ef.IdAtor = a.Id
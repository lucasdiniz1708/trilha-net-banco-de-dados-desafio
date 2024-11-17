SELECT Nome,Ano FROM Filmes

SELECT Nome,Ano FROM Filmes
ORDER BY Ano

SELECT Nome,Ano,Duracao FROM Filmes WHERE Nome='De Volta para o futuro'

SELECT Nome,Ano,Duracao FROM Filmes WHERE Ano='1997'

SELECT Nome,Ano,Duracao FROM Filmes WHERE Ano>2000

SELECT Nome,Ano,Duracao FROM Filmes WHERE Duracao>100 AND Duracao<150
ORDER BY Duracao

SELECT Ano,COUNT(*)QuantidadeFilmes 
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC



SELECT * FROM Atores WHERE Genero='M'

SELECT * FROM Atores WHERE Genero='F'
ORDER BY PrimeiroNome


SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.idFilme
INNER JOIN Generos ON FilmesGenero.idGenero = Generos.id;


SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.idFilme
INNER JOIN Generos ON FilmesGenero.idGenero = Generos.id
WHERE Generos.Genero = 'Mistério';

SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM ElencoFilme
INNER JOIN Filmes ON ElencoFilme.idFilme = Filmes.id
INNER JOIN Atores ON ElencoFilme.idAtor = Atores.id
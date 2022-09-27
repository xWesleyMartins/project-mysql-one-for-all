SELECT COUNT(mus.nome_musica) AS 'cancoes', COUNT(DISTINCT(art.nome_artista)) AS artistas, COUNT(DISTINCT(alb.nome_album)) AS albuns
FROM SpotifyClone.musica AS mus
INNER JOIN SpotifyClone.albuns AS alb ON mus.id_album =  alb.id_album
INNER JOIN SpotifyClone.artistas AS art ON alb.id_artista = art.id_artista
;
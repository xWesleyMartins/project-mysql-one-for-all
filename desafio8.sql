SELECT art.nome_artista AS artista, alb.nome_album AS album
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb ON art.id_artista = alb.id_artista
WHERE art.nome_artista LIKE 'Elis Regina'
	ORDER BY album;
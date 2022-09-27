SELECT art.nome_artista AS artista, alb.nome_album AS album, COUNT(follow.id_artista) AS seguidores
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb ON art.id_artista = alb.id_artista
INNER JOIN SpotifyClone.seguidores_dos_artistas AS follow ON follow.id_artista = art.id_artista
GROUP BY alb.id_album
	ORDER BY seguidores DESC, artista ASC, album ASC
;
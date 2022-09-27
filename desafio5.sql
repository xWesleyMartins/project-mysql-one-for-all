SELECT DISTINCT mus.nome_musica AS cancao, COUNT(hist.id_musica) AS reproducoes
FROM SpotifyClone.musica AS mus
INNER JOIN SpotifyClone.historico_de_reproduções AS hist ON hist.id_musica = mus.id_musica
-- WHERE reproducoes >= 3
GROUP BY cancao 
	ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;

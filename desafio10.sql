SELECT mus.nome_musica AS nome, COUNT(hist.id_musica) AS reproducoes
FROM SpotifyClone.musica AS mus
INNER JOIN SpotifyClone.historico_de_reproduções AS hist ON hist.id_musica = mus.id_musica
INNER JOIN SpotifyClone.usuarios AS users ON users.id_usuario = hist.id_usuario
WHERE users.id_plano LIKE 1 OR users.id_plano LIKE 3
GROUP BY nome
	ORDER BY nome;

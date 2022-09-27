SELECT DISTINCT users.usuario AS 'usuario', IF(MAX(YEAR(hist.recentes)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuarios AS users
INNER JOIN SpotifyClone.historico_de_reproduções AS hist ON users.id_usuario = hist.id_usuario
GROUP BY usuario
	ORDER BY usuario;
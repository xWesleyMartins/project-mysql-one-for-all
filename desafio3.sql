SELECT DISTINCT users.usuario AS 'usuario', COUNT(DISTINCT(hist.id_musica)) AS qt_de_musicas_ouvidas, FORMAT(SUM(duration.duracao / 60), 2) AS total_minutos
FROM SpotifyClone.usuarios AS users
INNER JOIN SpotifyClone.historico_de_reproduções AS hist ON users.id_usuario = hist.id_usuario
INNER JOIN SpotifyClone.musica AS duration ON duration.id_musica = hist.id_musica
GROUP BY usuario
	ORDER BY usuario;

-- href: funçao 'FORMAT': https://www.w3schools.com/Sql/func_mysql_format.asp
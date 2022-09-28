SELECT COUNT(id_musica) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_de_reproduções AS his
INNER JOIN SpotifyClone.usuarios AS users ON his.id_usuario = users.id_usuario
WHERE users.usuario LIKE 'Barbara Liskov';
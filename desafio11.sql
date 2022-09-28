SELECT nome_musica, 
	CASE
		WHEN nome_musica LIKE '%Bard%' THEN REPLACE(nome_musica, 'Bard', 'QA')
    WHEN nome_musica LIKE '%Amar%' THEN REPLACE(nome_musica, 'Amar', 'Code Review')
    WHEN nome_musica LIKE '%Pais%' THEN REPLACE(nome_musica, 'Pais', 'Pull Requests')
    WHEN nome_musica LIKE '%SOUL%' THEN REPLACE(nome_musica, 'SOUL', 'CODE')
    WHEN nome_musica LIKE '%SUPERSTAR%' THEN REPLACE(nome_musica, 'SUPERSTAR', 'SUPERDEV')
	END AS novo_nome
FROM SpotifyClone.musica HAVING novo_nome <> nome_musica
	ORDER BY nome_musica DESC;
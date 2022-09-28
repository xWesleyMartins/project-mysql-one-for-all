SELECT nome_musica, 
	REPLACE(
    REPLACE(
      REPLACE(
        REPLACE(
          REPLACE(nome_musica, 'Bard', 'QA'), 'Amar', 'Code Review'), 'Pais', 'Pull Requests'), 'SOUL', 'CODE'),'SUPERSTAR', 'SUPERDEV') AS novo_nome
FROM SpotifyClone.musica
HAVING novo_nome <> nome_musica
ORDER BY nome_musica DESC;
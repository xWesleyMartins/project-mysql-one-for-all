SELECT 
	MIN(plans.valor) AS faturamento_minimo,
    MAX(plans.valor) AS faturamento_maximo,
    ROUND((SUM(plans.valor) / COUNT(plans.id_plano)), 2) AS faturamento_medio,
    ROUND((SUM(plans.valor)), 2) AS faturamento_total
FROM SpotifyClone.usuarios AS users
INNER JOIN SpotifyClone.planos AS plans ON users.id_plano = plans.id_plano;

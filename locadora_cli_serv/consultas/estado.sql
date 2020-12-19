SELECT a.estado AS Alugado, a.id_aluguel AS ID_Al, a.id_cliente AS ID_Cli, c.nome_cliente AS Nome, a.id_veiculo AS ID_V, a.data_inicio AS Inicio, a.data_fim AS Fim
FROM aluguel AS a, cliente AS c
WHERE a.id_cliente = c.id_cliente
AND a.estado = :estado;
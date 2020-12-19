SELECT c.id_cliente AS ID_C, c.nome_cliente AS Cliente, v.id_veiculo AS ID_V, v.marca AS Marca, v.preco AS Preco, v.ano AS Ano
FROM cliente AS c, veiculo AS v, aluguel AS a
WHERE c.id_cliente = a.id_cliente
AND a.id_veiculo = v.id_veiculo
GROUP BY c.id_cliente, v.id_veiculo
ORDER BY c.id_cliente
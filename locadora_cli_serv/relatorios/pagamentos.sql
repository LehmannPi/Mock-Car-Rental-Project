SELECT c.id_cliente AS ID_C, c.nome_cliente AS Cliente, v.id_veiculo AS ID_V, p.id_pagamento AS ID_P, v.marca AS Marca, p.valor AS Pagamento, p.data AS Data
FROM cliente AS c, veiculo AS v, aluguel AS a, pagamento AS p
WHERE c.id_cliente = a.id_cliente
AND a.id_veiculo = v.id_veiculo
AND a.id_aluguel = p.id_aluguel
GROUP BY c.id_cliente, v.id_veiculo, p.id_pagamento
ORDER BY c.id_cliente
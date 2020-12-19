SELECT p.id_pagamento AS ID_Pag, p.id_cliente AS ID_C, c.nome_cliente AS Cliente, p.id_aluguel AS ID_Al, p.valor AS Valor, p.data AS Data
FROM pagamento as p, cliente AS c
WHERE p.id_cliente = c.id_cliente
AND p.valor >= :valor
GROUP BY p.valor
ORDER BY p.valor
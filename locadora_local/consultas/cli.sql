SELECT id_cliente AS ID, nome_cliente AS Nome, contato AS Contato, endereco AS endereco
FROM cliente
WHERE nome_cliente LIKE '%' || :nome || '%'
SELECT id_veiculo AS ID, den_veiculo AS Descricao, ano AS Ano, marca AS Marca, preco AS Preco, cor AS cor
FROM veiculo
WHERE marca LIKE '%'||:nome||'%';
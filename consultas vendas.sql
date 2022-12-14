SELECT vendedor.nome AS 'vendedor', regiao.nome AS 'região' 
FROM vendedor
INNER JOIN regiao ON vendedor.cpf=regiao.cpf_vendedor;

SELECT *
FROM nota_fiscal
WHERE EXISTS
  (SELECT cliente.cpf
  FROM cliente
  WHERE nota_fiscal.cpf_cliente = cliente.cpf AND cliente.nome = 'Eduardo Jeca');

SELECT * FROM pedido WHERE pedido.quantidade > 1;
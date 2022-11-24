INSERT [dbo].[cliente] ([cpf], [nome]) VALUES (N'000.000.000-10', N'Eduardo Jeca')
INSERT [dbo].[cliente] ([cpf], [nome]) VALUES (N'000.000.000-20', N'Maria João')
INSERT [dbo].[cliente] ([cpf], [nome]) VALUES (N'000.000.000-50', N'João Maria')

INSERT [dbo].[vendedor] ([cpf], [nome]) VALUES (N'000.000.000-01', N'Simbora Nossa Nossa')
INSERT [dbo].[vendedor] ([cpf], [nome]) VALUES (N'000.000.000-05', N'Assim Você Me Mata')
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
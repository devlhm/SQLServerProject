INSERT [dbo].[cliente] ([cpf], [nome]) VALUES (N'000.000.000-10', N'Eduardo Jeca')
INSERT [dbo].[cliente] ([cpf], [nome]) VALUES (N'000.000.000-20', N'Maria João')
INSERT [dbo].[cliente] ([cpf], [nome]) VALUES (N'000.000.000-50', N'João Maria')

INSERT [dbo].[vendedor] ([cpf], [nome]) VALUES (N'000.000.000-01', N'Simbora Nossa Nossa')
INSERT [dbo].[vendedor] ([cpf], [nome]) VALUES (N'000.000.000-05', N'Assim Você Me Mata')
INSERT [dbo].[vendedor] ([cpf], [nome]) VALUES (N'000.000.000-78', N'Meu Deus')

INSERT [dbo].[nota_fiscal] ([cpf_vendedor], [data], [cpf_cliente]) VALUES (N'000.000.000-01', CAST(N'2022-02-10' AS Date), N'000.000.000-10')
INSERT [dbo].[nota_fiscal] ([cpf_vendedor], [data], [cpf_cliente]) VALUES (N'000.000.000-05', CAST(N'2022-03-15' AS Date), N'000.000.000-20')
INSERT [dbo].[nota_fiscal] ([cpf_vendedor], [data], [cpf_cliente]) VALUES (N'000.000.000-78', CAST(N'2022-04-01' AS Date), N'000.000.000-50')

INSERT [dbo].[produto] ([nome], [preco]) VALUES (N'Tang', 200.0000)
INSERT [dbo].[produto] ([nome], [preco]) VALUES (N'Ovo', 150.0000)
INSERT [dbo].[produto] ([nome], [preco]) VALUES (N'Detergente', 20.0000)

INSERT [dbo].[pedido] ([id_nota], [id_produto], [quantidade]) VALUES (2, 1, 5)
INSERT [dbo].[pedido] ([id_nota], [id_produto], [quantidade]) VALUES (4, 3, 3)
INSERT [dbo].[pedido] ([id_nota], [id_produto], [quantidade]) VALUES (3, 2, 2)
INSERT [dbo].[pedido] ([id_nota], [id_produto], [quantidade]) VALUES (2, 1, 2)
INSERT [dbo].[pedido] ([id_nota], [id_produto], [quantidade]) VALUES (2, 3, 7)
INSERT [dbo].[pedido] ([id_nota], [id_produto], [quantidade]) VALUES (3, 2, 4)

INSERT [dbo].[regiao] ([nome], [cpf_vendedor]) VALUES (N'Lá', N'000.000.000-01')
INSERT [dbo].[regiao] ([nome], [cpf_vendedor]) VALUES (N'Aqui', N'000.000.000-05')
INSERT [dbo].[regiao] ([nome], [cpf_vendedor]) VALUES (N'Ali', N'000.000.000-78')

INSERT [dbo].[telefone_vendedor] ([numero], [cpf_vendedor]) VALUES (N'(99) 91234-5678', N'000.000.000-01')
INSERT [dbo].[telefone_vendedor] ([numero], [cpf_vendedor]) VALUES (N'(12) 98765-4321', N'000.000.000-05')
INSERT [dbo].[telefone_vendedor] ([numero], [cpf_vendedor]) VALUES (N'(12) 91234-9876', N'000.000.000-78')

INSERT [dbo].[veiculo] ([placa], [modelo], [cor], [cpf_vendedor]) VALUES (N'ABC-1234', N'Fiesta', N'Verde', N'000.000.000-01')
INSERT [dbo].[veiculo] ([placa], [modelo], [cor], [cpf_vendedor]) VALUES (N'CBA-4312', N'Kombi', N'Laranja', N'000.000.000-05')
INSERT [dbo].[veiculo] ([placa], [modelo], [cor], [cpf_vendedor]) VALUES (N'DCB-5124', N'Gol', N'Roxo', N'000.000.000-78')

INSERT [dbo].[ponto_estrategico] ([endereco], [id_regiao]) VALUES (N'Rua Algum Lugar, 1234 - Jardim Daora', 1)
INSERT [dbo].[ponto_estrategico] ([endereco], [id_regiao]) VALUES (N'Rua Longe, 412 - Bairro Top', 2)
INSERT [dbo].[ponto_estrategico] ([endereco], [id_regiao]) VALUES (N'Avenida Supimpa - Vila Maria', 3)

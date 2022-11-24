/****** Object:  Table [dbo].[cliente]    Script Date: 27/10/2022 13:02:48 ******/
CREATE TABLE [dbo].[cliente](
	[cpf] [char](14) NOT NULL,
	[nome] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cpf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY];

/****** Object:  Table [dbo].[nota_fiscal]    Script Date: 27/10/2022 13:02:48 ******/
CREATE TABLE [dbo].[nota_fiscal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cpf_vendedor] [char](14) NOT NULL,
	[data] [date] NOT NULL,
	[cpf_cliente] [char](14) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY];
/****** Object:  Table [dbo].[pedido]    Script Date: 27/10/2022 13:02:48 ******/

CREATE TABLE [dbo].[pedido](
	[id_nota] [int] NOT NULL,
	[id_produto] [int] NOT NULL,
	[quantidade] [int] NOT NULL
) ON [PRIMARY];
/****** Object:  Table [dbo].[ponto_estrategico]    Script Date: 27/10/2022 13:02:48 ******/

CREATE TABLE [dbo].[ponto_estrategico](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[endereco] [varchar](255) NOT NULL,
	[id_regiao] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY];

/****** Object:  Table [dbo].[produto]    Script Date: 27/10/2022 13:02:48 ******/
CREATE TABLE [dbo].[produto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](255) NOT NULL,
	[preco] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY];

/****** Object:  Table [dbo].[regiao]    Script Date: 27/10/2022 13:02:48 ******/

CREATE TABLE [dbo].[regiao](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](255) NOT NULL,
	[cpf_vendedor] [char](14) NOT NULL
) ON [PRIMARY];

/****** Object:  Table [dbo].[telefone_vendedor]    Script Date: 27/10/2022 13:02:48 ******/
CREATE TABLE [dbo].[telefone_vendedor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[numero] [varchar](255) NOT NULL,
	[cpf_vendedor] [char](14) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY];

/****** Object:  Table [dbo].[veiculo]    Script Date: 27/10/2022 13:02:48 ******/

CREATE TABLE [dbo].[veiculo](
	[placa] [char](8) NOT NULL,
	[modelo] [varchar](255) NOT NULL,
	[cor] [varchar](255) NOT NULL,
	[cpf_vendedor] [char](14) NOT NULL,
 CONSTRAINT [PK__veiculo__0C0574242DF2B64F] PRIMARY KEY CLUSTERED 
(
	[placa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY];

/****** Object:  Table [dbo].[vendedor]    Script Date: 27/10/2022 13:02:48 ******/
CREATE TABLE [dbo].[vendedor](
	[cpf] [char](14) NOT NULL,
	[nome] [varchar](255) NOT NULL,
 CONSTRAINT [PK__vendedor__D836E71E3F6D0063] PRIMARY KEY CLUSTERED 
(
	[cpf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY];

ALTER TABLE [dbo].[nota_fiscal]  WITH CHECK ADD FOREIGN KEY([cpf_cliente])
REFERENCES [dbo].[cliente] ([cpf]);

ALTER TABLE [dbo].[nota_fiscal]  WITH CHECK ADD FOREIGN KEY([cpf_vendedor])
REFERENCES [dbo].[vendedor] ([cpf]);

ALTER TABLE [dbo].[pedido]  WITH CHECK ADD FOREIGN KEY([id_nota])
REFERENCES [dbo].[nota_fiscal] ([id]);

ALTER TABLE [dbo].[pedido]  WITH CHECK ADD FOREIGN KEY([id_produto])
REFERENCES [dbo].[produto] ([id]);

ALTER TABLE [dbo].[regiao]  WITH CHECK ADD  CONSTRAINT [FK__regiao__cpf_vend__3F466844] FOREIGN KEY([cpf_vendedor])
REFERENCES [dbo].[vendedor] ([cpf]);

ALTER TABLE [dbo].[regiao] CHECK CONSTRAINT [FK__regiao__cpf_vend__3F466844];

ALTER TABLE [dbo].[telefone_vendedor]  WITH CHECK ADD FOREIGN KEY([cpf_vendedor])
REFERENCES [dbo].[vendedor] ([cpf]);

ALTER TABLE [dbo].[veiculo]  WITH CHECK ADD  CONSTRAINT [FK__veiculo__cpf_ven__44FF419A] FOREIGN KEY([cpf_vendedor])
REFERENCES [dbo].[vendedor] ([cpf]);

ALTER TABLE [dbo].[veiculo] CHECK CONSTRAINT [FK__veiculo__cpf_ven__44FF419A];
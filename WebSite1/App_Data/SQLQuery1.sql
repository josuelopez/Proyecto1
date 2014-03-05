USE [Curriculum]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 03/04/2014 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persona](
	[id_Persona] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NULL,
	[Apellidos] [varchar](30) NULL,
	[Foto] [binary](1) NULL,
	[Usuario] [varchar](20) NULL,
	[Contrasena] [varchar](15) NULL,
	[Resumen] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Persona] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Titulos]    Script Date: 03/04/2014 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Titulos](
	[id_Persona] [int] NULL,
	[Titulo] [varchar](50) NULL,
	[Escuela] [varchar](70) NULL,
	[ano_Inicio] [int] NULL,
	[ano_Fin] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Telefonos]    Script Date: 03/04/2014 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Telefonos](
	[id_Persona] [int] NULL,
	[Numero_telefono] [varchar](15) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Recomendaciones]    Script Date: 03/04/2014 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Recomendaciones](
	[id_Persona] [int] NULL,
	[Nombre_completo] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Telefonos] [varchar](20) NULL,
	[Comentario] [varchar](300) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Email]    Script Date: 03/04/2014 17:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Email](
	[id_Persona] [int] NULL,
	[Email] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK__Email__id_Person__0425A276]    Script Date: 03/04/2014 17:49:08 ******/
ALTER TABLE [dbo].[Email]  WITH CHECK ADD FOREIGN KEY([id_Persona])
REFERENCES [dbo].[Persona] ([id_Persona])
GO
/****** Object:  ForeignKey [FK__Recomenda__id_Pe__060DEAE8]    Script Date: 03/04/2014 17:49:08 ******/
ALTER TABLE [dbo].[Recomendaciones]  WITH CHECK ADD FOREIGN KEY([id_Persona])
REFERENCES [dbo].[Persona] ([id_Persona])
GO
/****** Object:  ForeignKey [FK__Telefonos__id_Pe__023D5A04]    Script Date: 03/04/2014 17:49:08 ******/
ALTER TABLE [dbo].[Telefonos]  WITH CHECK ADD FOREIGN KEY([id_Persona])
REFERENCES [dbo].[Persona] ([id_Persona])
GO
/****** Object:  ForeignKey [FK__Titulos__id_Pers__0AD2A005]    Script Date: 03/04/2014 17:49:08 ******/
ALTER TABLE [dbo].[Titulos]  WITH CHECK ADD FOREIGN KEY([id_Persona])
REFERENCES [dbo].[Persona] ([id_Persona])
GO


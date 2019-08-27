USE [master]
GO
/****** Object:  Database [AgendaVirtual]    Script Date: 05/21/2015 16:58:47 ******/
CREATE DATABASE [AgendaVirtual] ON  PRIMARY 
( NAME = N'AgendaVirtual', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\AgendaVirtual.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AgendaVirtual_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\AgendaVirtual_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AgendaVirtual] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AgendaVirtual].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AgendaVirtual] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [AgendaVirtual] SET ANSI_NULLS OFF
GO
ALTER DATABASE [AgendaVirtual] SET ANSI_PADDING OFF
GO
ALTER DATABASE [AgendaVirtual] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [AgendaVirtual] SET ARITHABORT OFF
GO
ALTER DATABASE [AgendaVirtual] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [AgendaVirtual] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [AgendaVirtual] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [AgendaVirtual] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [AgendaVirtual] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [AgendaVirtual] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [AgendaVirtual] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [AgendaVirtual] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [AgendaVirtual] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [AgendaVirtual] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [AgendaVirtual] SET  DISABLE_BROKER
GO
ALTER DATABASE [AgendaVirtual] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [AgendaVirtual] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [AgendaVirtual] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [AgendaVirtual] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [AgendaVirtual] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [AgendaVirtual] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [AgendaVirtual] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [AgendaVirtual] SET  READ_WRITE
GO
ALTER DATABASE [AgendaVirtual] SET RECOVERY SIMPLE
GO
ALTER DATABASE [AgendaVirtual] SET  MULTI_USER
GO
ALTER DATABASE [AgendaVirtual] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [AgendaVirtual] SET DB_CHAINING OFF
GO
USE [AgendaVirtual]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 05/21/2015 16:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Senha] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ_Usuario_Email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoContato]    Script Date: 05/21/2015 16:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoContato](
	[IdTipo] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TipoContato] PRIMARY KEY CLUSTERED 
(
	[IdTipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contato]    Script Date: 05/21/2015 16:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contato](
	[IdContato] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Telefone] [nvarchar](50) NULL,
	[IdTipo] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Contato] PRIMARY KEY CLUSTERED 
(
	[IdContato] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarefa]    Script Date: 05/21/2015 16:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarefa](
	[IdTarefa] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](50) NOT NULL,
	[Descricao] [text] NOT NULL,
	[Data] [datetime] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[Prioridade] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Tarefa] PRIMARY KEY CLUSTERED 
(
	[IdTarefa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Endereco]    Script Date: 05/21/2015 16:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Endereco](
	[IdEndereco] [int] IDENTITY(1,1) NOT NULL,
	[Logradouro] [nvarchar](50) NOT NULL,
	[Complemento] [nvarchar](50) NULL,
	[Cidade] [nvarchar](50) NOT NULL,
	[Estado] [nvarchar](50) NOT NULL,
	[Cep] [nvarchar](50) NULL,
	[IdContato] [int] NOT NULL,
 CONSTRAINT [PK_Endereco] PRIMARY KEY CLUSTERED 
(
	[IdEndereco] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Contato_TipoContato]    Script Date: 05/21/2015 16:58:48 ******/
ALTER TABLE [dbo].[Contato]  WITH CHECK ADD  CONSTRAINT [FK_Contato_TipoContato] FOREIGN KEY([IdTipo])
REFERENCES [dbo].[TipoContato] ([IdTipo])
GO
ALTER TABLE [dbo].[Contato] CHECK CONSTRAINT [FK_Contato_TipoContato]
GO
/****** Object:  ForeignKey [FK_Contato_Usuario]    Script Date: 05/21/2015 16:58:48 ******/
ALTER TABLE [dbo].[Contato]  WITH CHECK ADD  CONSTRAINT [FK_Contato_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Contato] CHECK CONSTRAINT [FK_Contato_Usuario]
GO
/****** Object:  ForeignKey [FK_Tarefa_Usuario]    Script Date: 05/21/2015 16:58:48 ******/
ALTER TABLE [dbo].[Tarefa]  WITH CHECK ADD  CONSTRAINT [FK_Tarefa_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Tarefa] CHECK CONSTRAINT [FK_Tarefa_Usuario]
GO
/****** Object:  ForeignKey [FK_Endereco_Contato]    Script Date: 05/21/2015 16:58:48 ******/
ALTER TABLE [dbo].[Endereco]  WITH CHECK ADD  CONSTRAINT [FK_Endereco_Contato] FOREIGN KEY([IdContato])
REFERENCES [dbo].[Contato] ([IdContato])
GO
ALTER TABLE [dbo].[Endereco] CHECK CONSTRAINT [FK_Endereco_Contato]
GO
INSERT INTO [dbo].[TipoContato]
           ([Tipo])
     VALUES
           ('Amigos')
GO
INSERT INTO [dbo].[TipoContato]
           ([Tipo])
     VALUES
           ('Escola')
GO
INSERT INTO [dbo].[TipoContato]
           ([Tipo])
     VALUES
           ('Trabalho')
GO
INSERT INTO [dbo].[TipoContato]
           ([Tipo])
     VALUES
           ('Familía')
GO
INSERT INTO [dbo].[TipoContato]
           ([Tipo])
     VALUES
           ('Empresa')
GO
INSERT INTO [dbo].[TipoContato]
           ([Tipo])
     VALUES
           ('Serviços')
GO
INSERT INTO [dbo].[TipoContato]
           ([Tipo])
     VALUES
           ('Outros')
GO
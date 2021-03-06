

/*Nombre: Cristian Vilchez         Matricula: 16-SIIT-1-051        Seccion: 0541*/
/*Nombre: Tommy Perez              Matricula: 16-SIIT-1-010        Seccion: 0541*/
/*Nombre: Hansel Isabel            Matricula: 16-SIIT-1-064        Seccion: 0541*/


USE [master]
GO
/****** Object:  Database [ProyectoFinal1]    Script Date: 06/04/2018 3:12:18 ******/
CREATE DATABASE [ProyectoFinal1]

USE [ProyectoFinal1]
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 06/04/2018 3:12:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamentos](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Presupuesto] [int] NULL,
 CONSTRAINT [PK_Departamentos] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 06/04/2018 3:12:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[DNI] [varchar](8) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Apellidos] [nvarchar](255) NULL,
	[Departamento] [int] NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (1, N'Seguridad', 10000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (2, N'Almacenamiento', 15000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (3, N'Transporte', 20000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (4, N'Higiene', 25000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (5, N'Calidad', 30000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (6, N'RR.HH', 35000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (7, N'Laboratorio', 40000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (8, N'Despacho', 45000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (9, N'Prevencion', 50000)
INSERT [dbo].[Departamentos] ([Codigo], [Nombre], [Presupuesto]) VALUES (10, N'Inspeccion', 55000)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'E1', N'Alberto', N'Feliz', 1)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'E10', N'Yudelka', N'Vicente', 10)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'E2', N'Rolando', N'Guzman', 2)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'E3', N'Maria', N'Lopez', 3)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'E4', N'Pedro', N'Aguirres', 4)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'E5', N'Solanyi', N'Polanco', 5)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'E6', N'Briana', N'Pujols', 6)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'E7', N'Katerin', N'Castillo', 7)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'E8', N'Milagros', N'Vilchez', 8)
INSERT [dbo].[Empleados] ([DNI], [Nombre], [Apellidos], [Departamento]) VALUES (N'E9', N'Carlos', N'Perez', 9)
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Departamentos] FOREIGN KEY([Departamento])
REFERENCES [dbo].[Departamentos] ([Codigo])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Departamentos]
GO
USE [master]
GO
ALTER DATABASE [ProyectoFinal1] SET  READ_WRITE 
GO

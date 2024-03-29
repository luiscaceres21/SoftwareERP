/* Crear db en caso de no tener */
/*
CREATE DATABASE [EmpleadosDB]
GO
*/

USE [EmpleadosBD]
GO

/* Tabla empleados */
/*
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[EmpleadoID] [int] NOT NULL,
	[rut] [varchar](12) NOT NULL,
	[pnombre] [varchar](25) NOT NULL,
	[apaterno] [varchar](25) NOT NULL,
	[amaterno] [varchar](25) NOT NULL,
	[annos_xp] [int] NOT NULL,
	[genero] [varchar](10) NOT NULL,
	[fec_nac] [date] NOT NULL,
	[email] [varchar](30) NOT NULL,
	[telefono] [varchar](15) NOT NULL,
	[direccion] [varchar](40) NOT NULL,
	[n_profesion] [varchar](25) NOT NULL,
	[foto] [image] NULL,
 CONSTRAINT [PK_Empleado_2] PRIMARY KEY CLUSTERED 
(
	[EmpleadoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
*/

/* Tabla Parametros empleado */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parametros_emp](
	[ParametrosID] [int] NOT NULL,
	[EmpleadoID] [int] NOT NULL,
	[valor_hora] [float] NOT NULL,
	[valor_ex] [float] NOT NULL,
	[antiguedad] [int] NOT NULL,
	[isapre] [float] NOT NULL,
	[afp] [float] NOT NULL,
	[cargas_fam] [int] NOT NULL,
	[sueldo_bruto] [float] NOT NULL,
	[sueldo_liquido] [float] NOT NULL,
	[indemnizacion] [float] NOT NULL,
 CONSTRAINT [PK_Parametros_emp_1] PRIMARY KEY CLUSTERED 
(
	[ParametrosID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/* Tabla usuarios de empleados */
/*
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[rut] [varchar](50) NOT NULL,
	[pass] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[rut] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
*/

/* Constraints */
ALTER TABLE [dbo].[Parametros_emp]  WITH CHECK ADD  CONSTRAINT [FK_Parametros_emp_Empleado] FOREIGN KEY([EmpleadoID])
REFERENCES [dbo].[Empleado] ([EmpleadoID])
GO
ALTER TABLE [dbo].[Parametros_emp] CHECK CONSTRAINT [FK_Parametros_emp_Empleado]
GO

USE [EmpleadosBD]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 28-08-2019 12:30:22 ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 28-08-2019 12:30:22 ******/
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

USE [master]
GO

CREATE DATABASE [AlaPastaDatabase]
GO

USE [AlaPastaDatabase]
GO

CREATE TABLE [dbo].[tAdmins](
	[ConsecutivoAdmin] [int] IDENTITY(1,1) NOT NULL,
	[IdAdmin] [varchar](20) NOT NULL,
	[NombreAd] [varchar](255) NOT NULL,
	[ApellidoAd] [varchar](255) NOT NULL,
	[CorreoAd] [varchar](80) NOT NULL,
	[TelAd] [varchar](20) NOT NULL,
	[ConsecutivoRol] [int] NOT NULL,
	[Contraseña] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tAdmins] PRIMARY KEY CLUSTERED 
(
	[ConsecutivoAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tCategorias](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NombreCat] [varchar](255) NOT NULL,
 CONSTRAINT [PK_tCategoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tClientes](
	[Consecutivo] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [varchar](20) NOT NULL,
	[NombreCliente] [varchar](255) NOT NULL,
	[ApellidoCliente] [varchar](255) NOT NULL,
	[CorreoCliente] [varchar](80) NOT NULL,
	[Contraseña] [varchar](10) NOT NULL,
	[TelCliente] [varchar](20) NOT NULL,
	[ConsecutivoDirec] [int] NOT NULL,
	[ConsecutivoRol] [int] NOT NULL,
	[FechaRegistro] [date] NOT NULL,
	[ActivoCliente] [bit] NOT NULL,
	[TieneContraseñaTemp] [bit] NOT NULL,
	[FechaVencimientoTemp] [datetime] NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Consecutivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tDetalles](
	[IdDetalle] [int] IDENTITY(1,1) NOT NULL,
	[ConsecutivoPed] [int] NOT NULL,
	[ConsecutivoProd] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Subtotal] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_tDetalles] PRIMARY KEY CLUSTERED 
(
	[IdDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tDirecciones](
	[IdDireccion] [int] IDENTITY(1,1) NOT NULL,
	[Provincia] [varchar](50) NOT NULL,
	[Cantón] [varchar](50) NOT NULL,
	[Distrito] [varchar](50) NOT NULL,
	[O_Señales] [varchar](255) NOT NULL,
 CONSTRAINT [PK_tDirecciones] PRIMARY KEY CLUSTERED 
(
	[IdDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tEmpleados](
	[ConsecutivoEmp] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpleado] [varchar](20) NOT NULL,
	[NombreEmp] [varchar](255) NOT NULL,
	[ApellidoEmp] [varchar](255) NOT NULL,
	[CorreoEmp] [varchar](80) NOT NULL,
	[TelEmp] [varchar](20) NOT NULL,
	[ConsecutivoPuesto] [int] NOT NULL,
	[ConsecutivoRol] [int] NOT NULL,
	[ActivoEmp] [bit] NOT NULL,
	[Contraseña] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tEmpleados] PRIMARY KEY CLUSTERED 
(
	[ConsecutivoEmp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tMetodos](
	[IdMetodo] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tMetodo] PRIMARY KEY CLUSTERED 
(
	[IdMetodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tPagos](
	[IdPago] [int] IDENTITY(1,1) NOT NULL,
	[Monto] [decimal](10, 2) NOT NULL,
	[FechaPago] [date] NOT NULL,
	[ConsecutivoPed] [int] NOT NULL,
	[ConsecutivoMet] [int] NOT NULL,
 CONSTRAINT [PK_tPagos] PRIMARY KEY CLUSTERED 
(
	[IdPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tPedidos](
	[IdPedido] [int] IDENTITY(1,1) NOT NULL,
	[FechaPedido] [date] NOT NULL,
	[Total] [decimal](10, 2) NOT NULL,
	[ConsecutivoCli] [int] NOT NULL,
	[Estado] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tPedidos] PRIMARY KEY CLUSTERED 
(
	[IdPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tProductos](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[NombreProducto] [varchar](255) NOT NULL,
	[Descripción] [varchar](255) NOT NULL,
	[Precio] [decimal](10, 2) NOT NULL,
	[ConsecutivoCat] [int] NOT NULL,
	[Stock] [int] NOT NULL,
	[ImagenProd] [varchar](255) NOT NULL,
	[ActivoProd] [bit] NOT NULL,
 CONSTRAINT [PK_tProductos] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tPuestos](
	[IdPuesto] [int] IDENTITY(1,1) NOT NULL,
	[NombrePuesto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tPuestos] PRIMARY KEY CLUSTERED 
(
	[IdPuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tRoles](
	[IdRol] [int] IDENTITY(1,1) NOT NULL,
	[NombreRol] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tRoles] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

ALTER TABLE [dbo].[tClientes] ADD  CONSTRAINT [UK_CorreoCliente] UNIQUE NONCLUSTERED 
(
	[CorreoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

ALTER TABLE [dbo].[tClientes] ADD  CONSTRAINT [UK_IdCliente] UNIQUE NONCLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

ALTER TABLE [dbo].[tClientes] ADD  CONSTRAINT [UK_TelCliente] UNIQUE NONCLUSTERED 
(
	[TelCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

ALTER TABLE [dbo].[tEmpleados] ADD  CONSTRAINT [UK_CorreoEmp] UNIQUE NONCLUSTERED 
(
	[CorreoEmp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

ALTER TABLE [dbo].[tEmpleados] ADD  CONSTRAINT [UK_IdEmpleado] UNIQUE NONCLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

ALTER TABLE [dbo].[tEmpleados] ADD  CONSTRAINT [UK_TelEmp] UNIQUE NONCLUSTERED 
(
	[TelEmp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tAdmins]  WITH CHECK ADD  CONSTRAINT [FK_tAdmins_tRoles] FOREIGN KEY([ConsecutivoRol])
REFERENCES [dbo].[tRoles] ([IdRol])
GO
ALTER TABLE [dbo].[tAdmins] CHECK CONSTRAINT [FK_tAdmins_tRoles]
GO
ALTER TABLE [dbo].[tClientes]  WITH CHECK ADD  CONSTRAINT [FK_tClientes_tDirecciones] FOREIGN KEY([ConsecutivoDirec])
REFERENCES [dbo].[tDirecciones] ([IdDireccion])
GO
ALTER TABLE [dbo].[tClientes] CHECK CONSTRAINT [FK_tClientes_tDirecciones]
GO
ALTER TABLE [dbo].[tClientes]  WITH CHECK ADD  CONSTRAINT [FK_tClientes_tRoles] FOREIGN KEY([ConsecutivoRol])
REFERENCES [dbo].[tRoles] ([IdRol])
GO
ALTER TABLE [dbo].[tClientes] CHECK CONSTRAINT [FK_tClientes_tRoles]
GO
ALTER TABLE [dbo].[tDetalles]  WITH CHECK ADD  CONSTRAINT [FK_tDetalles_tPedidos] FOREIGN KEY([ConsecutivoPed])
REFERENCES [dbo].[tPedidos] ([IdPedido])
GO
ALTER TABLE [dbo].[tDetalles] CHECK CONSTRAINT [FK_tDetalles_tPedidos]
GO
ALTER TABLE [dbo].[tDetalles]  WITH CHECK ADD  CONSTRAINT [FK_tDetalles_tProductos] FOREIGN KEY([ConsecutivoProd])
REFERENCES [dbo].[tProductos] ([IdProducto])
GO
ALTER TABLE [dbo].[tDetalles] CHECK CONSTRAINT [FK_tDetalles_tProductos]
GO
ALTER TABLE [dbo].[tEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_tEmpleados_tPuestos] FOREIGN KEY([ConsecutivoPuesto])
REFERENCES [dbo].[tPuestos] ([IdPuesto])
GO
ALTER TABLE [dbo].[tEmpleados] CHECK CONSTRAINT [FK_tEmpleados_tPuestos]
GO
ALTER TABLE [dbo].[tEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_tEmpleados_tRoles] FOREIGN KEY([ConsecutivoRol])
REFERENCES [dbo].[tRoles] ([IdRol])
GO
ALTER TABLE [dbo].[tEmpleados] CHECK CONSTRAINT [FK_tEmpleados_tRoles]
GO
ALTER TABLE [dbo].[tPagos]  WITH CHECK ADD  CONSTRAINT [FK_tPagos_tMetodos] FOREIGN KEY([ConsecutivoMet])
REFERENCES [dbo].[tMetodos] ([IdMetodo])
GO
ALTER TABLE [dbo].[tPagos] CHECK CONSTRAINT [FK_tPagos_tMetodos]
GO
ALTER TABLE [dbo].[tPagos]  WITH CHECK ADD  CONSTRAINT [FK_tPagos_tPedidos] FOREIGN KEY([ConsecutivoPed])
REFERENCES [dbo].[tPedidos] ([IdPedido])
GO
ALTER TABLE [dbo].[tPagos] CHECK CONSTRAINT [FK_tPagos_tPedidos]
GO
ALTER TABLE [dbo].[tPedidos]  WITH CHECK ADD  CONSTRAINT [FK_tPedidos_tClientes] FOREIGN KEY([ConsecutivoCli])
REFERENCES [dbo].[tClientes] ([Consecutivo])
GO
ALTER TABLE [dbo].[tPedidos] CHECK CONSTRAINT [FK_tPedidos_tClientes]
GO
ALTER TABLE [dbo].[tProductos]  WITH CHECK ADD  CONSTRAINT [FK_tProductos_tCategorias] FOREIGN KEY([ConsecutivoCat])
REFERENCES [dbo].[tCategorias] ([IdCategoria])
GO
ALTER TABLE [dbo].[tProductos] CHECK CONSTRAINT [FK_tProductos_tCategorias]
GO

CREATE PROCEDURE [dbo].[ActualizarContraseña] 
@ContraseñaTemp VARCHAR(80),
@TieneContraseñaTemp BIT,
@FechaVencimientoTemp DATETIME,
@Consecutivo BIGINT

AS
BEGIN

UPDATE dbo.tClientes
   SET 
      Contraseña = @ContraseñaTemp,
	  TieneContraseñaTemp=@TieneContraseñaTemp,
	  FechaVencimientoTemp = @FechaVencimientoTemp
      
 WHERE Consecutivo=@Consecutivo


END
GO

CREATE PROCEDURE [dbo].[InicioSesion]
		@Correo varchar(80),
		@Contraseña varchar(10)
AS
BEGIN
		SELECT U.Consecutivo,
				IdCliente,
				NombreCliente,
				ApellidoCliente,
				CorreoCliente,
				Contraseña,
				ConsecutivoRol,
				Activo,
				R.NombreRol,
				TieneContraseñaTemp,
				FechaVencimientoTemp
		FROM dbo.tUsuario1 U
		INNER JOIN dbo.tRol R ON U.ConsecutivoRol = R.Consecutivo
		WHERE CorreoCliente=@Correo
			AND Contraseña=@Contraseña
			AND ActivoCliente=1

END
GO

CREATE PROCEDURE [dbo].[RegistroUsuario] 
		@ID			varchar(20),
        @Nombre		varchar(255),
		@Apellido		varchar(255),
        @Correo		varchar(80),
        @Contraseña varchar(10),
		@Telefono   varchar(20)
	AS
BEGIN

INSERT INTO dbo.tClientes
           (IdCliente
           ,NombreCliente
		   ,ApellidoCliente
           ,CorreoCliente
           ,Contraseña
		   ,TelCliente
           ,ConsecutivoRol
           ,ActivoCliente
		   ,TieneContraseñaTemp
		   ,FechaVencimientoTemp)
     VALUES
           (@ID,
           @Nombre,
		   @Apellido,
           @Correo,
           @Contraseña,
		   @Telefono,
           2,
           1,
		   0,
		   GETDATE())
END
GO

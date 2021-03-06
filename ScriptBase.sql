USE [piavideo]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 28/05/2020 09:27:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[IdCurso] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](200) NULL,
	[IdEmpleado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curso_Tema]    Script Date: 28/05/2020 09:27:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso_Tema](
	[IdCT] [int] IDENTITY(1,1) NOT NULL,
	[IdCurso] [int] NULL,
	[IdTema] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curso_Tema_Video]    Script Date: 28/05/2020 09:27:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso_Tema_Video](
	[IdCTV] [int] IDENTITY(1,1) NOT NULL,
	[IdCT] [int] NULL,
	[IdVideo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 28/05/2020 09:27:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[IdEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Direccion] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tema]    Script Date: 28/05/2020 09:27:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tema](
	[IdTema] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video]    Script Date: 28/05/2020 09:27:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[IdVideo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](200) NULL,
	[Url] [nvarchar](100) NULL,
	[FechaPublicacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVideo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Curso] ON 

INSERT [dbo].[Curso] ([IdCurso], [Descripcion], [IdEmpleado]) VALUES (1, N'Monica Lucero', 4)
INSERT [dbo].[Curso] ([IdCurso], [Descripcion], [IdEmpleado]) VALUES (5, N'Prueba', 1)
SET IDENTITY_INSERT [dbo].[Curso] OFF
SET IDENTITY_INSERT [dbo].[Curso_Tema] ON 

INSERT [dbo].[Curso_Tema] ([IdCT], [IdCurso], [IdTema]) VALUES (10, 1, 3)
INSERT [dbo].[Curso_Tema] ([IdCT], [IdCurso], [IdTema]) VALUES (16, 5, 8)
SET IDENTITY_INSERT [dbo].[Curso_Tema] OFF
SET IDENTITY_INSERT [dbo].[Curso_Tema_Video] ON 

INSERT [dbo].[Curso_Tema_Video] ([IdCTV], [IdCT], [IdVideo]) VALUES (1015, 16, 1004)
SET IDENTITY_INSERT [dbo].[Curso_Tema_Video] OFF
SET IDENTITY_INSERT [dbo].[Empleado] ON 

INSERT [dbo].[Empleado] ([IdEmpleado], [Nombre], [Direccion]) VALUES (1, N'Luisito Comunica', N'You Tube #901')
INSERT [dbo].[Empleado] ([IdEmpleado], [Nombre], [Direccion]) VALUES (2, N'Erick Medellin', N'Guadalupe NL')
INSERT [dbo].[Empleado] ([IdEmpleado], [Nombre], [Direccion]) VALUES (4, N'Juan Pedraza', N'Apodaca')
INSERT [dbo].[Empleado] ([IdEmpleado], [Nombre], [Direccion]) VALUES (8, N'Probando', N'Guchi Ganggg')
SET IDENTITY_INSERT [dbo].[Empleado] OFF
SET IDENTITY_INSERT [dbo].[Tema] ON 

INSERT [dbo].[Tema] ([IdTema], [Nombre]) VALUES (3, N'Hello')
INSERT [dbo].[Tema] ([IdTema], [Nombre]) VALUES (8, N'Probando')
INSERT [dbo].[Tema] ([IdTema], [Nombre]) VALUES (9, N'Probando0000')
INSERT [dbo].[Tema] ([IdTema], [Nombre]) VALUES (15, N'Actualizado')
SET IDENTITY_INSERT [dbo].[Tema] OFF
SET IDENTITY_INSERT [dbo].[Video] ON 

INSERT [dbo].[Video] ([IdVideo], [Nombre], [Url], [FechaPublicacion]) VALUES (2, N'Data Analysis with Python - Full Course for Beginners (Numpy, Pandas, Matplotlib, Seaborn)', N'https://www.youtube.com/embed/r-uOLxNrNk8', CAST(N'2020-04-19T19:36:40.000' AS DateTime))
INSERT [dbo].[Video] ([IdVideo], [Nombre], [Url], [FechaPublicacion]) VALUES (1004, N'Probando', N'https://youtu.be/vONd46Zcecc', CAST(N'2000-12-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Video] ([IdVideo], [Nombre], [Url], [FechaPublicacion]) VALUES (1005, N'Youtube', N'https://www.youtube.com/embed/W6BzxdHBBHM', CAST(N'2000-12-05T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Video] OFF
ALTER TABLE [dbo].[Curso]  WITH CHECK ADD  CONSTRAINT [fk_idEmp] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleado] ([IdEmpleado])
GO
ALTER TABLE [dbo].[Curso] CHECK CONSTRAINT [fk_idEmp]
GO
ALTER TABLE [dbo].[Curso_Tema]  WITH CHECK ADD  CONSTRAINT [fk_idCurso] FOREIGN KEY([IdCurso])
REFERENCES [dbo].[Curso] ([IdCurso])
GO
ALTER TABLE [dbo].[Curso_Tema] CHECK CONSTRAINT [fk_idCurso]
GO
ALTER TABLE [dbo].[Curso_Tema]  WITH CHECK ADD  CONSTRAINT [fk_idTema] FOREIGN KEY([IdTema])
REFERENCES [dbo].[Tema] ([IdTema])
GO
ALTER TABLE [dbo].[Curso_Tema] CHECK CONSTRAINT [fk_idTema]
GO
ALTER TABLE [dbo].[Curso_Tema_Video]  WITH CHECK ADD  CONSTRAINT [fk_idCT] FOREIGN KEY([IdCT])
REFERENCES [dbo].[Curso_Tema] ([IdCT])
GO
ALTER TABLE [dbo].[Curso_Tema_Video] CHECK CONSTRAINT [fk_idCT]
GO
ALTER TABLE [dbo].[Curso_Tema_Video]  WITH CHECK ADD  CONSTRAINT [fk_idVideo] FOREIGN KEY([IdVideo])
REFERENCES [dbo].[Video] ([IdVideo])
GO
ALTER TABLE [dbo].[Curso_Tema_Video] CHECK CONSTRAINT [fk_idVideo]
GO
/****** Object:  StoredProcedure [dbo].[sp_Curso_Actualizar]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Curso_Actualizar]
	@IdCurso int,
@descripcion varchar(200),
	@IdEmpleado int
	
AS
BEGIN
	UPDATE Curso SET descripcion=@descripcion, IdEmpleado=@idEmpleado
	WHERE IdCurso= @IdCurso
END;
print('--Script Finalizado--')
GO
/****** Object:  StoredProcedure [dbo].[sp_Curso_ConsultarPorID]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Curso_ConsultarPorID]
@IdCurso int
AS
BEGIN
	SELECT * FROM Curso
	WHERE IdCurso = @idCurso
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_Curso_ConsultarTodo]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Curso_ConsultarTodo]
AS
BEGIN
	SELECT * FROM Curso
	
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Curso_Eliminar]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Curso_Eliminar]
	@IdCurso int
AS
BEGIN
	DELETE FROM Curso
	WHERE IdCurso = @idCurso
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_Curso_Insertar]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Curso_Insertar]
	@descripcion varchar(200),
	@IdEmpleado int
AS
BEGIN
	INSERT INTO Curso(descripcion, idEmpleado)
	VALUES(@descripcion, @idEmpleado)
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Curso_Tema_Actualizar]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Curso_Tema_Actualizar]
	@IdCT int,
@IdCurso int,
	@IdTema int
	
AS
BEGIN
	UPDATE Curso_Tema SET IdCurso=@IdCurso, IdTema=@IdTema
	WHERE IdCT = @IdCT
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Curso_Tema_ConsultarPorID]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Curso_Tema_ConsultarPorID]
@IdCT int
AS
BEGIN
	SELECT * FROM Curso_Tema
	WHERE IdCT = @IdCT
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Curso_Tema_ConsultarTodo]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Curso_Tema_ConsultarTodo]
AS
BEGIN
	SELECT * FROM Curso_Tema
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_Curso_Tema_Eliminar]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Curso_Tema_Eliminar]
	@IdCT int
AS
BEGIN
	DELETE FROM Curso_Tema
	WHERE IdCT = @idCT
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_Curso_Tema_Insertar]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Curso_Tema_Insertar]
	@IdCurso int,
	@IdTema int
AS
BEGIN
	INSERT INTO Curso_Tema(idCurso, idTema)
	VALUES(@IdCurso, @IdTema)
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Curso_Tema_Video_Actualizar]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Curso_Tema_Video_Actualizar]
    @idCTV int,
	@idCT int,
	@idVideo int
AS
BEGIN
	UPDATE Curso_Tema_Video SET IdCT=@idCT, IdVideo=@idVideo 
	WHERE IdCTV = @idCTV
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Curso_Tema_Video_ConsultarPorID]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Curso_Tema_Video_ConsultarPorID]
@idCTV int
AS
BEGIN
	SELECT * FROM Curso_Tema_Video
	WHERE IdCTV = @idCTV
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Curso_Tema_Video_ConsultarTodo]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Curso_Tema_Video_ConsultarTodo]
AS
BEGIN
	SELECT * FROM Curso_Tema_Video
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Curso_Tema_Video_Eliminar]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Curso_Tema_Video_Eliminar]
	@idCTV int
AS
BEGIN
	DELETE FROM Curso_Tema_Video
	WHERE IdCTV = @IdCTV
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Curso_Tema_Video_Insertar]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Curso_Tema_Video_Insertar]
	@idCT int,
	@idVideo int
AS
BEGIN
	INSERT INTO Curso_Tema_Video(idCT,idVideo)
	VALUES(@idCT,@idVideo)
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_CursoDependencia]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_CursoDependencia]
	@IdCurso int
AS
BEGIN
	SELECT * FROM Curso_Tema WHERE IdCurso=@IdCurso
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_CursoTemaDependencia]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_CursoTemaDependencia]
	@IdCT int
AS
BEGIN
	SELECT * FROM Curso_Tema_Video WHERE IdCT=@IdCT
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Empleado_Actualizar]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Empleado_Actualizar]
	@IdEmpleado int,
	@Nombre nvarchar(100),
	@Direccion nvarchar(100)
AS
BEGIN
	UPDATE Empleado SET Nombre=@Nombre,Direccion=@Direccion
	WHERE IdEmpleado = @IdEmpleado
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Empleado_ConsultarPorID]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Empleado_ConsultarPorID]
@IdEmpleado int
AS
BEGIN
	SELECT * FROM Empleado
	WHERE IdEmpleado = @IdEmpleado
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Empleado_ConsultarTodo]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Empleado_ConsultarTodo]
AS
BEGIN
	SELECT * FROM Empleado
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Empleado_Eliminar]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Empleado_Eliminar]
	@IdEmpleado int
AS
BEGIN
	DELETE FROM Empleado
	WHERE idEmpleado = @IdEmpleado
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Empleado_Insertar]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Empleado_Insertar]
	@Nombre nvarchar(100),
	@Direccion nvarchar(100)
AS
BEGIN
	INSERT INTO Empleado(Nombre,Direccion)
	VALUES(@Nombre,@Direccion)
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_EmpleadoDependencia]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_EmpleadoDependencia]
	@IdEmpledo int
AS
BEGIN
	SELECT * FROM Curso WHERE IdEmpleado=@IdEmpledo
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Tema_Actualizar]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[sp_Tema_Actualizar]
	@IdTema int,
	@Nombre nvarchar(200)
AS
BEGIN
	UPDATE Tema SET Nombre=@Nombre
	WHERE IdTema = @IdTema
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Tema_ConsultarPorID]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Tema_ConsultarPorID]
@IdTema int
AS
BEGIN
	SELECT * FROM TEMA
	WHERE IdTema = @idTema
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Tema_ConsultarTodo]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_Tema_ConsultarTodo]
AS
BEGIN
	SELECT * FROM TEMA
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Tema_Eliminar]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_Tema_Eliminar]
	@IdTema int
AS
BEGIN
	DELETE FROM TEMA
	WHERE IdTema = @idTema
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Tema_Insertar]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[sp_Tema_Insertar]
	@Nombre nvarchar(200)
AS
BEGIN
	INSERT INTO Tema(Nombre)
	VALUES(@Nombre)
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_TemaDependencia]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_TemaDependencia]
	@IdTema int
AS
BEGIN
	SELECT * FROM CURSO_TEMA WHERE IdTema=@IdTema
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Video_Actualizar]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Video_Actualizar]
	@IdVideo int,
	@Nombre nvarchar(200),
	@Url nvarchar(100),
	@FechaPublicacion datetime
AS
BEGIN
	UPDATE Video SET Nombre=@Nombre,Url=@Url,FechaPublicacion=@FechaPublicacion
	WHERE IdVideo = @IdVideo
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Video_ConsultarPorID]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Video_ConsultarPorID]
@IdVideo int
AS
BEGIN
	SELECT * FROM VIDEO
	WHERE IdVideo = @idVideo
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Video_ConsultarTodo]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Video_ConsultarTodo]
AS
BEGIN
	SELECT * FROM VIDEO
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Video_Eliminar]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Video_Eliminar]
	@IdVideo int
AS
BEGIN
	DELETE FROM VIDEO
	WHERE IdVideo = @idVideo
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Video_Insertar]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Video_Insertar]
	@Nombre nvarchar(200),
	@Url nvarchar(100),
	@FechaPublicacion datetime
AS
BEGIN
	INSERT INTO Video(Nombre,Url,FechaPublicacion)
	VALUES(@Nombre,@Url,@FechaPublicacion)
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_VideoDependencia]    Script Date: 28/05/2020 09:27:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_VideoDependencia]
	@IdVideo int
AS
BEGIN
	SELECT * FROM Curso_Tema_Video WHERE IdVideo=@IdVideo
END;
GO

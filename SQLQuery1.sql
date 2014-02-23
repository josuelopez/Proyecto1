create table Persona (
id_Persona int Primary key not null identity,
Nombre varchar(20),
Apellidos varchar(30),
Foto binary,
Usuario varchar(20),
Contrasena varchar(15),
Resumen varchar(300)
);
alter table Persona add Resumen varchar(300)
create table Recomendaciones(
id_Persona int Foreign key references Persona (id_Persona),
Nombre_completo varchar(50),
Email varchar(50),
Telefonos varchar(20),
Comentario varchar (300)
);


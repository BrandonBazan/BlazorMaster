create database dbprueba

go

use dbprueba

go

create table Producto(
IdProducto int primary key identity,
Nombre varchar(50),
Precio decimal(10,2)
)
go

create table Venta(
IdVenta int primary key identity,
Cliente varchar(50),
Total decimal(10,2)
)

go

create table DetalleVenta(
IdDetalleVenta int primary key identity,
IdVenta int foreign key references Venta(IdVenta),
IdProducto int foreign key references Producto(IdProducto),
Cantidad int,
SubTotal decimal(10,2)
)


go

insert into Producto(Nombre,Precio) values 
('auricular logitech gamer',80),
('memoria kingston rgb',100),
('monitor samsung curvo',1400),
('teclado logitech',350)

select * from Producto

select * from Venta
select * from DetalleVenta
/*SELECT c.CustomerID, e.EmployeeID, p.ProductID, o.OrderDate,
(od.Quantity * od.UnitPrice * (1 - od.Discount)) as [Monto] ,
od.Quantity, od.UnitPrice, od.Discount
FROM Northwind.dbo.Customers as c 
inner join Northwind.dbo.Orders as o
on c.CustomerID = o.CustomerID
inner join Northwind.dbo.Employees as e
on e.EmployeeID = o.EmployeeID
inner join Northwind.dbo.[Order Details] as od
on o.OrderID = od.OrderID
inner join Northwind.dbo.Products as p
on od.ProductID = p.ProductID

Select clienteid, empleadocodigo,productocodigo,
ventasorden,ventasmonto, ventasunidades,
ventaspreciounitario, ventasdescuento 
from stage_northwind.dbo.ventas

create table producto(
productoid int not null,
nombreproducto varchar(40) not null,
preciounitario decimal(15,2) not null,
categoriaid int not null
)

use stage_northwind
drop table producto

SELECT ProductID, 
ProductName, 
UnitPrice, 
c.CategoryID 
FROM Northwind.dbo.Products as p
inner join Northwind.dbo.Categories as c
on p.CategoryID = c.CategoryID;

Select productoid, nombreproducto, preciounitario, categoriaid
from stage_northwind.dbo.producto;

create table producto(
productoid int not null,
nombreproducto varchar(40) not null,
preciounitario decimal(15,2) not null,
categoriaid int not null
)

SELECT SupplierID, CompanyName, City, 
isnull(Region, 'SR') as Region, Country 
FROM Northwind.dbo.Suppliers;

Select proveedorid,proveedornombre, cuidad, region,pais
from stage_northwind.dbo.proveedor

CREATE TABLE [dbo].[Stage_Tiempo](
	[Tiempo_Skey] [int] IDENTITY(1,1) NOT NULL,
	[Tiempo_FechaActual] [datetime] NOT NULL,
	[Tiempo_Anio] [int] NOT NULL,
	[Tiempo_Trimestre] [int] NOT NULL,
	[Tiempo_Mes] [int] NOT NULL,
	[Tiempo_Semana] [int] NOT NULL,
	[Tiempo_DiaDeAnio] [int] NOT NULL,
	[Tiempo_DiaDeMes] [int] NOT NULL,
	[Tiempo_DiaDeSemana][int] NOT NULL);

	------------------------------------------

	SELECT Distinct(OrderDate),
		
YEAR(OrderDate) AS Anio,
		
DATEPART(QUARTER,OrderDate) as Trimestre,
		DATEPART(MONTH,OrderDate) as Mes,
		DATEPART(WEEK,OrderDate) as Semana,
		DATEPART(DAYOFYEAR,OrderDate) as DiaDeAnio,
		DATEPART(DAY,OrderDate) as DiaDeMes,
		DATEPART(WEEKDAY,OrderDate-1) as DiaDeSemana
		FROM Northwind.DBO.Orders;


	Select *
	from stage_northwind.dbo.Stage_Tiempo
	*/
	
SELECT sc.clienteid, sc.compania, sc.ciudad, sc.region, sc.pais 
FROM stage_northwind.dbo.clientes as sc;


SELECT *
FROM datamart_northwind.dbo.dim_cliente;

-----------------------------------------------

SELECT se.empleadoid, 
CONCAT(se.nombre, ' ', se.apellido) as 'NombreCompleto'
FROM stage_northwind.dbo.empleado as se

SELECT *
FROM datamart_northwind.dbo.dim_empleado;

------------------------------------------------

SELECT *
FROM datamart_northwind.dbo.dim_producto;


------------------------------------------------

SELECT *
FROM datamart_northwind.dbo.dim_tiempo;

-----------------------------------------------


SELECT *
FROM datamart_northwind.dbo.fact_ventas;

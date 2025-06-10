use bdpruebaetl;
Select top 0 p.ProductID,
p.ProductName,
c.CategoryName,
p.UnitPrice,
p.UnitsInStock,
(p.UnitPrice * p.UnitsInStock) as 'Importe'
into tblprueba
from Northwind.dbo.Products as p
inner join Northwind.dbo.Categories as c
on p.CategoryID = c.CategoryID;

select * from tblprueba;

TRUNCATE TABLE tblprueba;
Select ContactName Adi,CompanyName SirketAdi,City Sehir from Customers

Select * from Customers where City = 'london'--where koşul demektir burdaki sorguda city kolonundan london olanları getir demiş oluyoruz

Select * from Products where CategoryID = 1 or CategoryID = 3 --or "yada" demektir

Select * from Products where CategoryID = 1 and UnitPrice > 1000 --and "ve" demektir

select * from Products order by ProductName --order by sırala demek (Harflerde Alfabetik gider A'dan başlar)

select * from Products order by CategoryID --order by sırala demek (Sayılarda 1'den başlar)

select * from Products order by CategoryID, ProductName --önce kategoriye göre sıraladı, onlarıda kendi içinde ürün ismine göre sıralar

select * from Products order by UnitPrice desc --fiyatı en azdan en yükseğe doğru sıralar (default sorgu kodu asc'dir ascending açılımıdır ve artan demektir...
--fiyatı en azdan "Artan demektir") (desc azalan demektir descending açılımıdır, fiyatı en yüksekten azalan demektir)

select * from Products where CategoryID = 1 order by UnitPrice desc --kategori Id'si 1 olanları önce listele.. sonra onları fiyata göre en yüksekten listele demek

select count(*) from Products --count kaç tane var demek. Products tablosunda kaç data var ?

select count(*) from Products where CategoryID = 2 -- Kategorisi 2 olan Product tablosunda kaç data var demektir

select CategoryID, count(*) KacUrun from Products where UnitPrice>10 group by CategoryID having count(*)<10

select Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName from Products inner join Categories  
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice>10

select * from Products p left join [Order Details] od on p.ProductID = od.ProductID--left join solda olup sağda olmayanlarıda getir demek

select * from Customers c left join Orders o on c.CustomerID = o.CustomerID where o.CustomerID is null

--1 - Liste des contacts français : afficher société, contact, fonction, téléphone
SELECT CompanyName,ContactName, ContactTitle, Phone From Customers where Country = "france"

-- 2 - Produits vendus par le fournisseur « Exotic Liquids » :
SELECT ProductName,UnitPrice FROM products INNER JOIN suppliers ON suppliers.SupplierID = products.SupplierID WHERE CompanyName = "Exotic Liquids"

--3 - Nombre de produits vendus par les fournisseurs Français dans l’ordre décroissant
select CompanyName as fournisseur, COUNT(suppliers.SupplierID) as nbr from products INNER join suppliers on suppliers.SupplierID = products.SupplierID where Country = "France" GROUP by suppliers.SupplierID order by nbr desc

--4 - Liste des clients Français ayant plus de 10 commandes : pas fini 
SELECT CompanyName AS client, COUNT(orders.CustomerID) AS Nbr From customers INNER join orders ON orders.CustomerID = customers.CustomerID where Country = "france"  GROUP by orders.CustomerID

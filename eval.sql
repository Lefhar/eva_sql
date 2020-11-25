--1 - Liste des contacts français : afficher société, contact, fonction, téléphone
SELECT CompanyName,ContactName, ContactTitle, Phone From Customers where Country = "france"

-- 2 - Produits vendus par le fournisseur « Exotic Liquids » :
SELECT ProductName,UnitPrice FROM products INNER JOIN suppliers ON suppliers.SupplierID = products.SupplierID WHERE CompanyName = "Exotic Liquids"

--3 - Nombre de produits vendus par les fournisseurs Français dans l’ordre décroissant

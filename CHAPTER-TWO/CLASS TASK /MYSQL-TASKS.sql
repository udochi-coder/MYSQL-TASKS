SELECT SKU,SKU_Description FROM INVENTORY;
SELECT SKU_Description,SKU FROM INVENTORY;
SELECT WarehouseID FROM INVENTORY;
SELECT distinct WarehouseID FROM INVENTORY;
SHOW COLUMNS FROM INVENTORY;
SELECT * FROM INVENTORY;
SELECT * FROM INVENTORY WHERE QuantityOnHand > 0;
SELECT SKU,SKU_Description FROM INVENTORY WHERE QuantityOnHand = 0;
SELECT SKU,SKU_Description,WarehouseID FROM INVENTORY WHERE QuantityOnHand = 0 ORDER BY WarehouseID ASC;
SELECT SKU,SKU_Description,WarehouseID FROM INVENTORY WHERE QuantityOnHand > 0 ORDER BY WarehouseID DESC ,SKU ASC; 
SELECT SKU,SKU_Description,WarehouseID FROM INVENTORY WHERE QuantityOnHand = 0 ORDER BY WarehouseID DESC ,SKU ASC; 
SELECT SKU,SKU_Description,WarehouseID FROM INVENTORY WHERE QuantityOnHand <= 10;
SELECT SKU,SKU_Description,WarehouseID and QuantityOnHand FROM INVENTORY WHERE QuantityOnHand <= 10;
SELECT SKU,SKU_Description,WarehouseID and QuantityOnHand FROM INVENTORY WHERE QuantityOnHand BETWEEN 2 and 9;
SELECT DISTINCT SKU,SKU_Description FROM INVENTORY WHERE SKU_Description LIKE "Half-Dome%";
SELECT DISTINCT SKU,SKU_Description FROM INVENTORY  WHERE SKU_Description LIKE "Climb%";
SELECT DISTINCT SKU,SKU_Description FROM INVENTORY  WHERE SKU_Description LIKE "__d%";
SELECT SUM(QuantityOnHand) AS TotalQuantityOnHand, AVG(QuantityOnHand) AS AverageQuantityOnHand,MIN(QuantityOnHand) AS MinimumQuantityOnHand, MAX(QuantityOnHand) AS MaximumQuantityOnHand, COUNT(QuantityOnHand) AS CountOfQuantityOnHand FROM INVENTORY;
-- SUM tells you to the total value when items are added together, COUNT tells you how many items or rows exist
SELECT WarehouseID ,SUM(QuantityOnHand) AS TotalItemsOnHand FROM INVENTORY GROUP BY WarehouseID ORDER BY TotalItemsOnHand DESC;
SELECT WarehouseID ,SUM(QuantityOnHand) AS TotalItemsOnHandLT3 FROM INVENTORY  WHERE QuantityOnHand >=3  GROUP BY WarehouseID  ORDER BY TotalItemsOnHandLT3 DESC;
 SELECT WarehouseID ,SUM(QuantityOnHand) AS TotalItemsOnHandLT3 FROM INVENTORY  WHERE QuantityOnHand >=3  GROUP BY WarehouseID HAVING COUNT(SKU) <=2  ORDER BY TotalItemsOnHandLT3 DESC;
 -- I used WHERE first because i wanted to specify the QuantityOnHand was higher  than 3 before showing how many sku's.












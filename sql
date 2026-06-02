Select * from Train;

SELECT *
FROM train
WHERE c6 > 200;

SELECT*from Train
order by c6;

SELECT AVG (c6) AS Avg_Cost
FROM Train;

SELECT *
FROM Train
WHERE c6 > (SELECT AVG(c6) FROM Train);

DROP VIEW IF EXISTS Shipment_Summary;

CREATE VIEW Shipment_Summary AS
SELECT c3, COUNT(*) AS Total_Orders
FROM Train
GROUP BY c3;

DROP INDEX IF EXISTS idx_shipment;

CREATE INDEX idx_shipment
ON Train(c3);
-- Create Customer Table
CREATE TABLE IF NOT EXISTS Customer (
    Customer_ID INTEGER,
    Customer_Name TEXT
);

INSERT INTO Customer VALUES (1,'Arun');
INSERT INTO Customer VALUES (2,'Kavin');
INSERT INTO Customer VALUES (3,'Priya');

SELECT
    c.Customer_ID,
    c.Customer_Name
FROM Customer c
INNER JOIN Customer c2
ON c.Customer_ID = c2.Customer_ID;

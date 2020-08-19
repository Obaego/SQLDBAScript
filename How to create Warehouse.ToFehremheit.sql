CREATE FUNCTION Warehouse.Tofahremheit (@Celsius decimal(10,2))
RETURNS decimal(10,2)
AS
BEGIN
     DECLARE @Fehremheit decimal(10,2);
	 SET @Fehremheit = (@Celsius * 1.8 + 32);
	 RETURN @Fehremheit
END;

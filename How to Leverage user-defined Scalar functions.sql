SELECT TOP 100 VehicleTemperatureID,
    Temperature AS Celsius,
    Warehouse.ToFahremheit(Temperature) AS Fahremheit 
FROM Warehouse.VehicleTemperatures;
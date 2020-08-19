SELECT * FROM [Access File];
SELECT * FROM RoomReservation;
SELECT * FROM Rooms;


SELECT [Access File].FirstName,
       [Access File].LastName,
	   RoomReservation.ChechinDate,
	   RoomReservation.CheckOutDate,
	   RoomReservation.RoomNumber,
       Rooms.BedType
	   Rooms,Rate
FROM [Access File] INNER JOIN RoomReservation ON [Access File].GuestID = RoomReservation.GuestID
 INNER JOIN Rooms ON RoomReservation.RoomNumber = Rooms.RoomNumber 
 ;    
 


		 
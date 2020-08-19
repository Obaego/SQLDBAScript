SELECT * FROM RoomReservation

UPDATE RoomReservation
SET ChechinDate = '2019-05-13', 
    CheckOutDate = '2019-05-14'
WHERE ReservationID = 1;
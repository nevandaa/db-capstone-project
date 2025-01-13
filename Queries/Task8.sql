DELIMITER //
CREATE PROCEDURE CheckBooking(IN booking_date DATE, IN table_number INT)
BEGIN
    DECLARE status VARCHAR(255);
    
    SELECT IF(COUNT(*) > 0, CONCAT('Table ', table_number, ' is already booked'), CONCAT('Table ', table_number, ' is available')) INTO status
    FROM Bookings
    WHERE BookingDate = booking_date AND TableNumber = table_number;
    
    SELECT status AS 'Booking status';
END //
DELIMITER ;

CALL CheckBooking('2022-11-12', 3);
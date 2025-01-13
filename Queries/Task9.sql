DELIMITER //
CREATE PROCEDURE AddValidBooking(IN booking_date DATE, IN table_number INT, IN customer_id INT)
BEGIN
    DECLARE already_booked INT DEFAULT 0;
    
    START TRANSACTION;
    
    SELECT COUNT(*) INTO already_booked
    FROM Bookings
    WHERE BookingDate = booking_date AND TableNumber = table_number;
    
    IF already_booked > 0 THEN
        ROLLBACK;
        SELECT CONCAT('Table ', table_number, ' is already booked - booking cancelled') AS 'Booking status';
    ELSE
        INSERT INTO Bookings (BookingDate, TableNumber, CustomerID)
        VALUES (booking_date, table_number, customer_id);
        COMMIT;
        SELECT CONCAT('Booking successful for table ', table_number, ' on ', booking_date) AS 'Booking status';
    END IF;
END //
DELIMITER ;
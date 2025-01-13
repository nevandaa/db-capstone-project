DELIMITER //

CREATE PROCEDURE UpdateBooking(
    IN booking_id INT,
    IN new_booking_date DATE
)
BEGIN
    UPDATE bookings
    SET BookingDate = new_booking_date
    WHERE BookingID = booking_id;
    SELECT 'Booking updated' AS Confirmation;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE CancelBooking(
    IN booking_id INT
)
BEGIN
    DELETE FROM bookings WHERE BookingID = booking_id;
    SELECT 'Booking cancelled' AS Confirmation;
END //

DELIMITER ;

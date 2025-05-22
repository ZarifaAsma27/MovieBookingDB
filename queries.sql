SELECT 
    m.Title,
    m.Genre,
    s.ShowDate,
    s.ShowTime,
    t.Name AS TheaterName,
    t.Location
FROM Showtimes s
JOIN Movies m ON s.MovieID = m.MovieID
JOIN Theaters t ON s.TheaterID = t.TheaterID;

SELECT 
    b.BookingID,
    b.CustomerName,
    m.Title,
    s.ShowDate,
    s.ShowTime,
    b.SeatsBooked
FROM Bookings b
JOIN Showtimes s ON b.ShowtimeID = s.ShowtimeID
JOIN Movies m ON s.MovieID = m.MovieID
WHERE b.CustomerName = 'John Doe';
SELECT 
    m.Title,
    t.Name AS TheaterName,
    s.ShowDate,
    s.ShowTime
FROM Showtimes s
JOIN Movies m ON s.MovieID = m.MovieID
JOIN Theaters t ON s.TheaterID = t.TheaterID
WHERE s.ShowDate >= SYSDATE
ORDER BY s.ShowDate, s.ShowTime;
SELECT 
    m.Title,
    COUNT(b.BookingID) AS TotalBookings
FROM Movies m
JOIN Showtimes s ON m.MovieID = s.MovieID
JOIN Bookings b ON s.ShowtimeID = b.ShowtimeID
GROUP BY m.Title
ORDER BY TotalBookings DESC;
SELECT 
    s.ShowtimeID,
    m.Title,
    s.ShowDate,
    s.ShowTime,
    SUM(b.SeatsBooked) AS SeatsBooked
FROM Showtimes s
JOIN Movies m ON s.MovieID = m.MovieID
JOIN Bookings b ON s.ShowtimeID = b.ShowtimeID
GROUP BY s.ShowtimeID, m.Title, s.ShowDate, s.ShowTime
ORDER BY s.ShowDate;
SELECT 
    m.Title,
    s.ShowDate,
    s.ShowTime
FROM Showtimes s
JOIN Movies m ON s.MovieID = m.MovieID
JOIN Theaters t ON s.TheaterID = t.TheaterID
WHERE t.Name = 'Cinema Galaxy';

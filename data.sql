INSERT INTO Movies (MovieID, Title, Genre, Duration, Rating) VALUES (1, 'Inception', 'Sci-Fi', 148, 'PG-13');
INSERT INTO Movies (MovieID, Title, Genre, Duration, Rating) VALUES (2, 'The Dark Knight', 'Action', 152, 'PG-13');
INSERT INTO Movies (MovieID, Title, Genre, Duration, Rating) VALUES (3, 'Interstellar', 'Sci-Fi', 169, 'PG-13');

INSERT INTO Theaters (TheaterID, Name, Location) VALUES (1, 'Cinema Galaxy', 'New York');
INSERT INTO Theaters (TheaterID, Name, Location) VALUES (2, 'Grand Multiplex', 'Los Angeles');
INSERT INTO Theaters (TheaterID, Name, Location) VALUES (3, 'Skyline Theater', 'Chicago');

INSERT INTO Showtimes (ShowtimeID, MovieID, TheaterID, ShowDate, ShowTime)
VALUES (1, 1, 1, TO_DATE('2025-05-21', 'YYYY-MM-DD'), '18:00');

INSERT INTO Showtimes (ShowtimeID, MovieID, TheaterID, ShowDate, ShowTime)
VALUES (2, 2, 2, TO_DATE('2025-05-21', 'YYYY-MM-DD'), '20:00');

INSERT INTO Showtimes (ShowtimeID, MovieID, TheaterID, ShowDate, ShowTime)
VALUES (3, 3, 3, TO_DATE('2025-05-22', 'YYYY-MM-DD'), '19:30');

INSERT INTO Bookings (BookingID, ShowtimeID, CustomerName, SeatsBooked, BookingDate)
VALUES (1, 1, 'John Doe', 2, TO_DATE('2025-05-20', 'YYYY-MM-DD'));

INSERT INTO Bookings (BookingID, ShowtimeID, CustomerName, SeatsBooked, BookingDate)
VALUES (2, 2, 'Jane Smith', 3, TO_DATE('2025-05-20', 'YYYY-MM-DD'));

INSERT INTO Bookings (BookingID, ShowtimeID, CustomerName, SeatsBooked, BookingDate)
VALUES (3, 3, 'Alice Johnson', 1, TO_DATE('2025-05-21', 'YYYY-MM-DD'));

select * from bookings;
select * from movies;
select * from showtimes;
select * from theaters;

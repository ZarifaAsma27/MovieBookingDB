-- Movies Table
CREATE TABLE Movies (
    MovieID NUMBER PRIMARY KEY,
    Title VARCHAR2(100),
    Genre VARCHAR2(50),
    Duration NUMBER, -- in minutes
    Rating VARCHAR2(10)
);

-- Theaters Table
CREATE TABLE Theaters (
    TheaterID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    Location VARCHAR2(100)
);

-- Showtimes Table
CREATE TABLE Showtimes (
    ShowtimeID NUMBER PRIMARY KEY,
    MovieID NUMBER REFERENCES Movies(MovieID),
    TheaterID NUMBER REFERENCES Theaters(TheaterID),
    ShowDate DATE,
    ShowTime VARCHAR2(10)
);

-- Bookings Table
CREATE TABLE Bookings (
    BookingID NUMBER PRIMARY KEY,
    ShowtimeID NUMBER REFERENCES Showtimes(ShowtimeID),
    CustomerName VARCHAR2(100),
    SeatsBooked NUMBER,
    BookingDate DATE
);

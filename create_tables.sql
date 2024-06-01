-- Unos podataka u tabelu "Customer"
INSERT INTO "Customer" ("Id","Name", "Email", "Phonenumber", "Password")
VALUES (1, 'John Doe', 'john@example.com', '123456789', 'password123');

-- Unos podataka u tabelu "Payment" sa ručno definisanim ID-jevima
INSERT INTO "Payment" ("Id", "TotalPrice", "PaymentDate")
VALUES (1, 100.00, '2024-06-01');

-- Unos podataka u tabelu "Show" sa ručno definisanim ID-jevima
INSERT INTO "Show" ("Id", "Title", "Description", "ShowDateTime")
VALUES (1, 'The Lion King', 'Musical based on Disney movie', '2024-06-01 19:00:00');

-- Unos podataka u tabelu "Theater" sa ručno definisanim ID-jevima
INSERT INTO "Theater" ("Id", "Name", "Address", "PhoneNumber")
VALUES (1, 'Broadway Theater', '123 Broadway St', '555-1234');

-- Unos podataka u tabelu "Actor" sa ručno definisanim ID-jevima
INSERT INTO "Actor" ("Id", "Name")
VALUES (1, 'Johnny Depp');

-- Unos podataka u tabelu "ShowTheater" sa ručno definisanim ID-jevima
INSERT INTO "ShowTheater" ("Id", "ShowId", "TheaterId")
VALUES (1, 1, 1);

-- Unos podataka u tabelu "ShowActor" sa ručno definisanim ID-jevima
INSERT INTO "ShowActor" ("Id", "ShowId", "ActorId")
VALUES (1, 1, 1);

-- Unos podataka u tabelu "Seat" sa ručno definisanim ID-jevima
INSERT INTO "Seat" ("Id", "SeatNumber", "ShowTheaterId")
VALUES (1, 1, 1),
       (2, 2, 1),
       (3, 3, 1);

-- Unos podataka u tabelu "TheaterActor" sa ručno definisanim ID-jevima
INSERT INTO "TheaterActor" ("Id", "TheaterId", "ActorId")
VALUES (1, 1, 1);


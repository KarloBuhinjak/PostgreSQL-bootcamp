INSERT INTO "Customer" ("Id", "Name", "Email", "Phonenumber", "Password")
VALUES 
    (1, 'John Doe', 'john@example.com', '123456789', 'password123'),
    (2, 'Alice Smith', 'alice@example.com', '987654321', 'password456'),
    (3, 'Bob Johnson', 'bob@example.com', '555555555', 'password789'),
    (4, 'Emily Brown', 'emily@example.com', '111111111', 'passwordabc');

INSERT INTO "Payment" ("Id", "TotalPrice", "PaymentDate")
VALUES 
    (1, 100.00, '2024-06-01'),
    (2, 50.00, '2024-06-02'),
    (3, 75.00, '2024-06-03'),
    (4, 120.00, '2024-06-04');
INSERT INTO "Show" ("Id", "Title", "Description", "ShowDateTime")
VALUES 
    (1, 'The Lion King', 'Musical based on Disney movie', '2024-06-01 19:00:00'),
    (2, 'Les Misérables', 'Musical based on Victor Hugo novel', '2024-06-02 18:30:00'),
    (3, 'Hamilton', 'Musical about American founding father Alexander Hamilton', '2024-06-03 20:00:00'),
    (4, 'Wicked', 'Musical based on The Wizard of Oz', '2024-06-04 17:00:00');
INSERT INTO "Theater" ("Id", "Name", "Address", "PhoneNumber")
VALUES 
    (1, 'Broadway Theater', '123 Broadway St', '555-1234'),
    (2, 'West End Theater', '456 West End Ave', '555-5678'),
    (3, 'Royal Opera House', '789 Royal St', '555-9012'),
    (4, 'Sydney Opera House', '10 Sydney Blvd', '555-3456');
INSERT INTO "Actor" ("Id", "Name")
VALUES 
    (1, 'Johnny Depp'),
    (2, 'Emma Watson'),
    (3, 'Tom Hanks'),
    (4, 'Jennifer Lawrence');
INSERT INTO "ShowTheater" ("Id", "ShowId", "TheaterId")
VALUES 
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3),
    (4, 4, 4);
INSERT INTO "ShowActor" ("Id", "ShowId", "ActorId")
VALUES 
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3),
    (4, 4, 4);
INSERT INTO "Seat" ("Id", "SeatNumber", "ShowTheaterId")
VALUES 
    (1, 1, 1),
    (2, 2, 1),
    (3, 3, 1),
    (4, 4, 1),
    (5, 1, 2),
    (6, 2, 2),
    (7, 3, 2),
    (8, 4, 2),
    (9, 1, 3),
    (10, 2, 3),
    (11, 3, 3),
    (12, 4, 3),
    (13, 1, 4),
    (14, 2, 4),
    (15, 3, 4),
    (16, 4, 4);
INSERT INTO "TheaterActor" ("Id", "TheaterId", "ActorId")
VALUES 
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3),
    (4, 4, 4);

CREATE TABLE "Customer" (
  "Id" SERIAL PRIMARY KEY,
  "Name" VARCHAR(255),
  "Email" VARCHAR(255),
  "Phonenumber" VARCHAR(20),
  "Password" VARCHAR(255)
);

CREATE TABLE "Payment" (
  "Id" SERIAL PRIMARY KEY,
  "TotalPrice" NUMERIC(10, 2),
  "PaymentDate" DATE,
);

CREATE TABLE "Ticket" (
  "Id" SERIAL PRIMARY KEY,
  "Price" DECIMAL(10, 2),
  "CustomerId" INT,
  "PaymentId" INT,
  "ShowId" INT,
  "SeatId" INT,
  CONSTRAINT FK_Ticket_Customer_CustomerId FOREIGN KEY ("CustomerId") REFERENCES "Customer" ("Id"),
  CONSTRAINT FK_Ticket_Payment_PaymentId FOREIGN KEY ("PaymentId") REFERENCES "Payment" ("Id"),
  CONSTRAINT FK_Ticket_Show_ShowId FOREIGN KEY ("ShowId") REFERENCES "Show" ("Id"),
  CONSTRAINT FK_Ticket_Seat_SeatId FOREIGN KEY ("SeatId") REFERENCES "Seat" ("Id")
);


CREATE TABLE "Seat" (
  "Id" SERIAL PRIMARY KEY,
  "SeatNumber" INT,
  "ShowTheaterId" INT,
  CONSTRAINT FK_Seat_ShowTheater_ShowTheaterId FOREIGN KEY ("ShowTheaterId") REFERENCES "ShowTheater" ("Id")
);

CREATE TABLE "Show" (
  "Id" SERIAL PRIMARY KEY,
  "Title" VARCHAR(255),
  "Description" VARCHAR(255),
  "ShowDateTime" TIMESTAMP
);

CREATE TABLE "ShowTheater" (
  "Id" SERIAL PRIMARY KEY,
  "ShowId" INT,
  "TheaterId" INT,
  CONSTRAINT FK_ShowTheater_Show_ShowId FOREIGN KEY ("ShowId") REFERENCES "Show" ("Id"),
  CONSTRAINT FK_ShowTheater_Theater_TheaterId FOREIGN KEY ("TheaterId") REFERENCES "Theater" ("Id")
);

CREATE TABLE "Theater" (
  "Id" SERIAL PRIMARY KEY,
  "Name" VARCHAR(255),
  "Address" VARCHAR(255),
  "PhoneNumber" VARCHAR(20)
);

CREATE TABLE "Actor" (
  "Id" SERIAL PRIMARY KEY,
  "Name" VARCHAR(255)
);

CREATE TABLE "ShowActor" (
  "Id" SERIAL PRIMARY KEY,
  "ShowId" INT,
  "ActorId" INT,
  CONSTRAINT FK_ShowActor_Show_ShowId FOREIGN KEY ("ShowId") REFERENCES "Show" ("Id"),
  CONSTRAINT FK_ShowActor_Actor_ActorId FOREIGN KEY ("ActorId") REFERENCES "Actor" ("Id")
);

CREATE TABLE "TheaterActor" (
  "Id" SERIAL PRIMARY KEY,
  "TheaterId" INT,
  "ActorId" INT,
  CONSTRAINT FK_TheaterActor_Theater_TheaterId FOREIGN KEY ("TheaterId") REFERENCES "Theater" ("Id"),
  CONSTRAINT FK_TheaterActor_Actor_ActorId FOREIGN KEY ("ActorId") REFERENCES "Actor" ("Id")
);






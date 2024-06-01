-- Selekcija svih korisnika
SELECT * FROM "Customer";

-- Selekcija svih kazališta
SELECT * FROM "Theater";

-- Selekicja svih glumaca
SELECT * FROM "Actor";

-- Selekcija svih kazališta gdje se izvode određene predstave
SELECT * FROM "ShowTheater";

-- Selekcija svih plaćanja sa iznosom većim od 100
SELECT * FROM "Payment" WHERE "TotalPrice" > 100.00;

-- Selekcija svih predstava čiji je naslov 'The Lion King'
SELECT * FROM "Show" WHERE "Title" = 'The Lion King';

-- Selekcija korisnika i njihove transakcije, te datum plaćanja
SELECT c."Name", p."TotalPrice", p."PaymentDate"
FROM "Customer" c
JOIN "Payment" p ON c."Id" = p."Id";

-- Selekcija predstava i kazališta u kojima se održavaju
SELECT sh."Title", th."Name"
FROM "ShowTheater" sth
JOIN "Show" sh ON sth."ShowId" = sh."Id"
JOIN "Theater" th ON sth."TheaterId" = th."Id";

-- Selekcija glumaca i kazališta na kojima izvode predstave
SELECT a."Name" AS "ActorName", th."Name" AS "TheaterName"
FROM "TheaterActor" ta
JOIN "Actor" a ON ta."ActorId" = a."Id"
JOIN "Theater" th ON ta."TheaterId" = th."Id";

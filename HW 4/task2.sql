--1.	Insert into events table the information ‘Fluffy’, ‘2020-10-15’, ‘vet’, ‘antibiotics’;
INSERT INTO petEvent VALUES
    ("Fluffy", '2020-10-15', "vet", "antibiotics");

--2.	Insert into events table the information ‘Hammy’, ‘2020-10-15’, ‘vet’, ‘antibiotics’. Note that Hammy is a male ‘hamster’ of ‘Diane’ which was born on 2010-10-30 and STILL DIDN’T DIE
INSERT INTO petPet VALUES
    ("Hammy", "Diane","Hamster","M",'2010-10-30',NULL);
INSERT INTO petEvent VALUES
    ("Hammy", '2020-10-15', "vet", "antibiotics");

--3.	It appeared that Fluffy had 5 kittens 2 of which are male.
UPDATE petEvent
    set remark = '5 kittens, 3 female, 2 male'
    WHERE petname = 'Fluffy' AND eventdate = '1995-05-15'

--4.	Also, on “1997-08-03” it was Claws who broke the rib.
INSERT VALUES petEvent VALUES
    ("Claws",'1997-08-03',"vet","broken rib");

--5.	Unfortunately, Puffball died on ‘2020-09-01’.
UPDATE petPet
    set death = '2020-09-01'
    WHERE petname = Puffball

--6.	Harold asked me to remove his dog from my database due to GDPR.

SET FOREIGN_KEY_CHECKS=0;
DELETE FROM petEvent WHERE petname = 'Buffy';
SET FOREIGN_KEY_CHECKS=1;

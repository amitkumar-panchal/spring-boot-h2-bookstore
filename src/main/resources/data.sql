
insert into tbluser (id, username, password, name) values (1, 'cashier1','test', 'Cashier - 1');
insert into tbluser (id, username, password, name) values (2, 'cashier2','1234', 'Cashier - 2');
insert into tbluser (id, username, password, name) values (3, 'manager','abcd', 'Manager - 1');
insert into tbluser (id, username, password, name) values (4, 'admin','admin', 'Administrator');


insert into tblrole (id, username, role) values (1, 'cashier1', 'Cashier');
insert into tblrole (id, username, role) values (2, 'cashier2','Cashier');
insert into tblrole (id, username, role) values (3, 'manager','Manager');
insert into tblrole (id, username, role) values (4, 'admin','manager-script');


insert into tblbook (title, author, price, stock, courses) values ('Ship of Destiny','Frank Chadwick', 1050.0, 5, 'Science;History;');
insert into tblbook (title, author, price, stock, courses) values ('Forced Perspectives','Tim Powers', 1050.0, 15, 'Physics;History;');
insert into tblbook (title, author, price, stock, courses) values ('Castaway Resolution','Eric Flint', 900.0, 3, 'Social Studies;History;');
insert into tblbook (title, author, price, stock, courses) values ('Routine Patrol','Michael Stamm', 1050.0, 10, 'Crime;History;');
insert into tblbook (title, author, price, stock, courses) values ('Breaking Silence','Mercedes Lackey', 1050.0, 2, 'Science;History;');
insert into tblbook (title, author, price, stock, courses) values ('The Initiate','James Combias', 1050.0, 2, 'Science;English;');
insert into tblbook (title, author, price, stock, courses) values ('Head First Java','Kathey Sara', 1250.0, 25, 'Science;Computer;Java;');
insert into tblbook (title, author, price, stock, courses) values ('Head First SQL','Kathey Sara', 1250.0, 10, 'Science;Computer;Oracle;');
insert into tblbook (title, author, price, stock, courses) values ('Head First OOD','Kathey Sara', 1250.0, 5, 'Design;Computer;');
insert into tblbook (title, author, price, stock, courses) values ('Head First Python','Kathey Sara', 1250.0, 5, 'Python;Computer;');
insert into tblbook (title, author, price, stock, courses) values ('Mastering C++','Eric Gama', 1250.0, 12, 'C++;Computer;');
insert into tblbook (title, author, price, stock, courses) values ('Lets C','Yashvant Kanitkar', 600.0, 25, 'C++;History;');
insert into tblbook (title, author, price, stock, courses) values ('Gulivers Travels','Jonathan Swift', 1550.0, 2, 'Epic;History;');
insert into tblbook (title, author, price, stock, courses) values ('Hobbit','R.R. Talkien', 1050.0, 6, 'Science;');
insert into tblbook (title, author, price, stock, courses) values ('Adventure Di Pinochiyo','Carlo Collodi', 250.0, 1, 'Science;History;');
insert into tblbook (title, author, price, stock, courses) values ('Hemlet','Willian Shakespere', 1050.0, 3, 'Novel;History;');
insert into tblbook (title, author, price, stock, courses) values ('Powers Rolepay','Brian Bendis', 1050.0, 2, 'Motivational;History;');
insert into tblbook (title, author, price, stock, courses) values ('Death Note','Takesh Obata', 1050.0, 1, 'Science;History;');
insert into tblbook (title, author, price, stock, courses) values ('The Snowmann','Raymond Briggs', 1050.0, 1, 'Science;History;');
insert into tblbook (title, author, price, stock, courses) values ('Krazy Kats','Chris Ware', 1050.0, 1, 'Comics;');



commit;

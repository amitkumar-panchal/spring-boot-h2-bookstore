drop table IF EXISTS tbluser;

CREATE TABLE IF NOT EXISTS tbluser (
   id  int(11),
   username varchar(30) NOT NULL,
   password VARCHAR(15) NOT NULL,
   name     varchar(30) NOT NULL,
  PRIMARY KEY (id)
);


drop table IF EXISTS tblrole;

CREATE TABLE IF NOT EXISTS tblrole (
	id  int(11),
   	username varchar(30) NOT NULL,
   	role VARCHAR(30) NOT NULL,
  	PRIMARY KEY (id)
);

drop table IF EXISTS tblbook;

CREATE TABLE IF NOT EXISTS tblbook (
   id  int(11) NOT NULL AUTO_INCREMENT,
   title  varchar(50) NOT NULL,
   author VARCHAR(30) NOT NULL,
   price DECIMAL(7,2),
   stock SMALLINT(5) UNSIGNED,
   courses VARCHAR(255),
  PRIMARY KEY (id)
);


CREATE DATABASE IF NOT EXISTS kaggle;

USE kaggle;

DROP TABLE IF EXISTS Properties;
DROP TABLE IF EXISTS Train;
CREATE TABLE IF NOT EXISTS Properties
(
  id varchar(255),
  title varchar(255),
  location varchar(255),
  price int,
  rooms int,
  rating float,
  type varchar(255),
  PRIMARY KEY (ID)
);

CREATE TABLE  IF NOT EXISTS Train
(
  parcelid int,
  logerror float,
  transactiondate varchar(255),
  PRIMARY KEY (parcelid)
);



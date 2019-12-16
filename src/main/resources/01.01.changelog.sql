--liquibase formatted sql

--changeset eugen.maysyuk:01.01.000.0001
--comment create test table
CREATE TABLE `table1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` mediumtext,
  PRIMARY KEY (`ID`)
);

CREATE TABLE `table2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` mediumtext,
  PRIMARY KEY (`ID`)
);

--changeset eugen.maysyuk:01.01.000.0002
--comment issue with escaped quote
INSERT INTO `table1` VALUES (3,'TEXT \'');

INSERT INTO `table2` VALUES (4,'TEXT');

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

insert into user (name, login, password) value ( 'user1', 'log_us1', 'pas_us1');
insert into user (name, login, password) value ( 'user2', 'log_us2', 'pas_us2');
insert into user (name, login, password) value ( 'user3', 'log_us3', 'pas_us3');
insert into user (name, login, password) value ( 'user4', 'log_us4', 'pas_us4');
insert into user (name, login, password) value ( 'user5', 'log_us5', 'pas_us5');

CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_kb32rqkvn122jyko4sm9binwh` (`id_user`),
  CONSTRAINT `FK_kb32rqkvn122jyko4sm9binwh` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

insert into task (summary,priority,description) value ('task1', 'normal','descript......');
insert into task (summary,priority,description) value ('task2', 'normal','descript......');
insert into task (summary,priority,description) value ('task3', 'critical','descript......');
insert into task (summary,priority,description) value ('task4', 'normal','descript......');
insert into task (summary,priority,description) value ('task5', 'major','descript......');
insert into task (summary,priority,description) value ('task6', 'normal','descript......');
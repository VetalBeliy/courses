-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "Course" -----------------------------------
CREATE TABLE `Course` ( 
	`course_name` VarChar( 255 ) NOT NULL,
	`price` Int( 10 ) NOT NULL,
	`duration` Int( 3 ) NOT NULL,
	`level` Int( 10 ) NOT NULL,
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`teacher_id` Int( 11 ) NOT NULL,
	`created` Timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	`about` Text NOT NULL,
	PRIMARY KEY ( `id` ) )
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- ---------------------------------------------------------


-- CREATE TABLE "comments" ---------------------------------
CREATE TABLE `comments` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`user_id` Int( 11 ) NOT NULL,
	`course_id` Int( 11 ) NULL,
	`teacher_id` Int( 11 ) NULL,
	`created` Timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	`text_review` Text NULL,
	PRIMARY KEY ( `id` ) )
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- ---------------------------------------------------------


-- CREATE TABLE "lessons" ----------------------------------
CREATE TABLE `lessons` ( 
	`id` Int( 11 ) NOT NULL,
	`lesson` VarChar( 100 ) NOT NULL,
	`course_id` Int( 11 ) NOT NULL,
	`text` VarChar( 100 ) NOT NULL,
	`links_to_resources` VarChar( 255 ) NOT NULL,
	`created` Timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY ( `id` ) )
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "teachers" ---------------------------------
CREATE TABLE `teachers` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`about` Text NOT NULL,
	`skills` VarChar( 60 ) NOT NULL,
	`phone` Int( 25 ) NOT NULL,
	`mail` VarChar( 100 ) NOT NULL,
	`skype` VarChar( 100 ) NOT NULL,
	`photo` VarChar( 255 ) NOT NULL,
	`created` Timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	`name` VarChar( 100 ) NOT NULL,
	`surname` VarChar( 100 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
ENGINE = InnoDB
AUTO_INCREMENT = 3;
-- ---------------------------------------------------------


-- CREATE TABLE "users" ------------------------------------
CREATE TABLE `users` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`login` VarChar( 155 ) NOT NULL DEFAULT 'user',
	`password` VarChar( 155 ) NOT NULL,
	`email` VarChar( 155 ) NOT NULL,
	`age` Int( 3 ) NOT NULL,
	`avatar` VarChar( 255 ) NOT NULL DEFAULT 'logo.png',
	`city` VarChar( 20 ) NOT NULL,
	`phone` Int( 25 ) NOT NULL,
	`date_register` Timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	`level` Int( 10 ) NOT NULL,
	`name` VarChar( 30 ) NOT NULL,
	`surname` VarChar( 30 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
ENGINE = InnoDB
AUTO_INCREMENT = 3;
-- ---------------------------------------------------------


-- Dump data of "Course" -----------------------------------
INSERT INTO `Course`(`course_name`,`price`,`duration`,`level`,`id`,`teacher_id`,`created`,`about`) VALUES ( 'PHP', '5500', '60', '2', '1', '1', '0000-00-00 00:00:00', '' );
INSERT INTO `Course`(`course_name`,`price`,`duration`,`level`,`id`,`teacher_id`,`created`,`about`) VALUES ( 'Phiton', '2000', '20', '1', '2', '1', '0000-00-00 00:00:00', '' );
INSERT INTO `Course`(`course_name`,`price`,`duration`,`level`,`id`,`teacher_id`,`created`,`about`) VALUES ( 'JavaScript', '3800', '60', '1', '3', '2', '0000-00-00 00:00:00', '' );
-- ---------------------------------------------------------


-- Dump data of "comments" ---------------------------------
INSERT INTO `comments`(`id`,`user_id`,`course_id`,`teacher_id`,`created`,`text_review`) VALUES ( '1', '1', '1', '1', '2015-12-17 14:02:00', 'Best of the best =)' );
-- ---------------------------------------------------------


-- Dump data of "lessons" ----------------------------------
-- ---------------------------------------------------------


-- Dump data of "teachers" ---------------------------------
INSERT INTO `teachers`(`id`,`name`,`about`,`skills`,`phone`,`mail`,`skype`,`photo`,`created`,`surname`) VALUES ( '1', 'Daniil', 'teacher', 'PHP', '380', 'bandydan@gmail.com', 'bandydan', 'bbb.png', '0000-00-00 00:00:00', 'Marynich' );
INSERT INTO `teachers`(`id`,`name`,`about`,`skills`,`phone`,`mail`,`skype`,`photo`,`created`,`surname`) VALUES ( '2', 'Andrey', 'teacher', 'JS', '380', 'fff@i.ua', 'fff', 'fff.img', '0000-00-00 00:00:00', 'Kachur' );
-- ---------------------------------------------------------


-- Dump data of "users" ------------------------------------
INSERT INTO `users`(`id`,`login`,`password`,`email`,`name`,`age`,`avatar`,`city`,`phone`,`date_register`,`level`,`surname`) VALUES ( '1', 'alenija', '12345', 'alenija23@gmail.com', 'Alona', '28', 'logo.png', 'Kharkiv', '380967673', '2015-10-11 00:00:00', '3', 'Verzina' );
INSERT INTO `users`(`id`,`login`,`password`,`email`,`name`,`age`,`avatar`,`city`,`phone`,`date_register`,`level`,`surname`) VALUES ( '2', 'Kirill', '54321', 'kostichev.kirill@gmail.com', 'Kirill', '29', 'logo.png', 'Kharkiv', '380955790', '2015-02-03 00:00:00', '4', 'Kostichev' );
-- ---------------------------------------------------------


-- CREATE INDEX "lnk_Course_teachers_2" --------------------
CREATE INDEX `lnk_Course_teachers_2` USING BTREE ON `Course`( `teacher_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "lnk_comments_Course" ----------------------
CREATE INDEX `lnk_comments_Course` USING BTREE ON `comments`( `course_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "lnk_comments_teachers" --------------------
CREATE INDEX `lnk_comments_teachers` USING BTREE ON `comments`( `teacher_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "lnk_comments_users" -----------------------
CREATE INDEX `lnk_comments_users` USING BTREE ON `comments`( `user_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "lnk_lessons_Course" -----------------------
CREATE INDEX `lnk_lessons_Course` USING BTREE ON `lessons`( `course_id` );
-- ---------------------------------------------------------


-- CREATE LINK "lnk_Course_teachers" -----------------------
ALTER TABLE `Course`
	ADD CONSTRAINT `lnk_Course_teachers` FOREIGN KEY ( `teacher_id` )
	REFERENCES `teachers`( `id` )
	ON DELETE Cascade
	ON UPDATE Cascade;
-- ---------------------------------------------------------


-- CREATE LINK "lnk_comments_teachers" ---------------------
ALTER TABLE `comments`
	ADD CONSTRAINT `lnk_comments_teachers` FOREIGN KEY ( `teacher_id` )
	REFERENCES `teachers`( `id` )
	ON DELETE Cascade
	ON UPDATE Cascade;
-- ---------------------------------------------------------


-- CREATE LINK "lnk_comments_Course" -----------------------
ALTER TABLE `comments`
	ADD CONSTRAINT `lnk_comments_Course` FOREIGN KEY ( `course_id` )
	REFERENCES `Course`( `id` )
	ON DELETE Cascade
	ON UPDATE Cascade;
-- ---------------------------------------------------------


-- CREATE LINK "lnk_comments_users" ------------------------
ALTER TABLE `comments`
	ADD CONSTRAINT `lnk_comments_users` FOREIGN KEY ( `user_id` )
	REFERENCES `users`( `id` )
	ON DELETE Cascade
	ON UPDATE Cascade;
-- ---------------------------------------------------------


-- CREATE LINK "lnk_lessons_Course" ------------------------
ALTER TABLE `lessons`
	ADD CONSTRAINT `lnk_lessons_Course` FOREIGN KEY ( `course_id` )
	REFERENCES `Course`( `id` )
	ON DELETE Cascade
	ON UPDATE Cascade;
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------



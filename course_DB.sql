-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
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
	`phone` VarChar( 15 ) NOT NULL,
	`mail` VarChar( 100 ) NOT NULL,
	`skype` VarChar( 100 ) NOT NULL,
	`photo` VarChar( 255 ) NOT NULL,
	`created` Timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	`name` VarChar( 100 ) NOT NULL,
	`surname` VarChar( 100 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
ENGINE = InnoDB
AUTO_INCREMENT = 8;
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
	`phone` VarChar( 15 ) NOT NULL,
	`date_register` Timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	`level` Int( 10 ) NOT NULL,
	`name` VarChar( 30 ) NOT NULL,
	`surname` VarChar( 30 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
ENGINE = InnoDB
AUTO_INCREMENT = 5;
-- ---------------------------------------------------------


-- CREATE TABLE "courses" ----------------------------------
CREATE TABLE `courses` ( 
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
AUTO_INCREMENT = 9;
-- ---------------------------------------------------------


-- Dump data of "comments" ---------------------------------
INSERT INTO `comments`(`id`,`user_id`,`course_id`,`teacher_id`,`created`,`text_review`) VALUES ( '1', '1', '1', '1', '2015-12-17 14:02:00', 'Best of the best =)' );
INSERT INTO `comments`(`id`,`user_id`,`course_id`,`teacher_id`,`created`,`text_review`) VALUES ( '2', '2', '1', '1', '2015-12-26 02:07:13', 'I am glad that I chose this course' );
INSERT INTO `comments`(`id`,`user_id`,`course_id`,`teacher_id`,`created`,`text_review`) VALUES ( '3', '4', '4', '3', '2015-12-26 02:08:26', 'Good courses' );
-- ---------------------------------------------------------


-- Dump data of "lessons" ----------------------------------
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '1', '1', '1', 'Основы Web-программирования. Установка и настройка ПО (Apache, MySQL, PHP).

Для создания интерактив', 'https://www.youtube.com/watch?v=17kdUngN95s', '2015-12-23 00:23:34' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '2', '2', '1', 'Основы HTML, формы

HTML (HyperText Markup Language) - язык разметки гипертекста.   
Отнести HTML к ', 'http://www.webremeslo.ru/html/glava1.html', '2015-12-23 00:41:25' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '3', '3', '1', 'GET & POST

Основное различие методов GET и POST состоит в способе передачи данных веб-формы обрабат', 'http://www.komtet.ru/lib/tech/apache/razlichie-mezhdu-metodami-get-i-post', '2015-12-23 00:43:52' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '4', '4', '1', 'Возможности PHP, какие задачи решает. Области применения.
Возможности PHP очень большие. Главным обр', 'http://www.php.su/php/?can', '2015-12-23 00:49:55' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '5', '5', '1', 'Специфика языка программирования PHP

Все в программировании структурировано, подчиняется логике, ал', 'https://www.youtube.com/watch?v=kCF6HdV38QU', '2015-12-23 01:10:49' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '6', '6', '1', 'Булева алгебра. Управляющие конструкции.

Мы уже знакомились на прошлом уроке с булевым типом данных', 'https://www.youtube.com/watch?v=mqd0oDFonq4', '2015-12-23 01:14:41' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '7', '7', '1', 'Функции, файлы.

Программист часто использует встроенные функции языка, и часто пишет свои. Функции ', 'https://www.youtube.com/watch?v=ejZOG4L52CI', '2015-12-23 02:03:17' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '8', '8', '1', 'Массивы

Массивы (array) - структурированный тип данных, являющиейся просто упорядоченой
последовате', 'https://www.youtube.com/watch?v=_0vsWj-YpoQ', '2015-12-23 02:07:37' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '9', '9', '1', 'Операторы цикла, константы
Циклы позволяют повторять определенное (и даже неопределенное - когда раб', 'https://www.youtube.com/watch?v=iRagr29B6rA', '2015-12-23 02:11:29' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '10', '10', '1', 'Основы ООП
В последнее время идея объектно-ориентированного программирования (ООП), кардинально нова', 'https://www.youtube.com/watch?v=I9kVo5g0Dxs', '2015-12-23 02:13:00' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '11', '1', '2', 'Преимущества Python
Язык программирования Python 3 — это мощный инструмент для создания программ сам', 'https://www.youtube.com/watch?v=x5l_y90DrU8', '2015-12-23 02:20:26' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '12', '2', '2', 'Наша первая программа
Наберём код в текстовом редакторе (например, в gedit). Потом мы разберёмся, чт', 'https://www.youtube.com/watch?v=hBHHyclXRhQ', '2015-12-23 02:27:58' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '13', '3', '2', 'Списки, кортежи

Кортежи. Кортежи (англ. tuple) используется для представления неизменяемой последов', 'https://www.youtube.com/watch?v=I_2J07cv_q0', '2015-12-23 02:29:30' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '14', '4', '2', 'Ветвления, циклы

Простые конструкции в языке Python: ветвления и циклы имеют свои особенности по ср', 'https://www.youtube.com/watch?v=pnOY0CBaqxI', '2015-12-23 02:31:59' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '15', '5', '2', 'Функции и их аргументы

Именные функции, инструкция def
Функция в python - объект, принимающий аргум', 'https://www.youtube.com/watch?v=3-eK0jCJpCA', '2015-12-23 02:33:11' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '16', '1', '3', 'Введение в JavaScript
Давайте посмотрим, что такого особенного в JavaScript, почему именно он, и как', 'https://www.youtube.com/watch?v=H6G63NKRSi8', '2015-12-23 02:41:27' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '17', '2', '3', 'Привет, мир!
В этой статье мы создадим простой скрипт и посмотрим, как он работает.
Тег SCRIPT
 
А п', 'https://www.youtube.com/watch?v=5JEkiHHUOFs', '2015-12-23 02:43:22' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '18', '3', '3', 'Основные операторы
Для работы с переменными, со значениями, JavaScript поддерживает все стандартные ', 'https://www.youtube.com/watch?v=-GWOP5JdPpo', '2015-12-23 02:47:52' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '19', '4', '3', 'Переменные
В зависимости от того, для чего вы делаете скрипт, понадобится работать с информацией.
Ес', 'https://www.youtube.com/watch?v=t19W25ROjss', '2015-12-23 02:49:28' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '20', '5', '3', 'Числа
Все числа в JavaScript, как целые так и дробные, имеют тип Number и хранятся в 64-битном форма', 'https://www.youtube.com/watch?v=0VbK_WPgZmQ', '2015-12-23 02:50:59' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '21', '1', '4', 'Основы программирования на языке Java
Общие сведения о программировании
Программирование— это процес', 'https://www.youtube.com/watch?v=wGWZRAAvzkU', '2015-12-23 02:52:26' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '22', '2', '4', 'Установка среды', 'https://www.youtube.com/watch?v=siIu37UvaYM', '2015-12-23 02:53:13' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '23', '3', '4', 'Методы

Методы в Java — это законченная последовательность действий (инструкций), направленных на ре', 'https://www.youtube.com/watch?v=qrBmQ_5Yen0', '2015-12-23 02:56:26' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '24', '4', '4', 'Потоки ввода/вывода и строки в Java
Для ввода данных используется класс Scanner из библиотеки пакето', 'https://www.youtube.com/watch?v=Mycfo_VCPjc', '2015-12-23 02:57:57' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '25', '5', '4', 'Наследование
Наследование является неотъемлемой частью Java. При использовании наследования вы говор', 'https://www.youtube.com/watch?v=MqCtP1VSIEQ', '2015-12-23 02:59:34' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '26', '1', '5', 'Введение', 'https://www.youtube.com/watch?v=wYnayqdP9Ck', '2015-12-23 21:44:48' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '27', '2', '5', 'Терминология

Баг (bug) — это отклонение фактического результата (actual result) от ожидаемого резул', 'https://www.youtube.com/watch?v=fo6djVEElQw', '2015-12-23 21:44:35' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '28', '3', '5', '', 'https://www.youtube.com/watch?v=o7skGBsaUm4', '2015-12-23 21:44:15' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '29', '4', '5', '', 'https://www.youtube.com/watch?v=IlwFD7gISOw', '2015-12-23 21:44:13' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '30', '5', '5', '', 'https://www.youtube.com/watch?v=q7hqFZHPwJI', '2015-12-23 21:44:09' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '31', '1', '6', '', 'https://www.youtube.com/watch?v=LuZO-81DUGw', '2015-12-23 21:56:48' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '32', '2', '6', 'Верстка главной страницы', 'https://www.youtube.com/watch?v=du_RXD3wXM8', '2015-12-23 21:54:40' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '33', '3', '6', 'Объединение блоков php + создание меню.', 'https://www.youtube.com/watch?v=jHvTbuRGtOw', '2015-12-23 21:55:39' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '34', '4', '6', 'Создание страницы со статьями', 'https://www.youtube.com/watch?v=Vp0p8o1jvk8', '2015-12-23 21:56:03' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '35', '5', '6', 'Ошибки верстки сайта', 'https://www.youtube.com/watch?v=CiWl3yJPcfA', '2015-12-23 21:50:52' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '36', '1', '7', 'Введение в платформу .NET FrameWork


В данной статье я постараюсь дать общие понятия платформы .NET', 'https://www.youtube.com/watch?v=L-yCb5hvrlY', '2015-12-23 22:01:12' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '37', '2', '7', 'Visual C# №2 Hello World! Visual Studio 2010', 'https://www.youtube.com/watch?v=AHkDr5IuaHY', '2015-12-23 22:05:02' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '38', '3', '7', 'Выражения
Выражение представляет собой последовательность из одного или нескольких операндов и от ну', 'https://www.youtube.com/watch?v=ITbNsv6T-rA', '2015-12-23 22:06:48' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '39', '4', '7', 'В C# имеются четыре различных вида циклов (for, while, do...while и foreach), позволяющие выполнять ', 'https://www.youtube.com/watch?v=F7vhF1xEjhE', '2015-12-23 22:17:39' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '40', '5', '7', 'Функции.
Вернемся к старой задаче - выводе данных о людях. У нас есть разные люди с данными в виде о', 'https://www.youtube.com/watch?v=4mqKURVlGIc
', '2015-12-23 22:17:27' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '41', '1', '8', 'Настройка среды', 'https://www.youtube.com/watch?v=e50Ix17MQa0&list=PL623796FBAE1FC845', '2015-12-23 22:18:47' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '42', '2', '8', 'О языке C++ - Особенности языка C++
Существенным критерием при разработке языка была простота. Там, ', 'https://www.youtube.com/watch?v=wpuhOZHFUoc&index=2&list=PL623796FBAE1FC845', '2015-12-23 22:19:34' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '43', '3', '8', 'Из школьного курса математики мы все знаем, что такое переменные. В программировании принципы доволь', 'https://www.youtube.com/watch?v=BiOkq5sy6kg&index=3&list=PL623796FBAE1FC845', '2015-12-23 22:21:19' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '44', '4', '8', 'Логика
Логика не (! - C++, отрицание):
      !true = false;
      !false = true;
Логика или (|| - C+', 'https://www.youtube.com/watch?v=s9Lu8beP7-E&list=PL623796FBAE1FC845&index=7', '2015-12-23 22:22:14' );
INSERT INTO `lessons`(`id`,`lesson`,`course_id`,`text`,`links_to_resources`,`created`) VALUES ( '45', '5', '8', 'Циклы
Иногда необходимо повторять одно и то же действие несколько раз подряд. Для этого используют ц', 'https://www.youtube.com/watch?v=nckpTrIImSA&index=10&list=PL623796FBAE1FC845', '2015-12-23 22:23:17' );
-- ---------------------------------------------------------


-- Dump data of "teachers" ---------------------------------
INSERT INTO `teachers`(`id`,`name`,`about`,`skills`,`phone`,`mail`,`skype`,`photo`,`created`,`surname`) VALUES ( '1', 'Daniil', 'teacher', 'PHP', '380984533312', 'bandydan@gmail.com', 'bandydan', 'bbb.png', '2015-12-22 20:59:22', 'Marynich' );
INSERT INTO `teachers`(`id`,`name`,`about`,`skills`,`phone`,`mail`,`skype`,`photo`,`created`,`surname`) VALUES ( '2', 'Andrey', 'teacher', 'JS', '2147483647', 'fff@i.ua', 'fff', 'fff.img', '2015-12-22 20:58:12', 'Kachur' );
INSERT INTO `teachers`(`id`,`name`,`about`,`skills`,`phone`,`mail`,`skype`,`photo`,`created`,`surname`) VALUES ( '3', 'Kiril', 'teacher', 'Java', '380', 'tonaro@gmail.com', 'tonaro', 'tonaro.jpg', '2015-12-23 01:57:52', 'Garkovenko' );
INSERT INTO `teachers`(`id`,`name`,`about`,`skills`,`phone`,`mail`,`skype`,`photo`,`created`,`surname`) VALUES ( '4', 'Sonya', 'teacher', 'Тестирование QA', '380', 'fiona@mail.ru
', 'fiona', 'fiona.png', '2015-12-23 01:58:11', 'Petrova' );
INSERT INTO `teachers`(`id`,`name`,`about`,`skills`,`phone`,`mail`,`skype`,`photo`,`created`,`surname`) VALUES ( '5', 'Evgeniy', 'teacher', 'Верстка WEB страниц', '380', 'najork@gmail.com', 'najork', 'najork.jpg', '2015-12-23 01:58:29', 'Sidorov' );
INSERT INTO `teachers`(`id`,`name`,`about`,`skills`,`phone`,`mail`,`skype`,`photo`,`created`,`surname`) VALUES ( '6', 'Vladimir', 'teacher', '.NET', '380', 'grevol@gmail.com', 'grevol', 'grevol.jpg', '2015-12-23 01:58:53', 'Ivanov' );
INSERT INTO `teachers`(`id`,`name`,`about`,`skills`,`phone`,`mail`,`skype`,`photo`,`created`,`surname`) VALUES ( '7', 'Sergey', 'teacher', 'С++', '380', 'serglok@gmail.com', 'serglok', 'serglok.jpg', '2015-12-23 01:58:59', 'Shepelko
' );
-- ---------------------------------------------------------


-- Dump data of "users" ------------------------------------
INSERT INTO `users`(`id`,`login`,`password`,`email`,`name`,`age`,`avatar`,`city`,`phone`,`date_register`,`level`,`surname`) VALUES ( '1', 'alenija', '12345', 'alenija23@gmail.com', 'Alona', '28', 'alenija.jpg', 'Kharkiv', '380967673', '2015-12-23 22:55:13', '3', 'Verzina' );
INSERT INTO `users`(`id`,`login`,`password`,`email`,`name`,`age`,`avatar`,`city`,`phone`,`date_register`,`level`,`surname`) VALUES ( '2', 'Kirill', '54321', 'kostichev.kirill@gmail.com', 'Kirill', '29', 'kirill.jpg', 'Kharkiv', '380955790', '2015-12-23 22:54:53', '4', 'Kostichev' );
INSERT INTO `users`(`id`,`login`,`password`,`email`,`name`,`age`,`avatar`,`city`,`phone`,`date_register`,`level`,`surname`) VALUES ( '3', 'Roma', '78785', 'Romz2000@gmail.com
', 'Roma', '26', 'Roma.jpg', 'Kharkiv', '380876675', '2015-12-24 23:33:14', '1', 'Dzyavgo' );
INSERT INTO `users`(`id`,`login`,`password`,`email`,`name`,`age`,`avatar`,`city`,`phone`,`date_register`,`level`,`surname`) VALUES ( '4', 'alex', '14752', 'alex@gmail.com', 'Aleksandr', '20', 'alex.png', 'Lviv', '380654545', '2015-12-24 23:31:19', '2', 'Petrash' );
-- ---------------------------------------------------------


-- Dump data of "courses" ----------------------------------
INSERT INTO `courses`(`course_name`,`price`,`duration`,`level`,`id`,`teacher_id`,`created`,`about`) VALUES ( 'PHP', '5500', '60', '2', '1', '1', '0000-00-00 00:00:00', '' );
INSERT INTO `courses`(`course_name`,`price`,`duration`,`level`,`id`,`teacher_id`,`created`,`about`) VALUES ( 'Phiton', '2000', '20', '1', '2', '1', '0000-00-00 00:00:00', '' );
INSERT INTO `courses`(`course_name`,`price`,`duration`,`level`,`id`,`teacher_id`,`created`,`about`) VALUES ( 'JavaScript', '3800', '60', '1', '3', '2', '0000-00-00 00:00:00', '' );
INSERT INTO `courses`(`course_name`,`price`,`duration`,`level`,`id`,`teacher_id`,`created`,`about`) VALUES ( 'Java', '4500', '60', '2', '4', '3', '2015-12-23 02:37:41', 'Основы объектно-ориентированного программирования (Java). Парадигмы и принципы в Java.
Основные понятия Java. Введение в платформу Java. JVM, JRE, JDK. Компиляция и запуск из консоли. Classpath. Eclipse IDE. SVN/Subclilpse.
Типы данных, литералы, преобразование между примитивными типами, оптимизация компилятора java.
Операции и операторы, приоритет, типы операндов в Java. Тип арифметического выражения в java. Массивы в java.
Классы в Java. Класс Object (основные методы). Уровни доступа в Java. Наследование, инкапсуляция, полиморфизм. Оператор instanceof. Преобразования между классами, массивами. Перегрузка, перекрытие и сокрытие методов в Java. Ключевые слова final, static. Класс Class (предназначение, способы получения). GC.
Абстрактные классы, интерфейсы, их отличие в Java. Спецификаторы элементов интерфейсов по умолчанию в java. Javadoc. Generics.
UML обзорно.
Исключения в Java try/catch/finally, throw/throws, checked/unchecked exceptions, yourown.
IO: cимвольные, байтовые потоки, Scanner, Formatter, IO: надстройки. Сериализация/десериализация в java.
Threads в Java: базовые понятия, основные методы, синхронизация, взаимодействие.
Коллекции в Java Иерархия java. Iterable/Iterator, Collection/List/Set/Queue.
Сравнение объектов в Java. Интерфейсы Comparable, Comparator. Методы hashCode, equals, compare/compare To.
Java and XML
JDBC
Java Web: HTTP, Tomcat, JSP, Servlets
Building, testing and other tools: Maven, Ant, Junit, TestNG, cobertura.
Методы get и post.
Основы HTML, XHTML, CSS.
Основы JavaScript, jQuery, AJAX.
Особенности программирования под Web.' );
INSERT INTO `courses`(`course_name`,`price`,`duration`,`level`,`id`,`teacher_id`,`created`,`about`) VALUES ( 'Тестирование QA', '3700', '40', '1', '5', '4', '2015-12-22 23:42:28', 'Что такое тестирование, как, когда и кому оно нужно.
Основные модели и методологии разработки программ. Где и когда начинается(и заканчивается) тестирование.
Современные методологии разработки программного обеспечения Agile(Scrum/XP/FDD/TDD/Kanban), RUP.
Виды/типы тестирования.
Что такое ошибки/баги. Типы багов.
Проектная документация: плохая и хорошая. Что с ней делать.
Тестовая документация и багтрекинг.
Что такое багтрекинг и для чего он нужен. Основные багтрекинговые системы и обязательные поля.
Тесты. Хорошие и плохие и почему так.
Классы эквивалентности и граничные значения. Применение в реальной жизни.
Разработка тестового покрытия. Разработаем собственный тест план.
Тестирование требований. Работа с заказчиком.
Автоматизация тестирования. Когда, зачем, почему и как.
Нагрузочное тестирование, тестирование уязвимости и TBD.' );
INSERT INTO `courses`(`course_name`,`price`,`duration`,`level`,`id`,`teacher_id`,`created`,`about`) VALUES ( 'Верстка WEB страниц', '4200', '35', '1', '6', '5', '2015-12-22 23:42:32', 'Основы Web-программирования. Установка и настройка ПО. Работа с Adobe Photoshop. Настройка рабочих инструментов.
Что такое HTML. Базовые теги HTML и их свойства по умолчанию.
Что такое CSS. Селекторы css.
Правила оформления проекта. Как писать читабельный код, сode style.
Принципы разметки страницы, понятие потока.
Выравнивание элементов float, layout, overflow.
Позиционирование элементов, position.
Выравнивание, display.
Базовые элементы страницы.
Верстка блока navigation.
Верстка блока drop-down menu.
Верстка блока pagination.
Верстка блока footer-at-bottom.
HTML5/CSS3.
Responsive markup (адаптивная верстка).
Frameworks: twitter bootstrap и другие.
Тестовый проект: responsive markup, pixel perfect.' );
INSERT INTO `courses`(`course_name`,`price`,`duration`,`level`,`id`,`teacher_id`,`created`,`about`) VALUES ( '.NET', '5200', '60', '2', '7', '6', '2015-12-22 23:42:35', 'Знакомство с платформой .NET
Начало работы с Visual Studio
Сборки пространства имён и типы данных
Основы CLR
Первое приложение и Метод \'Main\'
Примитивные целые типы данных
Примитивные дробные типы данных
Объявление и инициализация переменных
Булевский тип
Арифметические операции
Конструкции принятия решений
Логические операции
Битовые операции
Определение пользовательских методов класса
Ссылочные и размерные типы
Массивы
Итерационные конструкции
Строки
Обработка исключений
ООП в C#
Жизненный цикл объектов
Делегаты
События
Дополнительные возможности классов в C#
Интерфейсы обощения и коллекции' );
INSERT INTO `courses`(`course_name`,`price`,`duration`,`level`,`id`,`teacher_id`,`created`,`about`) VALUES ( 'С++', '6000', '65', '3', '8', '7', '2015-12-22 23:42:38', 'Установка ПО. Введение в С++
Типы данных, операции и функции в С++. Характеристики языка C++. Введение в синтаксис. Структура кода. Компилятор
Выполнение программы на C++. Стек вызовов. Указатели и массивы. Использование указателей. Ссылки. Динамическая память. Многомерные массивы. Строки и ввод-вывод.
Структуры и классы. Методы. Конструкторы и деструкторы. Объекты и классы. Модификаторы доступа. Константность. Конструктор копирования, присваивания. Класс массива.
Основы объектно-ориентированного программирования. Перегрузка. Виртуальные методы. Таблица виртуальных методов. Объектно-ориентированное программирование. Особенности наследования в C++.
Дополнительные возможности C++. Правила переопределения операторов. Умные указатели. Ключевые слова static и inline. Ключевое слово friend. Шаблон проектирования Singleton
Шаблоны функций. Специализация шаблонов.
Выполнение курсовой работы
' );
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


-- CREATE INDEX "lnk_Course_teachers_2" --------------------
CREATE INDEX `lnk_Course_teachers_2` USING BTREE ON `courses`( `teacher_id` );
-- ---------------------------------------------------------


-- CREATE LINK "lnk_Course_teachers" -----------------------
ALTER TABLE `courses`
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
	REFERENCES `courses`( `id` )
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
	REFERENCES `courses`( `id` )
	ON DELETE Cascade
	ON UPDATE Cascade;
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------



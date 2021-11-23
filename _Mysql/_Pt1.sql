#P1

MariaDB [(none)]> CREATE DATABASE iot CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| iot                |
| mysql              |
| performance_schema |
+--------------------+
4 rows in set (0.001 sec)

#P2

MariaDB [(none)]> CREATE USER 'rburgos'@'localhost' IDENTIFIED BY 'root';
Query OK, 0 rows affected (0.002 sec)

MariaDB [(none)]> GRANT ALL ON iot.* TO 'rburgos'@'localhost';
Query OK, 0 rows affected (0.001 sec)

MariaDB [(none)]> FLUSH PRIVILEGES
    -> ;
Query OK, 0 rows affected (0.001 sec)

MariaDB [(none)]> SHOW GRANTS FOR 'rburgos'@'localhost'
    -> ;
+----------------------------------------------------------------------------------------------------------------+
| Grants for rburgos@localhost                                                                                   |
+----------------------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO `rburgos`@`localhost` IDENTIFIED BY PASSWORD '*81F5E21E35407D884A6CD4A731AEBFB6AF209E1B' |
| GRANT ALL PRIVILEGES ON `iot`.* TO `rburgos`@`localhost`                                                       |
+----------------------------------------------------------------------------------------------------------------+
2 rows in set (0.000 sec)

MariaDB [(none)]> 

#P3
MariaDB [iot]> show tables;
Empty set (0.001 sec)

MariaDB [iot]> CREATE TABLE usuarios(
    -> id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    -> nombre varchar(100) NOT NULL,
    -> correo_electronico varchar(100) NOT NULL,
    -> contrasena varchar(100) NOT NULL,
    -> activo TINYINT NOT NULL DEFAULT 1,
    -> fecha_hora_creacion DATETIME NOT NULL);
Query OK, 0 rows affected (0.008 sec)

MariaDB [iot]> SHOW TABLES;
+---------------+
| Tables_in_iot |
+---------------+
| usuarios      |
+---------------+
1 row in set (0.001 sec)

MariaDB [iot]> describe usuarios;
+---------------------+--------------+------+-----+---------+----------------+
| Field               | Type         | Null | Key | Default | Extra          |
+---------------------+--------------+------+-----+---------+----------------+
| id                  | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre              | varchar(100) | NO   |     | NULL    |                |
| correo_electronico  | varchar(100) | NO   |     | NULL    |                |
| contrasena          | varchar(100) | NO   |     | NULL    |                |
| activo              | tinyint(4)   | NO   |     | 1       |                |
| fecha_hora_creacion | datetime     | NO   |     | NULL    |                |
+---------------------+--------------+------+-----+---------+----------------+
6 rows in set (0.003 sec)

MariaDB [iot]> 

#P4
MariaDB [iot]> show tables;
+---------------+
| Tables_in_iot |
+---------------+
| usuarios      |
+---------------+
1 row in set (0.001 sec)

MariaDB [iot]> CREATE TABLE(
    -> id INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
    -> nombre VARCHAR(50) NOT NULL,
    -> token VARCHAR(150) NOT NULL,
    -> fecha_hora_creacion DATETIME NOT NULL,
    -> usuario_id INT NOT NULL,
    -> FOREIGN KEY (usuario_id) REFERENCES usuarios (id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
to...' at line 1
MariaDB [iot]> CREATE TABLE dispositivos( id INT AUTO_INCREMENT NOT NULL PRIMARY KEY, nombre VARCHAR(50) NOT NULL, token VARCHAR(150) NOT NULL, fecha_hora_creacion DATETIME NOT NULL, usuario_
id INT NOT NULL, FOREIGN KEY (usuario_id) REFERENCES usuarios (id));
Query OK, 0 rows affected (0.011 sec)

MariaDB [iot]> show tables;
+---------------+
| Tables_in_iot |
+---------------+
| dispositivos  |
| usuarios      |
+---------------+
2 rows in set (0.001 sec)

MariaDB [iot]> 

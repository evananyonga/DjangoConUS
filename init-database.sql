-- Create project Database
CREATE DATABASE IF NOT EXISTS `djancondb`;

-- Create root user and grant them rights
CREATE USER 'mysql_user'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON *.* TO 'mysql_user'@'%';
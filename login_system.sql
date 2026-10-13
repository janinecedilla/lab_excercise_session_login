CREATE DATABASE IF NOT EXISTS login_system;
USE login_system;

CREATE TABLE IF NOT EXISTS users (
  id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  role ENUM('student','admin') NOT NULL DEFAULT 'student'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Default admin account (Username: admin | Password: admin123)
INSERT INTO users (id, username, password, role) VALUES
(1, 'admin', '$2y$10$MXSd58qxdq34zTUtFNccSe9lk4Pfxug4Ah9J2HXac6oKgEltQj/lS', 'admin')
ON DUPLICATE KEY UPDATE role = 'admin';
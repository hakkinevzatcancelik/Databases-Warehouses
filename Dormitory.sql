-- Create the students table.
CREATE TABLE students (
student_id INT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
deposit DECIMAL(10, 2) NOT NULL,
monthly_payment DECIMAL(10, 2) NOT NULL,
birth_date DATE NOT NULL,
gender VARCHAR(10) NOT NULL,
room_id INT,
FOREIGN KEY (room_id) REFERENCES rooms(room_id)
);

-- Create the rooms table.
CREATE TABLE rooms (
room_id INT PRIMARY KEY,
capacity INT NOT NULL,
floor INT NOT NULL
);

-- Create the visits table.
CREATE TABLE visits (
visit_id INT PRIMARY KEY,
student_id INT NOT NULL,
room_id INT NOT NULL,
check_in DATETIME NOT NULL,
check_out DATETIME,
FOREIGN KEY (student_id) REFERENCES students(student_id),
FOREIGN KEY (room_id) REFERENCES rooms(room_id)
);

-- Create the visitors table.
CREATE TABLE visitors (
visitor_id INT PRIMARY KEY,
student_id INT NOT NULL,
visit_id INT NOT NULL,
name VARCHAR(50) NOT NULL,
FOREIGN KEY (student_id) REFERENCES students(student_id),
FOREIGN KEY (visit_id) REFERENCES visits(visit_id)
);

-- Create the permissions table.
CREATE TABLE permissions (
permission_id INT PRIMARY KEY,
student_id INT NOT NULL,
permission_type VARCHAR(50) NOT NULL,
start_date DATE NOT NULL,
end_date DATE NOT NULL,
FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- Create the laundry table.
CREATE TABLE laundry (
laundry_id INT PRIMARY KEY,
student_id INT NOT NULL,
laundry_order DATETIME NOT NULL,
laundry_room_id INT,
FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- Create the postalar table.
CREATE TABLE postalar (
posta_id INT PRIMARY KEY,
student_id INT NOT NULL,
posta_teslim TINYINT(1) NOT NULL DEFAULT 0,
FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- Insert sample data into the rooms table (in a 9-story dormitory).
INSERT INTO rooms (room_id, capacity, floor) VALUES
(1, 2, 1),
(2, 2, 1),
(3, 2, 2),
(4, 2, 2),
(5, 2, 3),
(6, 2, 3),
(7, 2, 4),
(8, 2, 4),
(9, 2, 5),
(10, 2, 5);

-- Insert sample data into the laundry table (for 3 different laundry rooms).
INSERT INTO laundry (laundry_id, student_id, laundry_order, laundry_room_id) VALUES
(1, 1, '2023-06-16 10:00:00', 1),
(2, 2, '2023-06-17 14:30:00', 2),
(3, 3, '2023-06-18 09:00:00', 1),
(4, 4, '2023-06-19 11:45:00', 3),
(5, 5, '2023-06-20 13:15:00', 2);

-- Delete sample data from the students table.
DELETE FROM students;

-- Insert sample data into the students table.
INSERT INTO students (student_id, first_name, last_name, deposit, monthly_payment, birth_date, gender, room_id) VALUES
(1, 'John', 'Smith', 500.00, 250.00, '2000-05-10', 'Male', 1),
(2, 'Emma', 'Johnson', 600.00, 300.00, '2001-07-15', 'Female', 2),
(3, 'Michael', 'Williams', 550.00, 275.00, '1999-09-20', 'Male', 3),
(4, 'Olivia', 'Brown', 450.00, 225.00, '2002-03-12', 'Female', 4),
(5, 'James', 'Jones', 550.00, 275.00, '1998-11-05', 'Male', 5),
(6, 'Sophia', 'Davis', 500.00, 250.00, '2001-09-30', 'Female');
(7, 'William', 'Miller', 600.00, 300.00, '2000-06-25', 'Male', 7),
(8, 'Ava', 'Wilson', 450.00, 225.00, '1999-12-18', 'Female', 8),
(9, 'Benjamin', 'Taylor', 550.00, 275.00, '2003-02-08', 'Male', 9),
(10, 'Mia', 'Anderson', 500.00, 250.00, '2001-04-02', 'Female', 10),
(11, 'Alexander', 'Thomas', 600.00, 300.00, '2000-08-14', 'Male', 11),

-- Room change
UPDATE students SET room_id = 8 WHERE student_id = 6;

-- Cancel laundry order
DELETE FROM laundry WHERE laundry_id = 3;

-- Update posta status
UPDATE postalar SET posta_teslim = 1 WHERE posta_id = 2;

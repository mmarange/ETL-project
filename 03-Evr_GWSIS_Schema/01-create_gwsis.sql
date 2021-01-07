-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema gwsis
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS gwsis ;

-- -----------------------------------------------------
-- Schema gwsis
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS gwsis DEFAULT CHARACTER SET latin1 ;
USE gwsis ;

-- -----------------------------------------------------
-- Table gwsis.course
-- -----------------------------------------------------
DROP TABLE IF EXISTS gwsis.course ;

CREATE TABLE IF NOT EXISTS gwsis.course (
  ID_Course INT(11) NOT NULL AUTO_INCREMENT,
  CourseCode VARCHAR(20) NOT NULL,
  CourseName VARCHAR(50) NOT NULL,
  CreditHours INT(11) NULL DEFAULT NULL,
  BootCampCourse TINYINT(1) NULL DEFAULT '0',
  PRIMARY KEY (ID_Course))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table gwsis.class
-- -----------------------------------------------------
DROP TABLE IF EXISTS gwsis.class ;

CREATE TABLE IF NOT EXISTS gwsis.class (
  ID_Class INT(11) NOT NULL AUTO_INCREMENT,
  ID_Course INT(11) NOT NULL,
  Section VARCHAR(20) NULL DEFAULT NULL,
  StartDate DATE NULL DEFAULT NULL,
  EndDate DATE NULL DEFAULT NULL,
  PRIMARY KEY (ID_Class),
  INDEX FK_Class_Course (ID_Course ASC),
  CONSTRAINT FK_Class_Course
    FOREIGN KEY (ID_Course)
    REFERENCES gwsis.course (ID_Course))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table gwsis.student
-- -----------------------------------------------------
DROP TABLE IF EXISTS gwsis.student ;

CREATE TABLE IF NOT EXISTS gwsis.student (
  ID_Student INT(11) NOT NULL AUTO_INCREMENT,
  StudentID VARCHAR(16) NOT NULL,
  LastName VARCHAR(24) NOT NULL,
  FirstName VARCHAR(24) NOT NULL,
  MiddleName VARCHAR(24) NULL DEFAULT NULL,
  BirthDate DATE NULL DEFAULT NULL,
  Gender CHAR(1) NULL DEFAULT NULL,
  PRIMARY KEY (ID_Student))
ENGINE = InnoDB
AUTO_INCREMENT = 33
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table gwsis.classparticipant
-- -----------------------------------------------------
DROP TABLE IF EXISTS gwsis.classparticipant ;

CREATE TABLE IF NOT EXISTS gwsis.classparticipant (
  ID_ClassParticipant INT(11) NOT NULL AUTO_INCREMENT,
  ID_Student INT(11) NOT NULL,
  ID_Class INT(11) NOT NULL,
  StartDate DATE NULL DEFAULT NULL,
  EndDate DATE NULL DEFAULT NULL,
  PRIMARY KEY (ID_ClassParticipant),
  INDEX FK_Class_CP (ID_Class ASC),
  INDEX FK_Student_CP (ID_Student ASC),
  CONSTRAINT FK_Class_CP
    FOREIGN KEY (ID_Class)
    REFERENCES gwsis.class (ID_Class),
  CONSTRAINT FK_Student_CP
    FOREIGN KEY (ID_Student)
    REFERENCES gwsis.student (ID_Student))
ENGINE = InnoDB
AUTO_INCREMENT = 31
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table gwsis.staff
-- -----------------------------------------------------
DROP TABLE IF EXISTS gwsis.staff ;

CREATE TABLE IF NOT EXISTS gwsis.staff (
  ID_Staff INT(11) NOT NULL AUTO_INCREMENT,
  EmployeeID VARCHAR(16) NOT NULL,
  LastName VARCHAR(24) NOT NULL,
  FirstName VARCHAR(24) NOT NULL,
  MiddleName VARCHAR(24) NULL DEFAULT NULL,
  BirthDate DATE NULL DEFAULT NULL,
  PRIMARY KEY (ID_Staff))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table gwsis.staffassignment
-- -----------------------------------------------------
DROP TABLE IF EXISTS gwsis.staffassignment ;

CREATE TABLE IF NOT EXISTS gwsis.staffassignment (
  ID_StaffAssignment INT(11) NOT NULL AUTO_INCREMENT,
  ID_Staff INT(11) NOT NULL,
  ID_Class INT(11) NOT NULL,
  Role VARCHAR(45) NULL DEFAULT NULL,
  StartDate DATE NULL DEFAULT NULL,
  EndDate DATE NULL DEFAULT NULL,
  PRIMARY KEY (ID_StaffAssignment),
  INDEX FK_Class_SA_idx (ID_Class ASC),
  INDEX FK_Staff_SA_idx (ID_Staff ASC),
  CONSTRAINT FK_Class_SA 
    FOREIGN KEY (ID_Class)
    REFERENCES gwsis.class (ID_Class)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT FK_Staff_SA
    FOREIGN KEY (ID_Staff)
    REFERENCES gwsis.staff (ID_Staff)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = latin1;

USE gwsis ;

-- -----------------------------------------------------
-- Placeholder table for view gwsis.all_student_enrollment
-- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS gwsis.all_student_enrollment (CourseName INT, Section INT, InstructorName INT, StudentFullName INT, EnrollmentStartDate INT, EnrollmentEndDate INT);

-- -----------------------------------------------------
-- Placeholder table for view gwsis.classes_with_current_student_count
-- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS gwsis.classes_with_current_student_count (CourseCode INT, CourseName INT, Section INT, EmployeeID INT, InstructorName INT, StudentCount INT);

-- -----------------------------------------------------
-- procedure enroll_student
-- -----------------------------------------------------

USE gwsis;
DROP procedure IF EXISTS gwsis.enroll_student;

DELIMITER $$
USE gwsis$$
CREATE PROCEDURE enroll_student(
	StudentID_in varchar(45),
    CourseCode_in varchar(45),
    Section_in varchar(45),
    StartDate_in date
)
BEGIN

DECLARE ID_Student_out int;
DECLARE ID_Class_out int;

SET ID_Student_out = (SELECT ID_Student FROM Student WHERE StudentID = StudentID_in);
SELECT ID_Class INTO ID_Class_out FROM Class c INNER JOIN COURSE co ON c.ID_Course = co.ID_Course WHERE CourseCode = CourseCode_in AND Section = Section_in;

INSERT INTO ClassParticipant(ID_Student, ID_Class, StartDate)
VALUES (ID_Student_out, ID_Class_out, StartDate_in);

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure terminate_all_class_enrollment
-- -----------------------------------------------------

USE gwsis;
DROP procedure IF EXISTS gwsis.terminate_all_class_enrollment;

DELIMITER $$
USE gwsis$$
CREATE PROCEDURE terminate_all_class_enrollment(CourseName_in varchar(45), Section_in varchar(45))
BEGIN

UPDATE classparticipant
SET EndDate = NOW()
WHERE ID_Class = 
(
	SELECT ID_Class
    FROM Class c
    INNER JOIN Course co 
    ON C.id_Course = co.ID_Course
    WHERE Section = Section_in
    AND co.CourseDescription = CourseName_in
);

END$$

DELIMITER ;

-- -----------------------------------------------------
-- View gwsis.all_student_enrollment
-- -----------------------------------------------------
DROP VIEW IF EXISTS gwsis.all_student_enrollment ;
DROP TABLE IF EXISTS gwsis.all_student_enrollment;
USE gwsis;
CREATE VIEW gwsis.all_student_enrollment AS select co.CourseName AS CourseName,c.Section AS Section,concat(st.LastName,', ',st.FirstName) AS InstructorName,concat(s.LastName,', ',s.FirstName) AS StudentFullName,cp.StartDate AS EnrollmentStartDate,cp.EndDate AS EnrollmentEndDate from (((((gwsis.classparticipant cp join gwsis.student s on((cp.ID_Student = s.ID_Student))) join gwsis.class c on((cp.ID_Class = c.ID_Class))) join gwsis.course co on((c.ID_Course = co.ID_Course))) join gwsis.staffassignment sa on(((c.ID_Class = sa.ID_Class) and (sa.Role = 'Instructor')))) join gwsis.staff st on((sa.ID_Staff = st.ID_Staff))) order by concat(s.LastName,', ',s.FirstName);

-- -----------------------------------------------------
-- View gwsis.classes_with_current_student_count
-- -----------------------------------------------------
DROP VIEW IF EXISTS gwsis.classes_with_current_student_count ;
DROP TABLE IF EXISTS gwsis.classes_with_current_student_count;
USE gwsis;
CREATE VIEW gwsis.classes_with_current_student_count AS select co.CourseCode AS CourseCode,co.CourseName AS CourseName,cl.Section AS Section,s.EmployeeID AS EmployeeID,concat(s.LastName,', ',s.FirstName) AS InstructorName,count(cp.ID_ClassParticipant) AS StudentCount from ((((gwsis.classparticipant cp left join gwsis.class cl on((cp.ID_Class = cl.ID_Class))) left join gwsis.course co on((cl.ID_Class = co.ID_Course))) left join gwsis.staffassignment sa on(((cl.ID_Class = sa.ID_Class) and (sa.Role = 'Instructor')))) left join gwsis.staff s on((sa.ID_Staff = s.ID_Staff))) where (now() between cp.StartDate and ifnull(cp.EndDate,(now() + 1))) group by co.CourseCode,co.CourseName,cl.Section;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

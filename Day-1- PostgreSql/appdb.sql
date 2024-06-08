CREATE DATABASE appdb;

--Create table Country
CREATE TABLE Country(
	Id serial PRIMARY KEY,
	CountryName character varying(100) NOT NULL 
);

--Create table City
CREATE TABLE City(
	Id serial PRIMARY KEY,
	CountryId serial NOT NULL,
	CityName character varying(100) NOT NULL
);

--Create table MissionApplication
CREATE TABLE MissionApplication(
	Id serial PRIMARY KEY,
	MissionID serial NOT NULL,
	UserId serial NOT NULL,
	AppliedDate timestamp with time zone NOT NULL,
	Status boolean,
	Sheet serial
);

--Create table Missions
CREATE TABLE Missions(
	Id serial PRIMARY KEY,
	MissionTitle character varying(100) NOT NULL,
	MissionDescription character varying(100) NOT NULL,
	MissionOrganisationName character varying(100) NOT NULL,
	MissionOrganisationDetail character varying(100) NOT NULL,
	CountryId serial NOT NULL,
	CityId serial NOT NULL,
	StartDate DATE NOT NULL,
	EndDate DATE,
	MissionType character varying(100) NOT NULL,
	TotalSheets serial,
	RegistrationDeadLine DATE NOT NULL,
	MissionThemeId character varying(100) NOT NULL,
	MissionSkillId character varying(100) NOT NULL,
	MissionImages character varying(100) NOT NULL,
	MissionDocuments character varying(100) NOT NULL,
	MissionAvailability character varying(100) NOT NULL,
	MissionVideoUrl character varying(100) NOT NULL
);

--Create table MissionSkill
CREATE TABLE MissionSkill(
	Id serial PRIMARY KEY,
	SkillName character varying(100) NOT NULL,
	Status character varying(100) NOT NULL
);

--Create table MissionTheme
CREATE TABLE MissionTheme(
	Id serial PRIMARY KEY,
	ThemeName character varying(100) NOT NULL,
	Status character varying(100) NOT NULL
);

--Create table User
CREATE TABLE Users(
	Id serial PRIMARY KEY,
	FirstName character varying(100) NOT NULL,
	LastName character varying(100) NOT NULL,
	PhoneNumber character varying(100) NOT NULL,
	EmailAddress character varying(100) NOT NULL,
	UserType character varying(100) NOT NULL,
	Password character varying(100) NOT NULL
);

--Create table UserDetail
CREATE TABLE UserDetail(
	Id serial PRIMARY KEY,
	UserId serial NOT NULL,
	Name character varying(100) NOT NULL,
	Surname character varying(100) NOT NULL,
	EmployeeId character varying(100) NOT NULL,
	Manager character varying(100) NOT NULL,
	Title character varying(100) NOT NULL,
	Department character varying(100) NOT NULL,
	MyProfile character varying(100) NOT NULL,
	WhyIVolunteer character varying(250) NOT NULL,
	CountryId serial NOT NULL,
	CityId serial NOT NULL,
	Availability character varying(100) NOT NULL,
	LinkdInUrl character varying(250) NOT NULL,
	MySkills character varying(250) NOT NULL,
	UserImage character varying(100),
	Status BOOLEAN NOT NULL
);

--Create table UserSkills
CREATE TABLE UserSkills(
	Id serial PRIMARY KEY,
	Skill character varying(250) NOT NULL,
	UserId serial NOT NULL
);

SELECT * from Country;
SELECT * from City;
SELECT * from MissionApplication;
SELECT * from Missions;
SELECT * from MissionSkill;
SELECT * from MissionTheme;
SELECT * from Users;
SELECT * from UserDetail;
SELECT * from UserSkills;

-- Drop Table
DROP TABLE IF EXISTS Country;
DROP TABLE IF EXISTS Users;

-- Insert Single Customer Record
INSERT INTO Users(FirstName, LastName, PhoneNumber, EmailAddress, UserType, Password)
	VALUES ('Aditya','Panchal','1234567890', 'adipanchal@gmail.com', 'Active', 'password'),
		   ('Tony','Stark','9876543210', 'tony@gmail.com', 'Active', 'passwd'),
		   ('Peter','Potter','4684313165', 'peter@gmail.com', 'Active', 'peter123');
SELECT * from Users;

-- Delete Statement
DELETE FROM Users
WHERE Id = 2;

-- Update Statement
UPDATE Users
SET LastName='Parker', 
EmailAddress='peterparker@gmail.com'
WHERE Id = 3;
SELECT * FROM Users;


DROP TABLE Teams;

CREATE TABLE Teams 
(
teamID INT AUTO_INCREMENT,
teamName VARCHAR(30),
startYear INT,
ownerName VARCHAR(30),
GMName VARCHAR(30),
coachName VARCHAR(30),
startQB VARCHAR(30),
officeAddress VARCHAR(30),
city VARCHAR(30),
state VARCHAR(30),
zipCode INT,
phone VARCHAR(30),
overallRecord VARCHAR(30),
confRecord VARCHAR(30),
PRIMARY KEY(teamID)
);

INSERT INTO Teams (teamName, startYear, ownerName, GMName, coachName, startQB, officeAddress, city, state, zipCode, phone, overallRecord, confRecord) 
VALUES ('Seattle Seahawks', 1974, 'Paul Allen', 'John Schneider', 'Pete Carroll', 'Russell Wilson', '800 Occidental Ave S', 'Seattle', 'WA', 98134, '(206)381-7555', 'W6-L3', 'W4-L2');

INSERT INTO Teams (teamName, startYear, ownerName, GMName, coachName, startQB, officeAddress, city, state, zipCode, phone, overallRecord, confRecord) 
VALUES ('New England Patriots', 1960, 'Robert Kraft', 'Bill Belichick', 'Bill Belichick', 'Tom Brady', '1 Patriot Pl', 'Foxborough', 'MA', 02035, '(508)543-8200', 'W7-L2', 'W7-L2');

INSERT INTO Teams (teamName, startYear, ownerName, GMName, coachName, startQB, officeAddress, city, state, zipCode, phone, overallRecord, confRecord) 
VALUES ('Pittsburgh Steelers', 1933, 'The Rooney Family','Kevin Colbert', 'Mike Tomlin', 'Ben Roethlisberger', '100 Art Rooney Ave', 'Pittsburgh', 'PA', 15212, '(412)697-7150', 'W8-L2', 'W8-L2');

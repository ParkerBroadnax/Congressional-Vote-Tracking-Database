use houseofbills; 
CREATE TABLE state (	
    state_name          VARCHAR(50)          PRIMARY KEY,
    region            TEXT
);

CREATE TABLE house_congressperson (	
    congressperson_id INT          PRIMARY KEY          AUTO_INCREMENT,
    cp_name 	          TEXT	       NOT NULL,	
    district	      TEXT         NOT NULL,
    startDate	      DATETIME	   NOT NULL,
    endDate           DATETIME     ,
    political_party   TEXT         NOT NULL,
    state			  VARCHAR(50)		   NOT NULL,
    FOREIGN KEY (state) REFERENCES state(state_name)
);

CREATE TABLE bill (	
    bill_id           INT          PRIMARY KEY          AUTO_INCREMENT,
    name 	          TEXT	       NOT NULL,	
    dateOfVote	      INT          NOT NULL,
    PassedorFailed	  INT	       NOT NULL,
    sponsor         INT    NOT NULL,
    FOREIGN KEY (sponsor) REFERENCES house_congressperson(congressperson_id)
);

CREATE TABLE votes (	
    congressperson_id INT 		  NOT NULL,
    committee 	      TEXT	       NOT NULL,	
    committee_votes	  INT          NOT NULL,
    house_votes	      INT	       NOT NULL,
    senate_votes      DATETIME     NOT NULL,
    political_party   TEXT,
    bill_id			  INT			NOT NULL,
    FOREIGN KEY (congressperson_id) REFERENCES house_congressperson(congressperson_id),
    FOREIGN KEY (bill_id) REFERENCES bill(bill_id)
);

INSERT INTO state values('Alaska','West');
INSERT INTO state values('Alabama','South');
INSERT INTO state values('Arkansas','South');
INSERT INTO state values('Arizona','West');
INSERT INTO state values('California','West');
INSERT INTO state values('Colorado','West');
INSERT INTO state values('Connecticut','Northeast');
INSERT INTO state values('District of Columbia','South');
INSERT INTO state values('Delaware','South');
INSERT INTO state values('Florida','South');
INSERT INTO state values('Georgia','South');
INSERT INTO state values('Hawaii','West');
INSERT INTO state values('Iowa','Midwest');
INSERT INTO state values('Idaho','West');
INSERT INTO state values('Illinois','Midwest');
INSERT INTO state values('Indiana','Midwest');
INSERT INTO state values('Kansas','Midwest');
INSERT INTO state values('Kentucky','South');
INSERT INTO state values('Louisiana','South');
INSERT INTO state values('Massachusetts','Northeast');
INSERT INTO state values('Maryland','South');
INSERT INTO state values('Maine','Northeast');
INSERT INTO state values('Michigan','Midwest');
INSERT INTO state values('Minnesota','Midwest');
INSERT INTO state values('Missouri','Midwest');
INSERT INTO state values('Mississippi','South');
INSERT INTO state values('Montana','West');
INSERT INTO state values('North Carolina','South');
INSERT INTO state values('North Dakota','Midwest');
INSERT INTO state values('Nebraska','Midwest');
INSERT INTO state values('New Hampshire','Northeast');
INSERT INTO state values('New Jersey','Northeast');
INSERT INTO state values('New Mexico','West');
INSERT INTO state values('Nevada','West');
INSERT INTO state values('New York','Northeast');
INSERT INTO state values('Ohio','Midwest');
INSERT INTO state values('Oklahoma','South');
INSERT INTO state values('Oregon','West');
INSERT INTO state values('Pennsylvania','Northeast');
INSERT INTO state values('Rhode Island','Northeast');
INSERT INTO state values('South Carolina','South');
INSERT INTO state values('South Dakota','Midwest');
INSERT INTO state values('Tennessee','South');
INSERT INTO state values('Texas','South');
INSERT INTO state values('Utah','West');
INSERT INTO state values('Virginia','South');
INSERT INTO state values('Vermont','Northeast');
INSERT INTO state values('Washington','West');
INSERT INTO state values('Wisconsin','Midwest');
INSERT INTO state values('West Virginia','South');
INSERT INTO state values('Wyoming','West');

INSERT INTO house_congressperson (cp_name, district, startdate, enddate, political_party, state)
 VALUES ('Carolyn Bourdeaux','7th','03-01-21',NULL,'Democratic','Georgia')




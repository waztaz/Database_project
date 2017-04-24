DROP DATABASE soccer;

CREATE DATABASE soccer;

USE soccer;

CREATE TABLE Nationality (
  Country_name VARCHAR(45),
  Continent VARCHAR(45),
  PRIMARY KEY (Country_name)
  );


CREATE TABLE League (
  League_Name VARCHAR(45),
  Number_of_clubs INT,
  Country VARCHAR(45),
  PRIMARY KEY (League_Name, Country),
  FOREIGN KEY (Country) REFERENCES Nationality (Country_name)
    );



CREATE TABLE Stadium (
  Stadium_name VARCHAR(45),
  Capacity INT,
  Country VARCHAR(45),
  PRIMARY KEY (Stadium_name),
FOREIGN KEY (Country) REFERENCES Nationality (Country_name)

  );
  
    CREATE TABLE Manager (
  Manager_name VARCHAR (45),
    Country VARCHAR(45),
    PRIMARY KEY (Manager_Name, Country),
      FOREIGN KEY (Country) REFERENCES Nationality (Country_name)
    );
    


CREATE TABLE Club (
  Club_name VARCHAR(45),
  Manager VARCHAR(45),
  President VARCHAR(45),
  League_Name VARCHAR(45),
  Position INT,
  Stadium VARCHAR(45),
  PRIMARY KEY (Club_name, League_Name),
  FOREIGN KEY (League_Name) REFERENCES League (League_Name),
  FOREIGN KEY (Stadium) REFERENCES Stadium (Stadium_name),
    FOREIGN KEY (Manager) REFERENCES Manager (Manager_name)

  );


CREATE TABLE Players (
  Player_name VARCHAR(45),
  Preferred_position VARCHAR(3),
  Country VARCHAR(45),
    Player_status VARCHAR(45),
      Club VARCHAR(45),
  PRIMARY KEY (Player_name, Country),
  FOREIGN KEY (Country) REFERENCES Nationality (Country_name),
FOREIGN KEY (Club) REFERENCES Club (Club_name)
  );
  
  
  INSERT INTO Nationality VALUES ('France', 'Europe');
  INSERT INTO Nationality VALUES ('Argentina', 'South America');
  INSERT INTO Nationality VALUES ('Italy', 'Europe');
  INSERT INTO Nationality VALUES ('Brazil', 'South America');
  INSERT INTO Nationality VALUES ('England', 'Europe');
  INSERT INTO Nationality VALUES ('Portugal', 'Europe');
    INSERT INTO Nationality VALUES ('Spain', 'Europe');
        INSERT INTO Nationality VALUES ('Germany', 'Europe');
                INSERT INTO Nationality VALUES ('Wales', 'Europe');



	INSERT INTO League VALUES ('La Liga', 20,'Spain');
	INSERT INTO League VALUES ('Ligue 1',  20, 'France');
	INSERT INTO League VALUES ('EPL', 20, 'England');
    
	INSERT INTO Stadium VALUES ('San Siro', 123,'England');
	INSERT INTO Stadium VALUES ('Anfield',342, 'England');
	INSERT INTO Stadium VALUES ('Old Trafford', 123,'England');
	INSERT INTO Stadium VALUES ('Emirates',345, 'England');
	INSERT INTO Stadium VALUES ('Stanford Bridge',345, 'England');
	INSERT INTO Stadium VALUES ('Nou Camp',345, 'Spain');
	INSERT INTO Stadium VALUES ('Bernabau',345, 'Spain');

	INSERT INTO Manager VALUES ('Arsene Wenger','France');
	INSERT INTO Manager VALUES ('Conte','Italy');
	INSERT INTO Manager VALUES ('Jurgen Klopp','Germany');
	INSERT INTO Manager VALUES ('Jose Mourinho','Portugal');
	INSERT INTO Manager VALUES ('Zinedine Zidane','France');
	INSERT INTO Manager VALUES ('Luis Enrique','Spain');


	INSERT INTO Club VALUES ('Arsenal','Arsene Wenger', 'Rob Thompson','EPL', 5, 'Emirates');
	INSERT INTO Club VALUES ('Chelsea','Conte', 'Roman  Abramovich','EPL', 1, 'Stanford Bridge');
	INSERT INTO Club VALUES ('Liverpool','Jurgen Klopp', 'Fenway Sports Group','EPL', 4, 'Anfield');
	INSERT INTO Club VALUES ('Manchester United','Jose Mourinho', 'Malcolm Glazer','EPL', 2, 'Emirates');
	INSERT INTO Club VALUES ('Barcelona','Luis Enrique', 'Qatar Foundation','La Liga', 2, 'Nou Camp');
	INSERT INTO Club VALUES ('Real Madrid','Zinedine Zidane', 'Perez','La Liga', 1, 'Bernabau');

	INSERT INTO Players VALUES ('Cristiano Ronaldo','CF', 'Portugal', 'Current','Real Madrid');
	INSERT INTO Players VALUES ('Lionel Messi','CF', 'Argentina', 'Current','Barcelona');
	INSERT INTO Players VALUES ('Steven Gerrard','CM', 'England', 'Retired','Liverpool');
	INSERT INTO Players VALUES ('Ryan Giggs','CM', 'Wales', 'Retired','Manchester United');
	INSERT INTO Players VALUES ('Sergio Ramos','CB', 'Spain', 'Current','Real Madrid');
	INSERT INTO Players VALUES ('Marcelo','RB', 'Brazil', 'Current','Real Madrid');
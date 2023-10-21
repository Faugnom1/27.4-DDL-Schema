-- Teams Table
CREATE TABLE Teams (
    TeamID INT PRIMARY KEY,
    TeamName VARCHAR(255),
    CoachName VARCHAR(255),
    HomeStadium VARCHAR(255)
);

-- Players Table
CREATE TABLE Players (
    PlayerID INT PRIMARY KEY,
    PlayerName VARCHAR(255),
    TeamID INT,
    FOREIGN KEY (TeamID) REFERENCES Teams(TeamID)
);

-- Goals Table
CREATE TABLE Goals (
    GoalID INT PRIMARY KEY,
    GameID INT,
    PlayerID INT,
    GoalTime TIME,
    FOREIGN KEY (GameID) REFERENCES Matches(MatchID),
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID)
);

-- Referees Table
CREATE TABLE Referees (
    RefereeID INT PRIMARY KEY,
    RefereeName VARCHAR(255)
);

-- Matches Table
CREATE TABLE Matches (
    MatchID INT PRIMARY KEY,
    HomeTeamID INT,
    AwayTeamID INT,
    MatchDateTime DATETIME,
    Result VARCHAR(255),
    FOREIGN KEY (HomeTeamID) REFERENCES Teams(TeamID),
    FOREIGN KEY (AwayTeamID) REFERENCES Teams(TeamID)
);

-- Seasons Table
CREATE TABLE Seasons (
    SeasonID INT PRIMARY KEY,
    LeagueName VARCHAR(255),
    StartDate DATE,
    EndDate DATE
);

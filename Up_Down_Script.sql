-- Create DB
if not exists(select * from sys.databases where name='soccer')
    create database soccer
GO

use soccer
GO

--Down
IF EXISTS (Select * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_bids_bid_player_id')
    ALTER TABLE bids DROP CONSTRAINT fk_bids_bid_player_id

IF EXISTS (Select * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_bids_bid_team_id')
    ALTER TABLE bids DROP CONSTRAINT fk_bids_bid_team_id  

drop table if exists bids
GO

IF EXISTS (Select * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_matches_match_stadium_id')
    ALTER TABLE matches DROP CONSTRAINT fk_matches_match_stadium_id

IF EXISTS (Select * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_matches_match_team1_id')
    ALTER TABLE matches DROP CONSTRAINT fk_matches_match_team1_id

IF EXISTS (Select * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_matches_match_team2_id')
    ALTER TABLE matches DROP CONSTRAINT fk_matches_match_team2_id

drop TABLE if exists matches
GO

IF EXISTS (Select * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_players_player_team_id')
    ALTER TABLE players DROP CONSTRAINT fk_players_player_team_id

IF EXISTS (Select * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_players_player_zipcode')
    ALTER TABLE players DROP CONSTRAINT fk_players_player_zipcode

drop table if exists players
go

IF EXISTS (Select * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_teams_team_stadium_id')
    ALTER TABLE teams DROP CONSTRAINT fk_teams_team_stadium_id

IF EXISTS (Select * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_teams_team_manager_id')
    ALTER TABLE teams DROP CONSTRAINT fk_teams_team_manager_id

IF EXISTS (Select * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_teams_team_league_id')
    ALTER TABLE teams DROP CONSTRAINT fk_teams_team_league_id

IF EXISTS (Select * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_teams_team_zipcode')
    ALTER TABLE teams DROP CONSTRAINT fk_teams_team_zipcode


drop TABLE if exists teams
GO

IF EXISTS (Select * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_stadiums_stadium_zipcode')
    ALTER TABLE stadiums DROP CONSTRAINT fk_stadiums_stadium_zipcode


DROP TABLE IF EXISTS stadiums
GO 

IF EXISTS (Select * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_leagues_league_sponsers')
    ALTER TABLE leagues DROP CONSTRAINT fk_leagues_league_sponsers

drop table if exists leagues
GO

DROP TABLE IF EXISTS managers
GO

drop table if exists [address]
GO

DROP TABLE IF EXISTS sponsors
GO

DROP TABLE IF EXISTS positions
GO

DROP TABLE IF EXISTS formations
GO


--UP 


--Lookup tables
CREATE TABLE formations(
    formation_type varchar(15) NOT NULL
)

ALTER TABLE formations
add constraint pk_formations_formation_type primary key(formation_type) 
 
CREATE TABLE positions(
    position_type VARCHAR(15) NOT NULL
)
 
alter TABLE positions 
ADD CONSTRAINT pk_positions_position_type primary key(position_type)

CREATE TABLE sponsors(
    sponsor_name VARCHAR(50) NOT NULL
)

alter TABLE sponsors
add constraint pk_sponsors_sponsor_name primary key(sponsor_name)

CREATE TABLE [address](
    zipcode varchar(10) NOT NULL,
    city varchar(20) NOT NULL,
    [state] VARCHAR(20) NOT NULL,
    country VARCHAR(25) NOT NULL
)

alter table [address]
add constraint pk_address_zipcode primary key(zipcode)


--manager table
CREATE TABLE managers(
    manager_id INT IDENTITY(1,1) NOT NULL,   --primary key
    manager_firstname VARCHAR(25) NOT NULL,
    manager_lastname VARCHAR(25) NOT NULL,
    manager_email VARCHAR(50) NOT NULL,     --unique
    manager_rating VARCHAR(1),       -- check constraint (1 - 5 only)
    manager_debut_year VARCHAR(4),
    manager_default_formation VARCHAR(15)   --lookup table
)

--Primary Key
ALTER TABLE managers
ADD CONSTRAINT pk_managers_manager_id PRIMARY KEY (manager_id)

--Unique
ALTER TABLE managers
ADD CONSTRAINT u_managers_email Unique (manager_email)

--Check
ALTER TABLE managers 
ADD CONSTRAINT ck_managers_manager_rating CHECK (manager_rating between 1 AND 5)


CREATE TABLE leagues(
    league_id INT IDENTITY(1,1) NOT NULL,   --primary key
    league_name VARCHAR(25) NOT NULL,
    league_start_date DATE NOT NULL,
    league_end_date DATE NOT NULL,
    league_sponsors VARCHAR(50) NOT NULL,    --lookup table
    league_prizemoney MONEY NOT NULL,
    league_size SMALLINT NOT NULL,
    constraint pk_leagues_league_id primary key (league_id),
    constraint u_leagues_league_name unique (league_name)
)
alter table leagues 
    add constraint fk_leagues_league_sponsers foreign key (league_sponsors)
        references sponsors(sponsor_name)


--stadium table
CREATE TABLE stadiums(
    stadium_id INT IDENTITY(1,1) NOT NULL,   --primary key
    stadium_name VARCHAR(25) NOT NULL,    --unique
    stadium_email VARCHAR(50) NOT NULL,  --unique
    stadium_capacity INT,
    stadium_zipcode VARCHAR(10) NOT NULL  -- foreign key
)

--Primary Key
ALTER TABLE stadiums
ADD CONSTRAINT pk_stadiums_stadium_id PRIMARY KEY (stadium_id)

--Unique
ALTER TABLE stadiums
ADD CONSTRAINT u_stadiums_stadium_name Unique (stadium_name)

ALTER TABLE stadiums
ADD CONSTRAINT u_stadiums_stadium_email Unique (stadium_email)

--Foreign key
ALTER TABLE stadiums
ADD CONSTRAINT fk_stadiums_stadium_zipcode FOREIGN KEY (stadium_zipcode) REFERENCES [address](zipcode)



-- Teams table
CREATE TABLE teams(
    team_id INT IDENTITY(1,1) NOT NULL,   --primary key
    team_name VARCHAR(25) NOT NULL,      --unique
    team_email VARCHAR(50) NOT NULL,     --UNIQUE
    team_matches_played SMALLINT NOT NULL,    -- check constraint (equal to wins + losses + draws)
    team_wins SMALLINT NOT NULL,
    team_losses SMALLINT NOT NULL,
    team_draws SMALLINT NOT NULL,
    --team_leagues_played TINYINT NOT NULL, -- no of times the team has played in that league
    --team_leagues_won TINYINT NOT NULL,   -- no of times the team has won that league
    team_goals_scored SMALLINT NOT NULL,
    team_goals_conceded SMALLINT NOT NULL,
    team_points SMALLINT NOT NULL,     -- default constraint

    --foreign keys
    team_stadium_id INT NOT NULL,       
    team_manager_id INT NOT NULL,   
    team_league_id INT NOT NULL,
    --team_match_id INT NOT NULL,
    team_zipcode VARCHAR(10) NOT NULL    
)

--Primary Key
ALTER TABLE teams
ADD CONSTRAINT pk_teams_team_id PRIMARY KEY (team_id)

--Check
ALTER TABLE teams 
ADD CONSTRAINT ck_teams_team_matches_played CHECK (team_matches_played = team_wins + team_losses + team_draws)

--Unique
ALTER TABLE teams
ADD CONSTRAINT u_teams_team_name Unique (team_name)

ALTER TABLE teams
ADD CONSTRAINT u_teams_team_email Unique (team_email)

--Foreign Keys
ALTER TABLE teams
ADD CONSTRAINT fk_teams_team_stadium_id FOREIGN KEY (team_stadium_id) REFERENCES stadiums(stadium_id)

ALTER TABLE teams
ADD CONSTRAINT fk_teams_team_manager_id FOREIGN KEY (team_manager_id) REFERENCES managers(manager_id)

ALTER TABLE teams
ADD CONSTRAINT fk_teams_team_league_id FOREIGN KEY (team_league_id) REFERENCES leagues(league_id)

-- ALTER TABLE teams
-- ADD CONSTRAINT fk_teams_match FOREIGN KEY (team_match_id) REFERENCES matches(match_id)

ALTER TABLE teams
ADD CONSTRAINT fk_teams_team_zipcode FOREIGN KEY (team_zipcode) REFERENCES [address](zipcode)



--players table
CREATE TABLE players (
    player_id INT IDENTITY(1,1) NOT NULL,
    player_firstname VARCHAR(30) NOT NULL,
    player_lastname VARCHAR(30) NOT NULL,
    player_email VARCHAR(50) NOT NULL,     --unique
    player_age TINYINT NOT NULL,                   
    player_zipcode VARCHAR(10) NOT NULL,   -- foreign key
    player_position VARCHAR(15) NOT NULL,     -- Lookup table
    player_debut_year VARCHAR(4) NOT NULL,
    --player_career_length SMALLINT NOT NULL,     
    player_main_foot VARCHAR(5),                 -- check constraint (Left, Right)
    player_games_played SMALLINT NOT NULL, 
    player_goals_scored SMALLINT NOT NULL,
    player_fouls_committed SMALLINT NOT NULL,
    player_rating VARCHAR(1) NOT NULL,          -- check constraint (1 - 5 only)
    player_team_id int   -- foreign key
)

--Primary Key
ALTER TABLE players
ADD CONSTRAINT pk_players_player_id PRIMARY KEY (player_id)

--Check
ALTER TABLE players 
ADD CONSTRAINT ck_players_player_rating CHECK (player_rating between 1 AND 5)

ALTER TABLE players
ADD CONSTRAINT ck_players_player_main_foot CHECK (player_main_foot IN ('Left', 'Right'))

--Unique
ALTER TABLE players
ADD CONSTRAINT u_players_player_email Unique (player_email)

--Foreign Keys
ALTER TABLE players
ADD CONSTRAINT fk_players_player_team_id FOREIGN KEY (player_team_id) REFERENCES teams(team_id)

ALTER TABLE players
ADD CONSTRAINT fk_players_player_zipcode FOREIGN KEY (player_zipcode) REFERENCES [address](zipcode)



--matches
CREATE TABLE matches(
    match_id INT IDENTITY(1,1) NOT NULL,
    match_stadium_id INT NOT NULL,
    match_team1_id INT NOT NULL,
    match_team2_id INT NOT NULL,
    match_team1_score TINYINT NOT NULL,
    match_team2_score TINYINT NOT NULL,
    match_date_played DATETIME NOT NULL,
    match_attendance INT,
    constraint pk_matches_match_id primary key (match_id),
)
alter table matches 
    add constraint fk_matches_match_stadium_id foreign key (match_stadium_id)
        references stadiums(stadium_id) 
 
alter table matches 
    add constraint fk_matches_match_team1_id foreign key (match_team1_id)
        references teams(team_id)  
 
alter table matches 
    add constraint fk_matches_match_team2_id foreign key (match_team2_id)
        references teams(team_id)              
 

 
 
CREATE TABLE bids(
    bid_id INT IDENTITY(1,1) NOT NULL,
    bid_player_id INT NOT NULL,
    bid_team_id INT NOT NULL,
    bid_amount INT NOT NULL,
    bid_status varchar(10) NOT NULL
)

alter table bids
add constraint pk_bids_bid_id PRIMARY KEY (bid_id)

alter table bids 
    add constraint fk_bids_bid_player_id foreign key (bid_player_id)
        references players(player_id)     

alter table bids 
    add constraint fk_bids_bid_team_id foreign key (bid_team_id)
        references teams(team_id)     



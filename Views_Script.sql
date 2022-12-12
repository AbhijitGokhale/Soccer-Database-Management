use soccer
GO

-- Player Screen
DROP VIEW IF EXISTS player_view
GO

CREATE VIEW player_view AS
    select p.player_firstname + ' ' + p.player_lastname as [PlayerName], 
    t.team_name as [TeamName],
    p.player_age as [Age],
    p.player_debut_year as [DebutYear],
    p.player_position as [Position],
    p.player_rating as [PlayerRating],
    a.country as [Nationality],
    p.player_goals_scored as [GoalsScored],
    p.player_fouls_committed as [FoulsCommitted]
    from players p 
    JOIN teams t on p.player_team_id = t.team_id 
    JOIN address a on p.player_zipcode = a.zipcode
GO


-- Manager Screen
DROP VIEW IF EXISTS manager_view
GO

CREATE VIEW manager_view AS
    SELECT m.manager_firstname + ' ' + m.manager_lastname as [ManagerName],
    m.manager_email as [Email],
    m.manager_default_formation as [Formation],
    t.team_name as [CurrentTeam],
    m.manager_rating as [Rating]
    FROM managers m 
    JOIN teams t on m.manager_id = t.team_manager_id
GO  

-- Team Screen
DROP VIEW IF EXISTS team_view
GO

CREATE VIEW team_view AS
    select t.team_name as [Name],
    t.team_matches_played as [Played],
    t.team_wins as [Wins],
    t.team_losses as [Losses],
    t.team_draws as [Draws],
    s.stadium_name as [StadiumName],
    l.league_name as [CurrentLeague],
    a.country as [Country] 
    FROM teams t
    join stadiums s on t.team_stadium_id = s.stadium_id
    JOIN leagues l on t.team_league_id = l.league_id
    JOIN address a on t.team_zipcode = a.zipcode
GO

drop view if exists matches_view
go
 
create view matches_view
as 
    select s.stadium_name as stadium_name,
    t1.team_name + ' ' + CAST(m.match_team1_score as varchar(15)) + ' - '+ cast(m.match_team2_score as varchar(15)) + ' ' +  t2.team_name as ScoreDetails
    from matches m join stadiums s 
    on m.match_stadium_id = s.stadium_id
    join teams t1 
    on m.match_team1_id = t1.team_id
    join teams t2
    on m.match_team2_id = t2.team_id
GO

DROP VIEW IF EXISTS PointsTable
GO

CREATE VIEW PointsTable as 
    select team_name as [Name], team_matches_played as [P], team_wins as [W], team_draws as [D], team_losses as [L], team_points as [Points] 
    from teams 
GO


drop view if exists bids_view
GO
create view bids_view
as 
(select 
    (p.player_firstname+' '+ p.player_lastname) as bid_on_player_name,
    t.team_name as bid_by_team_name, 
    b.bid_amount as bid_amount
    from bids b
        join players p on b.bid_player_id = p.player_id
        join teams t on b.bid_team_id = t.team_id
)
GO


select * from player_view
select * from manager_view
select * from team_view
select * from matches_view
select * from PointsTable
select * from bids_view
GO


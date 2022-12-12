-- Insert Data

use soccer
GO

--formations
insert into formations (formation_type) values
    ('4-2-3-1'),('4-3-3'),('4-5-1'),('4-4-2'),('3-4-3')

--positions
insert into positions (position_type) values
    ('Goalkeeper'),('Defender'),('Midfielder'),('Attacker')

--sponsors
insert into sponsors
(sponsor_name)
values
('Sponsers for ultimate'),('It is Champion spns'),('Trying new spns')

--address
    insert into [address] 
(zipcode,city,[state],country)
VALUES
('1234-56', 'cityA','state1','countryAA'),
('1234-57', 'cityB','state1','countryAA'),
('1234-58', 'cityC','state1','countryAA'),
('1234-59', 'cityD','state1','countryAA'),
('1234-60', 'cityE','state2','countryBB'),
('1234-61', 'cityF','state2','countryBB'),
('1234-62', 'cityG','state2','countryBB'),
('1234-63', 'cityH','state2','countryBB'),
('1234-64', 'cityI','state2','countryBB'),
('1234-65', 'cityJ','state3','countryCC'),
('1234-66', 'cityK','state3','countryCC'),
('1234-67', 'cityL','state3','countryCC'),
('123-468', 'cityM','state4','countryDD'),
('12346-9', 'cityN','state5','countryEE')


--managers
insert into managers 
(manager_firstname, manager_lastname, manager_email, manager_rating, manager_debut_year, manager_default_formation) 
values
('Betha','Firstm','Betha@abc.com','1','2021','4-3-3'),
('Thisis','Nextm','Thisis@xyz.com','5','2016','4-5-1'),
('Hereis','Thrdm','Thrdm.Hereis@def.com','2','2020','3-4-3'),
('Last','Mgr','IamLast@mgr.com','4','2015','4-2-3-1')

--leagues
insert into leagues
(league_name, league_start_date, league_end_date, league_sponsors, league_prizemoney, league_size)
VALUES
('Ultimate League','2015-05-19','2016-03-20','Sponsers for ultimate','20000',5),
('Champion League', '2015-02-10','2015-12-31','It is Champion spns','30000',3),
('Lions League', '2017-07-24','2018-05-01','Sponsers for ultimate','25000',6),
('Winner League','2016-12-19','2017-08-25','Trying new spns','15000',2),
('Super League','2018-09-05','2019-07-17','It is Champion spns','32000',8),
('Golden League','2020-12-19','2021-06-28','Sponsers for ultimate','27000',3),
('Platinum League','2021-01-15','2021-08-19','Trying new spns','25000',3),
('Famous League','2021-04-19','2021-12-23','Trying new spns','35000',2)



--stadiums
INSERT INTO stadiums(stadium_name, stadium_email, stadium_capacity, stadium_zipcode) VALUES('Madridlona','Madridlona@gmail.com','50000','1234-56')
INSERT INTO stadiums(stadium_name, stadium_email, stadium_capacity, stadium_zipcode) VALUES('Londamn','Londamn@gmail.com','69876','1234-57')
INSERT INTO stadiums(stadium_name, stadium_email, stadium_capacity, stadium_zipcode) VALUES('HaloCali','HaloCali@gmail.com','76542','1234-58')
INSERT INTO stadiums(stadium_name, stadium_email, stadium_capacity, stadium_zipcode) VALUES('oldTrafford','oldTrafford@gmail.com','99987','1234-59')


--teams
INSERT INTO teams(team_name, team_email, team_matches_played, team_wins, team_losses, team_draws, team_goals_scored, team_goals_conceded, team_points, team_stadium_id, team_manager_id, team_league_id, team_zipcode) VALUES('Barcelona','Barcelona.team@gmail.com','47','40','3','4','167','32','123','1','2','7','1234-56')
INSERT INTO teams(team_name, team_email, team_matches_played, team_wins, team_losses, team_draws, team_goals_scored, team_goals_conceded, team_points, team_stadium_id, team_manager_id, team_league_id, team_zipcode) VALUES('CityManches','CityManches.team@gmail.com','89','60','23','6','278','89','203','2','4','5','1234-57')
INSERT INTO teams(team_name, team_email, team_matches_played, team_wins, team_losses, team_draws, team_goals_scored, team_goals_conceded, team_points, team_stadium_id, team_manager_id, team_league_id, team_zipcode) VALUES('Knightriders','Knightriders.team@gmail.com','21','6','9','6','32','9','27','3','3','3','1234-58')
INSERT INTO teams(team_name, team_email, team_matches_played, team_wins, team_losses, team_draws, team_goals_scored, team_goals_conceded, team_points, team_stadium_id, team_manager_id, team_league_id, team_zipcode) VALUES('Daredevils','Daredevils.team@gmail.com','87','45','17','25','67','90','152','4','1','1','1234-59')


--select * from teams
--players
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('leo','messi','leo.messi@gmail.com','40','1234-56','Goalkeeper','2000','Right','188','0','22','5','1')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('sergio','aguero','sergio.aguero@gmail.com','35','1234-57','Goalkeeper','2004','Left','130','0','48','1','1')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('pablo','escobar','pablo.escobar@gmail.com','39','1234-58','Goalkeeper','2014','Right','19','0','31','5','1')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('juan ','pablo','juan .pablo@gmail.com','36','1234-59','Goalkeeper','2008','Right','104','0','42','4','1')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('maaz','dilbar','maaz.dilbar@gmail.com','23','1234-60','Goalkeeper','2007','Right','145','0','10','2','3')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('sheila','jawani','sheila.jawani@gmail.com','24','1234-61','Goalkeeper','2002','Right','98','1','8','1','3')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('kama','riya','kama.riya@gmail.com','28','1234-62','Goalkeeper','2001','Left','27','2','31','2','3')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('choo','lo','choo.lo@gmail.com','25','1234-63','Goalkeeper','2014','Left','63','0','50','4','4')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('local','train','local.train@gmail.com','32','1234-56','Defender','2004','Right','3','17','50','4','4')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('blossom ','bloom','blossom .bloom@gmail.com','32','1234-57','Defender','2010','Right','49','16','2','5','1')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('rasp','berries','rasp.berries@gmail.com','25','1234-58','Defender','2000','Right','108','16','33','4','1')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('doit','later','doit.later@gmail.com','35','1234-59','Defender','1998','Right','65','2','38','5','3')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('dunno','why','dunno.why@gmail.com','39','1234-60','Defender','1998','Left','174','3','41','2','2')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('why','dunno','why.dunno@gmail.com','30','1234-61','Defender','2015','Left','9','7','7','4','2')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('iam','awesome','iam.awesome@gmail.com','33','1234-62','Defender','2014','Right','58','13','24','4','1')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('abhijit','shetty','abhijit.shetty@gmail.com','23','1234-63','Defender','1998','Left','162','4','8','5','1')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('nakul','kumar','nakul.kumar@gmail.com','30','1234-56','Defender','2014','Left','170','17','43','4','4')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('hitler','isrude','hitler.isrude@gmail.com','36','1234-57','Defender','2007','Left','47','12','36','2','4')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('america','rocks','america.rocks@gmail.com','23','1234-58','Defender','2013','Right','75','16','23','2','4')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('corona','beer','corona.beer@gmail.com','24','1234-59','Defender','2010','Left','97','11','40','4','2')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('king','fisher','king.fisher@gmail.com','40','1234-60','Defender','2003','Right','31','2','32','2','1')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('docker','start','docker.start@gmail.com','23','1234-61','Defender','2004','Right','162','18','35','5','2')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('azure','studip','azure.studip@gmail.com','24','1234-62','Defender','2004','Right','69','16','20','3','4')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('dil','ismad','dil.ismad@gmail.com','40','1234-63','Defender','2008','Left','148','18','47','5','1')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('chelsea','isshit','chelsea.isshit@gmail.com','33','1234-56','Defender','1999','Left','36','4','40','3','2')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('ole','ole','ole.ole@gmail.com','25','1234-57','Defender','2004','Right','148','11','23','1','3')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('si','amigo','si.amigo@gmail.com','30','1234-58','Midfielder','2004','Left','174','41','36','3','4')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('jama','pel','jama.pel@gmail.com','21','1234-59','Midfielder','2011','Right','18','66','48','2','4')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('bon','jour','bon.jour@gmail.com','22','1234-60','Midfielder','2005','Right','46','5','14','4','2')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('mike','fudge','mike.fudge@gmail.com','36','1234-61','Midfielder','2009','Left','17','17','48','5','3')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('dev','anand','dev.anand@gmail.com','24','1234-62','Midfielder','2008','Left','154','87','47','5','1')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('lata ','mangeshkar','lata .mangeshkar@gmail.com','32','1234-63','Midfielder','2013','Right','7','41','35','3','2')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('david','bekham','david.bekham@gmail.com','26','1234-56','Midfielder','2000','Right','175','31','30','5','2')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('shu','bham','shu.bham@gmail.com','22','1234-57','Midfielder','2006','Left','69','40','23','5','3')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('microsoft','excel','microsoft.excel@gmail.com','28','1234-58','Midfielder','2009','Left','76','12','35','1','3')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('twin','kies','twin.kies@gmail.com','40','1234-59','Midfielder','2012','Left','16','74','25','1','1')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('wal','mart','wal.mart@gmail.com','34','1234-60','Midfielder','2001','Right','163','57','42','2','1')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('hello','world','hello.world@gmail.com','28','1234-61','Midfielder','2003','Left','131','53','2','4','2')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('price','rite','price.rite@gmail.com','35','1234-62','Midfielder','2013','Right','199','28','16','2','2')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('syr','cuse','syr.cuse@gmail.com','36','1234-63','Attacker','1998','Right','11','60','42','3','2')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('roch','ester','roch.ester@gmail.com','38','1234-56','Attacker','2014','Right','38','52','3','4','2')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('no','smoking','no.smoking@gmail.com','30','1234-57','Attacker','2006','Left','200','191','31','5','1')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('be','decent','be.decent@gmail.com','39','1234-58','Attacker','2002','Right','191','70','40','2','1')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('dogs','arebest','dogs.arebest@gmail.com','27','1234-59','Attacker','2008','Left','160','63','2','4','1')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('labra','german','labra.german@gmail.com','28','1234-60','Attacker','1999','Left','68','185','47','1','3')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('husky','whoo','husky.whoo@gmail.com','20','1234-61','Attacker','2000','Right','166','74','23','2','4')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('whoo','husky','whoo.husky@gmail.com','30','1234-62','Attacker','1998','Right','17','121','39','2','4')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('sheet','excel','sheet.excel@gmail.com','27','1234-63','Attacker','2001','Right','155','129','42','3','2')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('search','button','search.button@gmail.com','28','1234-63','Attacker','2004','Left','167','83','21','4','3')
INSERT INTO players(player_firstname, player_lastname, player_email, player_age, player_zipcode, player_position, player_debut_year, player_main_foot, player_games_played, player_goals_scored, player_fouls_committed, player_rating, player_team_id) VALUES('wifi','roclks','wifi.roclks@gmail.com','40','1234-63','Attacker','2000','Right','108','130','40','4','1')


--matches
insert into matches
(match_stadium_id, match_team1_id, match_team2_id, match_team1_score, match_team2_score, match_date_played, match_attendance)
VALUES
(4,1,4,2,5,'2015-06-19',100000),
(1,2,3,2,1,'2016-04-10',1598000),
(2,3,4,5,0,'2019-10-24',109000),
(3,2,4,1,1,'2021-12-19',154600)


--bids
insert into bids
(bid_player_id, bid_team_id, bid_amount, bid_status)
VALUES
(8, 1,57431,'Low'),
(48,1,83580,'High'),
(11,3,46134,'Low'),
(47,2,49542,'Low'),
(43,1,83018,'High'),
(14,2,67031,'Medium'),
(37,3,43298,'Low'),
(12,4,82453,'High'),
(20,3,58220,'Low'),
(13,3,63961,'Medium'),
(9,4,67506,'Medium'),
(46,1,77681,'Medium'),
(46,4,92003,'High'),
(40,1,77978,'Medium'),
(46,1,47095,'Low'),
(21,3,94922,'High'),
(15,3,65026,'Medium'),
(24,1,44999,'Low'),
(33,4,90142,'High'),
(20,4,59400,'Low'),
(49,1,82396,'High'),
(25,1,61236,'Medium'),
(43,2,85061,'High'),
(5,4,76040,'Medium'),
(48,3,53746,'Low')

select * from formations
select * from positions
select * from sponsors
select * from [address]
select * from managers
select * from leagues
select * from stadiums
select * from teams
select * from players
select * from matches
select * from bids
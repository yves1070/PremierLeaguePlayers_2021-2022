/* looking at all the columns*/
SELECT * 
FROM p_league.`players.cvs`
order by goals desc;

/*how many games it takes a player to produce goals*/
SELECT pk, round(90mp) as 90_minute_matches, round((90mp/goals),1) as Games_needed_to_score, player,goals 
FROM p_league.`players.cvs`
order by goals desc
limit 50;

/*how many games it takes a player to produce assists*/
SELECT pk, round(90mp) as 90_minute_matches, round((90mp/assists),1) as Games_needed_to_assist, player, Assists 
FROM p_league.`players.cvs`
order by Assists desc
limit 50;

/*how many games it takes a player to produce goals and assists*/
SELECT pk, round(90mp) as 90_minute_matches, round((Goals_per_90 + Assists_per_90)*100, 1) as efficiency_per_90, player,goals + Assists as goals_and_assists 
FROM p_league.`players.cvs`
order by goals_and_assists desc
limit 50;

SELECT player_names.player, draft_data.year_drafted, teams.team, college.school FROM draft_data
INNER JOIN college ON (college.id = draft_data.college_id)
INNER JOIN player_names ON (player_names.id = draft_data.player_id)
INNER JOIN teams ON (teams.id = draft_data.team_id)
WHERE college.school = "Alabama";

SELECT college.school, COUNT(arrest_data.player_id) AS "Number Arrested" FROM arrest_data
INNER JOIN draft_data ON (draft_data.player_id = arrest_data.player_id)
INNER JOIN college ON (college.id = draft_data.college_id)
GROUP BY college.school
ORDER BY COUNT(college.school) DESC;

SELECT teams.team, COUNT(arrest_data.player_id) AS "Number Arrested" FROM arrest_data
INNER JOIN draft_data ON (draft_data.player_id = arrest_data.player_id)
INNER JOIN teams ON (teams.id = draft_data.team_id)
GROUP BY teams.team
ORDER BY COUNT(teams.team) DESC;

SELECT player_names.player, COUNT(arrest_data.player_id) AS "Times Arrested", teams.team FROM arrest_data
INNER JOIN draft_data ON (draft_data.player_id = arrest_data.player_id)
INNER JOIN player_names ON (player_names.id = draft_data.player_id)
INNER JOIN teams ON (draft_data.team_id = teams.id)
GROUP BY player_names.player
ORDER BY COUNT(player_names.player) DESC;

SELECT player_names.player, category.cat_type, cases.result FROM arrest_data
INNER JOIN draft_data ON (draft_data.player_id = arrest_data.player_id)
INNER JOIN player_names ON (player_names.id = draft_data.player_id)
INNER JOIN cases ON (cases.id = arrest_data.case_id)
INNER JOIN category ON (category.id = arrest_data.category_id)
WHERE player_names.player = "Chris Henry";
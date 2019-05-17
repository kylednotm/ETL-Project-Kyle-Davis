DROP DATABASE IF EXISTS nfl_arrest_draft_data;

CREATE DATABASE nfl_arrest_draft_data;

USE nfl_arrest_draft_data;

DROP TABLE IF EXISTS teams;

CREATE TABLE teams (
	id INT PRIMARY KEY,
    team TEXT);

DROP TABLE IF EXISTS player_names;

CREATE TABLE player_names (
	id INT PRIMARY KEY,
    player TEXT);
    
DROP TABLE IF EXISTS draft_data;
    
CREATE TABLE draft_data (
	id INT PRIMARY KEY,
    player_id INT, 
    year_drafted INT, 
    round_drafted INT,
    team_id INT, 
    pos_id INT,
    age INT, 
    college_id INT);

DROP TABLE IF EXISTS cases;

CREATE TABLE cases (
	id INT PRIMARY KEY,
    result TEXT);

DROP TABLE IF EXISTS category;

CREATE TABLE category (
	id INT PRIMARY KEY,
    cat_type TEXT);
    
DROP TABLE IF EXISTS college;

CREATE TABLE college (
	id INT PRIMARY KEY,
    school TEXT);


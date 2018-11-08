/* Table to create members */
CREATE TABLE members
(
  member_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (member_id),
  last_name VARCHAR(20) NOT NULL,
  first_name VARCHAR(20) NOT NULL,
  email VARCHAR(20) NOT NULL,
  title_id INT UNSIGNED DEFAULT 1 NOT NULL,
  FOREIGN KEY (title_id) REFERENCES titles (title_id),
  FOREIGN KEY (project_id) REFERENCES projects (project_id),
  FOREIGN KEY (event_id) REFERENCES events (event_id)
);

/* Table for titles */
CREATE TABLE titles
(
  title_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (title_id),
  title_name VARCHAR(20) NOT NULL,
  permission_level INT UNSIGNED DEFAULT 1 NOT NULL
);

/* Table for events */
CREATE TABLE events
(
  event_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (event_id),
  event_name VARCHAR(20) NOT NULL,
  event_goal VARCHAR(250) NOT NULL,
  data VARCHAR(10) DEFAULT '2019-01-01' NOT NULL
  location VARCHAR(20) NOT NULL,
  member_id(20) NOT NULL,
  FOREIGN KEY (member_id) REFERENCES members (member_id)
);

/* Table for Projects */
CREATE TABLE projects
(
  project_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (project_id),
  project_name VARCHAR(25) NOT NULL,
  project_goal VARCHAR(250) NOT NULL,
  project_leader INT,
  start_date VARCHAR(10) DEFAULT '2019-01-01' NOT NULL,
  finish_date VARCHAR(10) DEFAULT 'Not Finished',
  FOREIGN KEY (project_leader) REFERENCES members (member_id)
);

/* Create basic titles */
INSERT INTO titles VALUES(1, 'Member', 1);
INSERT INTO titles (title_name, permission_level) VALUES ('Executive Coordinator', 10);
INSERT INTO titles (title_name, permission_level) VALUES ('Treasurer', 10);
INSERT INTO titles (title_name, permission_level) VALUES ('Web Developer', 10);
INSERT INTO titles (title_name, permission_level) VALUES ('Academic Manager', 10);
INSERT INTO titles (title_name, permission_level) VALUES ('Publicist', 10);
INSERT INTO titles (title_name, permission_level) VALUES ('Vice President', 50);
INSERT INTO titles (title_name, permission_level) VALUES ('President', 100);

/* Create basic members */
INSERT INTO members VALUES(1, 'Patel', 'Akshay', 'ap95@ieee.org', 9);
INSERT INTO members VALUES(2, 'Khan', 'Mohammad', 'mo95@ieee.org', 8);
INSERT INTO members VALUES(3, 'Saballus', 'Tyler', 'sabsmailer@gmail.com', 5);
INSERT INTO members VALUES(4, 'Pantoja', 'Gonzalo', 'gonzo@gmail.com', 3);

/* Create basic event -----> MIGHT NEED CORRECTIONS*/
INSERT INTO events VALUES(1, 'Event', 'NIU', NULL, NULL, NULL);

/* Create basic projects */
INSERT INTO projects (project_id, project_name, project_goal, start_date, finish_date) VALUES(1, 'Magic Mirror', 'Build responsive mirror', '2018-09-01', NULL);

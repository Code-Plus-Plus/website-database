/* Table to create members */
CREATE TABLE members
(
  member_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (member_id),
  last_name VARCHAR(20) NOT NULL,
  first_name VARCHAR(20) NOT NULL,
  email VARCHAR(20) NOT NULL,
  title_id INT UNSIGNED DEFAULT 1 NOT NULL,
  FOREIGN KEY (title_id) REFERENCES titles (title_id)
);

/* Table for titles */
CREATE TABLE titles
(
  title_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (title_id),
  title_name VARCHAR(20) NOT NULL,
  permission_level INT UNSIGNED DEFAULT 1 NOT NULL
);

/* Create basic titles */
INSERT INTO titles VALUES(1, 'Member', 1);
INSERT INTO titles (title_name, permission_level) VALUES ('Ambassador', 10);
INSERT INTO titles (title_name, permission_level) VALUES ('Secretary', 10);
INSERT INTO titles (title_name, permission_level) VALUES ('Treasurer', 10);
INSERT INTO titles (title_name, permission_level) VALUES ('Web Developer', 10);
INSERT INTO titles (title_name, permission_level) VALUES ('Academic Manager', 10);
INSERT INTO titles (title_name, permission_level) VALUES ('Community Outreach', 10);
INSERT INTO titles (title_name, permission_level) VALUES ('Vice President', 50);
INSERT INTO titles (title_name, permission_level) VALUES ('President', 100);

/* Create basic members */
INSERT INTO members VALUES(1, 'Patel', 'Akshay', 'ap95@ieee.org', 9);
INSERT INTO members VALUES(2, 'Khan', 'Mohammad', 'mo95@ieee.org', 8);
INSERT INTO members VALUES(3, 'Saballus', 'Tyler', 'sabsmailer@gmail.com', 5);
INSERT INTO members VALUES(4, 'Pantoja', 'Gonzalo', 'gonzo@gmail.com', 3);

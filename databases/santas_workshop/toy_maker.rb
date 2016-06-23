# Santas Workshop Toy Tracker

# Object Relational Mapping (ORM)

#require gems
require 'sqlite3'
require 'faker'

#create SQLITE3 database
elves_data_base = SQLite3::Database.new("elves.db")
children_data_base = SQLite3::Database.new("children.db")
toys_data_base = SQLite3::Database.new("toys.db")

#delimiter
create_table_elves = <<-SQL
	CREATE TABLE elves(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		toy_type_id INT,
		number_toys INT,
		FOREIGN KEY (toy_type_id) REFERENCES toys(id)
		)
SQL

create_table_children = <<-SQL
	CREATE TABLE children(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		naught_nice BOOLEAN,
		toy_type_id INT,
		FOREIGN KEY (toy_type_id) REFERENCES toys(id)
		)
SQL

create_table_toys = <<-SQL
	CREATE TABLE toys(
		id INTEGER PRIMARY KEY,
		toy_name VARCHAR(255),
		number_toys INT
		)
SQL
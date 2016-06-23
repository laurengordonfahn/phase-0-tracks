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
	CREATE TABLE IF NOT EXISTS elves(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		toy_type_id INT,
		number_toys INT,
		FOREIGN KEY (toy_type_id) REFERENCES toys(id)
		)
SQL

create_table_children = <<-SQL
	CREATE TABLE IF NOT EXISTS children(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		naught_nice BOOLEAN,
		toy_type_id INT,
		FOREIGN KEY (toy_type_id) REFERENCES toys(id)
		)
SQL

create_table_toys = <<-SQL
	CREATE TABLE IF NOT EXISTS toys(
		id INTEGER PRIMARY KEY,
		toy_name VARCHAR(255),
		number_toys INT
		)
SQL

#create tables (if not already there)
elves_data_base.execute(create_table_elves)
children_data_base.execute(create_table_children)
toys_data_base.execute(create_table_toys)

#add a test elf, child, toy
elves_data_base.execute("INSERT INTO elves (name, toy_type_id, number_toys) VALUES ('Micro', 3, 32)")
children_data_base.execute("INSERT INTO children (name, naught_nice, toy_type_id) VALUES ('Laurain', 'true', 1)")
toys_data_base.execute("INSERT INTO toys (toy_name, number_toys) VALUES ('Mega-Tron', 15)")
# Santas Workshop Toy Tracker

# Object Relational Mapping (ORM)

#require gems
require 'sqlite3'
require 'faker'

#create SQLITE3 database
elves_data_base = SQLite3::Database.new("elves.db")
elves_data_base.results_as_hash = true


children_data_base = SQLite3::Database.new("children.db")
children_data_base.results_as_hash = true

toys_data_base = SQLite3::Database.new("toys.db")
toys_data_base.results_as_hash = true

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

attach_elves = <<-Connect
	attach 'elves.db' as elves_data;
Connect

attach_children = <<-Connect
	attach 'children.db' as children_data;
Connect


#create tables (if not already there)
elves_data_base.execute(create_table_elves)
children_data_base.execute(create_table_children)
toys_data_base.execute(create_table_toys)

#attach data bases to the toy for counting of toys
toys_data_base.database(attach_elves)
toys_data_base.database(attach_children)

#add a test elf, child, toy
# elves_data_base.execute("INSERT INTO elves (name, toy_type_id, number_toys) VALUES ('Micro', 3, 32)")
# children_data_base.execute("INSERT INTO children (name, naught_nice, toy_type_id) VALUES ('Laurain', 'true', 1)")
# toys_data_base.execute("INSERT INTO toys (toy_name, number_toys) VALUES ('Mega-Tron', 15)")

#explore ORM by retrieving database
# elves = elves_data_base.execute("SELECT * FROM elves")
# puts elves.class
# p elves

elves = elves_data_base.execute("SELECT * FROM elves")
	elves.each do |elf|
		puts "#{elf['name']} made #{elf['number_toys']} #{elf['toy_type_id']}"
	end 

# children = children_data_base.execute("SELECT * FROM children")
# puts children.class
# p children

# toys = toys_data_base.execute("SELECT * FROM toys")
# puts toys.class
# p toys



# add lots of data 
def create_elf(elves_data_base, name, toy_type_id, number_toys)
	elves_data_base.execute("INSERT INTO elves (name, toy_type_id, number_toys) VALUES (?, ?, ?)", 
		[name, toy_type_id, number_toys])
end

100.times do 
	create_elf(elves_data_base, Faker::Name.name, Faker::Number.between(1,52) Faker::Number.between(1, 200))
end


def create_child(children_data_base, name, naught_nice, toy_type_id)
	children_data_base.execute("INSERT INTO children (name, naught_nice, toy_type_id) VALUES (?, ?, ?)",
		[name, naught_nice, toy_type_id])
end 

100.times do
	create_child(children_data_base, Faker::Name.name, Faker::Boolean.boolean)
end


def create_toy(toys_data_base, toy_name, number_toys) 
	toys_data_base.execute("INSERT INTO toys (toy_name, number_toys) VALUES (?, ?)",
		[toy_name, number_toys])
end

def toy_counter(elves_data_base, toy_type_id, number_toys)
	

100.times do	
	create_toy(toys_data_base, Faker::Superhero, )
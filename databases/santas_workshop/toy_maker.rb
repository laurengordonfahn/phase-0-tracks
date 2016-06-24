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
toys_data_base.execute(attach_elves)
toys_data_base.execute(attach_children)


#add a test elf, child, toy
# elves_data_base.execute("INSERT INTO elves (name, toy_type_id, number_toys) VALUES ('Micro', 3, 32)")
# children_data_base.execute("INSERT INTO children (name, naught_nice, toy_type_id) VALUES ('Laurain', 'true', 1)")
# toys_data_base.execute("INSERT INTO toys (toy_name, number_toys) VALUES ('Mega-Tron', 15)")

#explore ORM by retrieving database
# elves = elves_data_base.execute("SELECT * FROM elves")
# puts elves.class
# p elves

# elves = elves_data_base.execute("SELECT * FROM elves")
# 	elves.each do |elf|
# 		puts "#{elf['name']} made #{elf['number_toys']} #{elf['toy_type_id']}"
# 	end 

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
	create_elf(elves_data_base, Faker::Name.name, Faker::Number.between(1, 52), Faker::Number.between(1, 200))
end


def create_child(children_data_base, name, naught_nice, toy_type_id)
	children_data_base.execute("INSERT INTO children (name, naught_nice, toy_type_id) VALUES (?, ?, ?)",
		[name, naught_nice, toy_type_id])
end 

100.times do
	create_child(children_data_base, Faker::Name.name, Faker::Boolean.boolean, null)
end

child_data_base.each do |child|
	if child['naught_nice']
		 UPDATE child SET Faker::Superhero.name WHERE toy_type_id=null 
	end

end


def create_toy(toys_data_base, toy_name, number_toys) 
	toys_data_base.execute("INSERT INTO toys (toy_name, number_toys) VALUES (?, ?)",
		[toy_name, number_toys])
end

toys_type = toys_data_base.execute("SELECT id FROM toys")
	toys_type.each do |toy_id|
		SELECT elves.toy_type_id, elves.number_toys FROM elves 
		WHERE toys.id = elves.toy_type_id;
		SELECT SUM(number_toys) as toys_count FROM toys_type;
	end

child_toy_count = toys_data_base.execute ("SELECT id FROM toys")
child_toy_count.each do |toy_id|
	SELECT children.toy_type_id FROM children
	WHERE toys.id = children.toy_type_id;
	SELECT SUM(toy_type_id) as toys_for_children FROM child_toy_count;
end

final_toy_sum = toys_data_base.execute("SELECT id FROM toys")
final_toy_sum.each do |toy_id|
	toys_count.to_i - toys_for_children.to_i
end

	

100.times do	
	create_toy(toys_data_base, Faker::Superhero.name, final_toy_sum)
end
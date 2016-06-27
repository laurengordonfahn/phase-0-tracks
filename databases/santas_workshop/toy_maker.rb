# Santas Workshop Toy Tracker

# Object Relational Mapping (ORM)

#require gems
require 'sqlite3'
require 'faker'

#create SQLITE3 database
def open_database
	data_base = SQLite3::Database.new("santas_data_base.db")
	data_base.results_as_hash = true
	return data_base
end


#delimiter create tables (if not already there)

def create_tables(data_base)
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
			number_total_toys INT
		)
	SQL


	#execute create tables (if not already there)
	data_base.execute(create_table_elves)
	data_base.execute(create_table_children)
	data_base.execute(create_table_toys)
end



#add a test elf, child, toy
# data_base.execute("INSERT INTO elves (name, toy_type_id, number_toys) VALUES ('Micro', 3, 32)")
# data_base.execute("INSERT INTO children (name, naught_nice, toy_type_id) VALUES ('Laurain', 'true', 1)")
# data_base.execute("INSERT INTO toys (toy_name, number_total_toys) VALUES ('Mega-Tron', 15)")

#explore ORM by retrieving database
# elves = data_base.execute("SELECT * FROM elves")
# puts elves.class
# p elves

# elves = data_base.execute("SELECT * FROM elves")
# 	elves.each do |elf|
# 		puts "#{elf['name']} made #{elf['number_toys']} #{elf['toy_type_id']}"
# 	end 

# children = data_base.execute("SELECT * FROM children")
# puts children.class
# p children

# toys = data_base.execute("SELECT * FROM toys")
# puts toys.class
# p toys



# add lots of data 

#Outline for populating databases
#toys outline
def create_toy(data_base, toy_name, number_total_toys) 
	data_base.execute("INSERT INTO toys (toy_name, number_total_toys) VALUES (?, ?)",
		[toy_name, number_total_toys])
end


#elves outline
def create_elf(data_base, name, toy_type_id, number_toys)
	data_base.execute("INSERT INTO elves (name, toy_type_id, number_toys) VALUES (?, ?, ?)", 
		[name, toy_type_id, number_toys])
end

#children outline
def create_child(data_base, name, naught_nice, toy_type_id)
	data_base.execute("INSERT INTO children (name, naught_nice, toy_type_id) VALUES (?, ?, ?)",
		[name, naught_nice.to_s, toy_type_id])
end 


#populate the databases
def insert_data(data_base)
	#toys population creator only want 52 different types of toys set final sum toys to nil at first
	def toy_generator	
		52.times do
			create_toy(data_base, Faker::Superhero.name, nil)
		end
	end

	toys = data_base.execute("SELECT id FROM toys")

	#elves population creator by taking a sampling of what the toys types are
	100.times do 
		random_toy_id = toys.sample
		create_elf(data_base, Faker::Name.name, random_toy_id, Faker::Number.between(1, 200))
	end

	#children population creator
	100.times do
		create_child(data_base, Faker::Name.name, Faker::Boolean.boolean, nil)
	end

end


def assign_toy_child
	child_toy = data_base.execute("SELECT naught_nice FROM children")
	child_toy.each do 
		if chilren['naught_nice']
	 		data_base.execute("UPDATE child SET Faker::Superhero.name WHERE toy_type_id=nil")
		end
	end
end 

# written for hashes
def calculate_toy_inventory(data_base)

	toys_type = data_base.execute("SELECT id FROM toys")

#for each toy find the remaining inventory after delivery
	toys_type.each do |toy|
		#find the number of toys that are produced by elves
		produced = data_base.execute("SELECT SUM(number_total_toys) AS produced_toys FROM elves WHERE toy_type_id = ?, toy["id"]")
		produced = produced [0]
		
		if produced.nil? 
			produced = 0
		else
			produced = produced["produced_toys"]
		end
	# number of children who get a type of toy

	count =  data_base.execute("SELECT COUNT(*) AS num_children FROM children WHERE toy_type_id = ?, toy["id"]")
	count = count[0]
	

		if count.nil?
			count = 0
		else
			count =count["num_children"]
		end
	remaining_toys = produced - count

	#creat final inventory sum of toys
		data_base.execute("UPDATE toys SET number_total_toys = ? WHERE id=?", remaining_toys, toy["id"])
	end 
end

def main_work

	db = open_database
	creat_table(db)
	insert_data(db)
	calculate_toy_inventory(db)
end






# Santas Workshop Toy Tracker

# Object Relational Mapping (ORM)

#require gems
require 'sqlite3'
require 'faker'

#create SQLITE3 database
elves_data_base = SQLite3::Database.new("elves.db")
children_data_base = SQLite3::Database.new("children.db")
toys_data_base = SQLite3::Database.new("toys.db")

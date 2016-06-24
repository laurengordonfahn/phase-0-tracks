require 'sqlite3'

db = SQLite3::Database.new("test.db")

db.execute(%{
	CREATE TABLE IF NOT EXISTS foo (
		id INTEGER PRIMARY KEY,
		isok BOOLEAN
	)
})

db.execute(%{
	CREATE TABLE IF NOT EXISTS bar (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		foo_id INTEGER REFERENCES foo(id)
	)
})


db.execute("INSERT INTO foo (isok) VALUES (?)",["false"])



db.execute("INSERT INTO bar (name) VALUES (?)",["Paul"])


db.execute("UPDATE bar SET foo_id = ? WHERE id = ?", [1,1])
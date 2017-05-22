require 'sqlite3'
require 'faker'
require 'hirb'

database = SQLite3::Database.new('tenants.db')

create_table = <<-SQL
 CREATE TABLE IF NOT EXISTS tenants (
  id INTEGER PRIMARY KEY,
  name VARCHAR(250),
  floor INTEGER,
  rent_due INTEGER,
  rent_paid BOOLEAN
 )
SQL

database.execute(create_table)

def insert_tenant(db, name, floor, rent_due, rent_paid)
  db.execute("INSERT INTO tenants (name, floor, rent_due, rent_paid) VALUES (?, ?, ?, ?)", [name, floor, rent_due, rent_paid])
end

def print_table(db)
  puts Hirb::Helpers::Table.render(db.execute("SELECT * FROM tenants"))
end

def update_name(db, old_name, new_name)
  db.execute( <<-SQL
    UPDATE tenants SET name="#{new_name}" WHERE name="#{old_name}"
  SQL
  )
end

def update_rent_due(db, name, rent)
  db.execute( <<-SQL
    UPDATE tenants SET rent_due="#{rent}" WHERE name="#{name}"
  SQL
  )
end

def update_rent_paid(db, name, boolean)
  db.execute( <<-SQL
    UPDATE tenants SET rent_paid="#{boolean}" WHERE name="#{name}"
  SQL
  )
end

# DRIVER CODE
10.times { insert_tenant(database, Faker::Name.unique.name, Faker::Number.between(1, 28), Faker::Number.number(3), Faker::Boolean.boolean.to_s) }
print_table(database)
update_name(database, "Jade Reynolds", "Rainman")
update_rent_due(database, "Rainman", 200)
update_rent_paid(database, "Rainman", true)
print_table(database)

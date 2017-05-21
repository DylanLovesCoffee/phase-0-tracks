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

def insert_tenant(database, name, floor, rent_due, rent_paid)
  database.execute("INSERT INTO tenants (name, floor, rent_due, rent_paid) VALUES (?, ?, ?, ?)", [name, floor, rent_due, rent_paid])
end

# 10.times { insert_tenant(database, Faker::Name.unique.name, Faker::Number.between(1, 28), Faker::Number.number(3), Faker::Boolean.boolean.to_s) }

# tenants_table is an Array
tenants_table = database.execute("SELECT * FROM tenants")

puts Hirb::Helpers::Table.render(tenants_table)

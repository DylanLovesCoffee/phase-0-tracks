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

def update_floor(db, name, floor)
  db.execute( <<-SQL
    UPDATE tenants SET floor="#{floor}" WHERE name="#{name}"
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

def delete_tenant(db, name)
  db.execute( <<-SQL
    DELETE FROM tenants WHERE name="#{name}"
  SQL
  )
end

# DRIVER CODE
# 10.times { insert_tenant(database, Faker::Name.unique.name, Faker::Number.between(1, 28), Faker::Number.number(3), Faker::Boolean.boolean.to_s) }
# print_table(database)
# update_name(database, "Jade Reynolds", "Rainman")
# update_rent_due(database, "Rainman", 200)
# update_rent_paid(database, "Rainman", true)
# delete_tenant(database, "Lilly Leannon")

# UI
puts "Welcome! Below are your current tenants:"
print_table(database)
puts "Select the number for the following action (type 'quit' to exit):"
puts "0. Add tenant"
puts "1. Update tenant name"
puts "2. Update tenant floor"
puts "3. Update rent due"
puts "4. Update rent payment"
puts "5. Delete entry"
input = gets.chomp

while input != 'quit'
  if input == '0'
    puts "What is the tenant's full name?"
    tenant = gets.chomp
    puts "What floor is your tenant living on?"
    floor = gets.chomp
    puts "How much rent is due?"
    rent_due = gets.chomp
    puts "Have they paid their rent? (true/false)"
    rent_paid = gets.chomp
    insert_tenant(database, tenant, floor, rent_due, rent_paid)
    print_table(database)
  elsif input == '1'
    puts "Which tenant would you like update?"
    tenant = gets.chomp
    puts "What is the new tenant name?"
    new_name = gets.chomp
    update_name(database, tenant, new_name)
    print_table(database)
  elsif input == '2'
    puts "Which tenant would you like to update?"
    tenant = gets.chomp
    puts "What is the new floor number?"
    floor = gets.chomp
    update_floor(database, tenant, floor)
    print_table(database)
  elsif input == '3'
    puts "Which tenant would you like to update?"
    tenant = gets.chomp
    puts "What is the new rent due?"
    rent_due = gets.chomp
    update_rent_due(database, tenant, rent_due)
    print_table(database)
  elsif input == '4'
    puts "Which tenant would you like to update?"
    tenant = gets.chomp
    puts "Has the rent been paid? (true/false)"
    rent_paid = gets.chomp
    update_rent_paid(database, tenant, rent_paid)
    print_table(database)
  elsif input == '5'
    puts "Which tenant would you like to delete?"
    tenant = gets.chomp
    puts "Are you sure you would like to delete #{tenant}? (y/n)"
    delete = gets.chomp
    if delete == 'y'
      delete_tenant(database, tenant)
      print_table(database)
    else
      print_table(database)
    end
  else
    puts "Please enter a valid number."
  end
  puts "Select the number for the following action (type 'quit' to exit):"
  puts "0. Add tenant"
  puts "1. Update tenant name"
  puts "2. Update tenant floor"
  puts "3. Update rent due"
  puts "4. Update rent payment"
  puts "5. Delete entry"
  input = gets.chomp
end

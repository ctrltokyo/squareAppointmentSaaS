require 'sequel'


puts 'Connecting to your SQLite DB at: app/sqlite.db'
DB = Sequel.connect("sqlite://app/sqlite.db")
puts 'Connected.'

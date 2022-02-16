require "active_record"
require "pry-byebug"

ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: ":memory:")

require_relative "./schema"
require_relative "./model"
require_relative "./seed"

# Write your code.

puts "finish"

require "active_record"
require "pry-byebug"
require_relative "lib/schema"
require_relative "lib/model"
require_relative "lib/seed"

ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: ":memory:")

Schema.load
Model.load
Seed.load
# Write your code.

puts "finish"

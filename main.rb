require "active_record"
require "pry-byebug"
require_relative "schema"
require_relative "model"
require_relative "seed"

ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: ":memory:")

Schema.load
Model.load
Seed.load
# Write your code.

puts "finish"

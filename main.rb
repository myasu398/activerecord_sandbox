require "active_record"
require 'optparse'
require "pry-byebug"
require_relative "lib/schema"
require_relative "lib/model"
require_relative "lib/seed"
require_relative "lib/utils"

@params = {}
init_params
establish_connection

Schema.load
Model.load
Seed.load

# Write your code.

# truncate [User, Post, Comment].map(&:table_name)
puts "finish"

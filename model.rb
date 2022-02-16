files = Dir[File.expand_path("../models/", __FILE__) << '/*.rb']
files.each { |file| require file }

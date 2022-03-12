module Model
  class << self
    def load
      files.each { |file| require file }
    end

    def files
      @files ||= Dir[File.expand_path("../models/", __FILE__) << '/*.rb']
    end
  end
end
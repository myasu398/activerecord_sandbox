def init_params
  opt = OptionParser.new
  opt.on('-d', '--database DATABASE', 'select database.(postgresql/sqlite3)') do |v|
    @params[:database] = case v
    when 'postgresql' then :postgresql
    when 'sqlite3' then :sqlite3
    else :sqlite3
    end
  end
  opt.parse(ARGV)
end

def establish_connection
  case @params[:database]
  when :postgresql
    connnect_to_postgresql
  when :sqlite3
    ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: ":memory:")
  else
    ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: ":memory:")
  end
end

def connnect_to_postgresql
  db_params = {
    adapter: 'postgresql',
    database: 'test_database',
    pool: '5',
    username: 'postgres',
    password: 'example',
    host: 'postgres'
  }
  ActiveRecord::Base.establish_connection(db_params)
end

def truncate(tables)
  ActiveRecord::Base.connection.execute("TRUNCATE TABLE #{tables.join(",")}")
end

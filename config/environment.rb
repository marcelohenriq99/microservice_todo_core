require "yaml"
require "active_record"

# recursively requires all files in ./lib and down that end in .rb
Dir.glob(File.expand_path("../lib/**/*.rb", __dir__)).sort.each do |file|
  require file
end

# activerecord settings
@environment = ENV.fetch("RACK_ENV", "development")
@dbconfig = YAML.safe_load(File.read("config/database.yml"))

ActiveRecord::Base.establish_connection @dbconfig[@environment]

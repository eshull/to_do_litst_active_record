ENV['RACK_ENV'] = 'test'

require("rspec")
require("pg")
require("pry")
require("sinatra/activerecord")
require("task")
require("./lib/list")
require("./lib/task")

RSpec.configure do |config|
  config.after(:each) do
    Task.all().each() do |task|
      task.destroy()
    end
  end
end

# RSpec.configure do |config|
#   config.after(:each) do
#     DB.exec("DELETE FROM lists *;")
#     DB.exec("DELETE FROM tasks *;")
#   end
# end

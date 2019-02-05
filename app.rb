require("sinatra")
require("sinatra/contrib/all")
require_relative("./controllers/admin_controller")
require_relative("./controllers/user_controller")
also_reload("../models/*")
require("date")

get "/" do
  erb(:"user/index")
end

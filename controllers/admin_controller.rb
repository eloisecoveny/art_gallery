require("sinatra")
require("sinatra/contrib/all")
require_relative("../models/Artist")
require_relative("../models/Exhibit")
also_reload("../models/*")

get "/admin" do
  erb :"admin/index", :layout => :admin_layout
end

get "/admin/artists" do
  @artists = Artist.all()
  erb :"admin/artists/index", :layout => :admin_layout
end

get "/admin/artists/:id/edit" do
  erb :"admin/artists/edit", :layout => :admin_layout
end

post "/admin/artists/:id/delete" do
  artist = Artist.find(params["id"])
  artist.delete()
  redirect to "/admin/artists"
end

require("sinatra")
require("sinatra/contrib/all")
require_relative("../models/Exhibit")
require_relative("../models/Artist")
also_reload("../models/*")

get "/artists" do
  @artists = Artist.all()
  erb :"user/artists/index"
end

get "/artists/:id" do
  @artist = Artist.find(params["id"])
  erb :"user/artists/show"
end

get "/exhibitions" do
  @exhibits = Exhibit.all()
  @artists = Artist.all()
  erb :"user/exhibits/index"
end

get "/exhibitions/:id" do
  @exhibit = Exhibit.find(params["id"])
  erb :"user/exhibits/show"
end

get "/exhibitions/:id/exhibits" do
  @artist = Artist.find(params["id"])
  @exhibits = @artist.exhibits()
  erb :"user/exhibits/index_filter"
end

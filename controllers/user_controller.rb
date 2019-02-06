require("sinatra")
require("sinatra/contrib/all")
require_relative("../models/Exhibit")
require_relative("../models/Artist")
require_relative("../models/Category")
require_relative("../models/TextFormat")
also_reload("../models/*")


get "/artists" do
  @artists = Artist.all()
  erb :"user/artists/index"
end

get "/artists/:id" do
  @artist = Artist.find(params["id"])
  @biography = TextFormat.format(@artist.biography)
  erb :"user/artists/show"
end

get "/exhibitions" do
  @exhibits = Exhibit.all()
  @artists = Artist.all()
  @categories = Category.all()
  erb :"user/exhibits/index"
end

get "/exhibitions/artist" do
  if params["id"] == "all"
    redirect to "/exhibitions"
  end
  @artists = Artist.all()
  @artist = Artist.find(params["id"])
  @exhibits = @artist.exhibits()
  @categories = Category.all()
  erb :"user/exhibits/filter_artist"
end

get "/exhibitions/category" do
  if params["id"] == "all"
    redirect to "/exhibitions"
  end
  @categories = Category.all()
  @category = Category.find(params["id"])
  @exhibits = @category.exhibits()
  @artists = Artist.all()
  erb :"user/exhibits/filter_category"
end

get "/exhibitions/:id" do
  @exhibit = Exhibit.find(params["id"])
  @description = TextFormat.format(@exhibit.description)
  erb :"user/exhibits/show"
end

require("sinatra")
require("sinatra/contrib/all")
require_relative("../models/Artist")
require_relative("../models/Exhibit")
require_relative("../models/Category")
require_relative("../models/TextFormat")
also_reload("../models/*")
require("date")

get "/admin" do
  erb :"admin/index", :layout => :admin_layout
end

get "/admin/artists" do
  @artists = Artist.all()
  erb :"admin/artists/index", :layout => :admin_layout
end

get "/admin/artists/new" do
  erb :"admin/artists/new", :layout => :admin_layout
end

post "/artists" do
  Artist.new(params).save()
  redirect to "/admin/artists"
end

get "/admin/artists/:id/edit" do
  @artist = Artist.find(params["id"])
  erb :"admin/artists/edit", :layout => :admin_layout
end

post "/artists/:id" do
  Artist.new(params).update()
  redirect to "admin/artists/#{params["id"]}"
end

get "/admin/artists/:id" do
  @artist = Artist.find(params["id"])
  @biography = TextFormat.format(@artist.biography)
  erb :"admin/artists/show", :layout => :admin_layout
end

post "/admin/artists/:id/delete" do
  Artist.find(params["id"]).delete()
  redirect to "/admin/artists"
end

get "/admin/exhibitions" do
  @exhibits = Exhibit.all()
  erb :"admin/exhibits/index", :layout => :admin_layout
end

get "/admin/exhibitions/new" do
  @artists = Artist.all()
  @categories = Category.all()
  erb :"admin/exhibits/new", :layout => :admin_layout
end

get "/admin/exhibitions/categories" do
  @categories = Category.all()
  erb :"admin/categories/index", :layout => :admin_layout
end

post "/admin/exhibitions/categories" do
  Category.new(params).save()
  redirect to "/admin/exhibitions/categories"
end

get "/admin/exhibitions/categories/new" do
  erb :"admin/categories/new", :layout => :admin_layout
end

get "/admin/exhibitions/categories/edit" do
  @category = Category.find(params["id"])
  erb :"admin/categories/edit", :layout => :admin_layout
end

post "/admin/exhibitions/categories/:id" do
  Category.new(params).update()
  redirect to "/admin/exhibitions/categories"
end

get "/admin/exhibitions/:id/edit" do
  @exhibit = Exhibit.find(params["id"])
  @artist = @exhibit.artist()
  @artists = Artist.all()
  @categories = Category.all()
  erb :"admin/exhibits/edit", :layout => :admin_layout
end

post "/exhibitions" do
  Exhibit.new(params).save()
  redirect to "/admin/exhibitions"
end

post "/exhibitions/:id" do
  Exhibit.new(params).update()
  redirect to "admin/exhibitions/#{params["id"]}"
end

get "/admin/exhibitions/:id" do
  @exhibit = Exhibit.find(params["id"])
  @artist = @exhibit.artist()
  @description = TextFormat.format(@exhibit.description)
  erb :"admin/exhibits/show", :layout => :admin_layout
end

post "/admin/exhibitions/:id/delete" do
  Exhibit.find(params["id"]).delete()
  redirect to "admin/exhibitions"
end

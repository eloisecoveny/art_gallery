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
  erb :"admin/artists/show", :layout => :admin_layout
end

post "/admin/artists/:id/delete" do
  artist = Artist.find(params["id"])
  artist.delete()
  redirect to "/admin/artists"
end

get "/admin/exhibitions" do
  @exhibits = Exhibit.all()
  erb :"admin/exhibits/index", :layout => :admin_layout
end

get "/admin/exhibitions/new" do
  @artists = Artist.all()
  erb :"admin/exhibits/new", :layout => :admin_layout
end

post "/exhibitions" do
  Exhibit.new(params).save()
  redirect to "/admin/exhibitions"
end

get "/admin/exhibitions/:id/edit" do
  @exhibit = Exhibit.find(params["id"])
  @artists = Artist.all()
  erb :"admin/exhibits/edit", :layout => :admin_layout
end

post "/exhibitions/:id" do
  Exhibit.new(params).update()
  redirect to "admin/exhibitions/#{params["id"]}"
end

get "/admin/exhibitions/:id" do
  @exhibit = Exhibit.find(params["id"])
  @artist = @exhibit.artist()
  erb :"admin/exhibits/show", :layout => :admin_layout
end

post "/admin/exhibitions/:id/delete" do
  Exhibit.find(params["id"]).delete()
  redirect to "admin/exhibitions"
end

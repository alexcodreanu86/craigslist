get '/' do
  # Look in app/views/index.erb
  @categories = Category.all.map{|category| category.name}
  erb :index
end

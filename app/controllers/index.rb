get '/' do
  # Look in app/views/index.erb
  @categories = Category.all #.map{|category| category.name}
  erb :index
end

get '/categories/:id' do
  @category = Category.find(params[:id].to_i)
  @posts = @category.posts
  erb :category
end



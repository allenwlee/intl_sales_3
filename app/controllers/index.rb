get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/sales' do
  @sale = Sale.create(territory: params[:territory], bid: params[:bid], ask: params[:ask], close: params[:close], close_date: params[:close_date])
  @user = User.find_by_id[session[:id]]
  @user.sales << @sale
  erb :index
end

get '/create' do
  erb :create
end

post '/create' do
  @user = User.new(email: params[:email], password: params[:password])
  if @user.validate?
    @user.save!
    session[:user_id] = @user.id 
    redirect '/'
  else
    @error = "Invalid Username, Email or Password"
    redirect '/create'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end

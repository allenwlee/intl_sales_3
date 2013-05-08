get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/sales' do
  Sale.create(territory: params[:territory], bid: params[:bid], ask: params[:ask], close: params[:close], close_date: params[:close_date])
end

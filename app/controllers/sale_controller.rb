get 'user/:id/sale/create' do
  if session[:user_id]
    erb :sale_input
  else
    erb :no_permission
  end
end

get 'user/:id/sale' do
  erb :sale_output
end
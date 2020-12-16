
get '/alerts' do
  Alert.find({})
end

get '/alert/get/:id' do |id|
  Alert.find(id)
end

post '/alert/create' do

end

post '/alert/update/:id' do |id|

end

post '/alert/delete/:id' do |id|

end

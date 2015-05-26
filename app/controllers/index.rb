get '/' do
  #Look in app/views/index.erb
  @input = params[:input]
  puts "Show a list of anagrams for #{@input}"




  erb :index
end

post '/:word' do
  input = params[:user_input]
  redirect to("/#{input}")
end

get '/:word' do
  input = params[:word]
  @output = Word.anagrams_for(input)
  erb :result
end




# seeded ur database 'name'
# before save callback that will sort your name
# update old records

# Word.find_each(&:save)

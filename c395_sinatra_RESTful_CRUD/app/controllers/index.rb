get '/' do
  # Look in app/views/index.erb
  erb :index
end

# ######################################################
# # SHOW NOTES
# ######################################################

get '/notes' do
end

######################################################
# CREATE NOTE
######################################################

get '/notes/new' do
  erb :new_note
end

post '/notes' do
  @note = Note.create!(params[:note])
  erb :confirm_new_note
end

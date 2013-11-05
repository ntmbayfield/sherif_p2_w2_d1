get '/' do
  # Look in app/views/index.erb
  redirect '/notes'
end

# ######################################################
# # SHOW NOTES
# ######################################################

get '/notes' do
  @notes = Note.all
  erb :notes
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

######################################################
# EDIT NOTE
######################################################

get '/notes/:id/edit' do
  @note = Note.find(params[:id])
  erb :edit_note
end

put '/notes/:id' do
  @note = Note.find(params[:id])
  @note.update_attributes(params[:note])
  erb :confirm_update_note
end

######################################################
# DELETE NOTE
######################################################

delete '/notes/:id' do
  Note.find(params[:id]).destroy
  redirect '/'
end

######################################################
# 404
######################################################
not_found do
  'wassup 404?!'
end

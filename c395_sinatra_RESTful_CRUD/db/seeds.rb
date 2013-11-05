require 'faker'

20.times do
  Note.create(title: Faker::Company.catch_phrase, content: Faker::Company.bs)
end




require 'faker'

20.times do
  Note.create(name: Faker::Company.catch_phrase, content: Faker::Company.bs)
end




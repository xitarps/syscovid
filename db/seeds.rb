# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def generate_password
  letters = ('a'..'z').to_a
  s_letters = ['@','_','!','#','&']
  numbers = (0..9).to_a
  moment = DateTime.now.to_s.gsub(':','-').split('-').shuffle
  size = (6..10).to_a.shuffle.first
  pwd = ''
  size.times { pwd = pwd+letters.shuffle.last.upcase+s_letters.shuffle.last.upcase+numbers.shuffle.last.to_s+(moment.shuffle.pop unless moment.empty?)}
  pwd
end

User.create(email:'aarondasilva@syscovid.com', password: generate_password, user_zip_code:'01001000', country:'BR', gender: 1, name: 'Aaron da silva',age: 1)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Creation de 10 Cours avec un nombre random de leçons pour chacun
10.times do
  course = Course.create(title: Faker::Book.title, description: Faker::OnePiece.quote)
  rand(4..7).times do
    lesson = Lesson.create(course_id: course.id, title: Faker::Book.title, body: Faker::OnePiece.quote)
  end
end

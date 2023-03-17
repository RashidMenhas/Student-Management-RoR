# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

student = Student.create(
    first_name: 'Rashid',
    last_name: 'Menhas',
    email: 'rashid@gmail.com'
)

student = Student.new(
    first_name: 'Sami',
    last_name: 'Ullah',
    email: 'samiullah@gmail.com'
)
student.save

20.times do |i|
    Student.create(
        first_name: "Student #{i+1}",
        last_name: "Student #{i+1}",
        email: "Student #{i+1} @gmail.com"
    )
end

Student.all.each do |student|
    student.blogs.create(title: "Dummy Blog for Student #{student.id}", content:"custom content pending")
    student.blogs.create(title: "Dummy Blog for Student #{student.id}", content:"custom content pending")

end

10.times do |i|
    Course.create(
        name: "Course #{i+1}",
        description: "Course #{i+1}",
    )
end
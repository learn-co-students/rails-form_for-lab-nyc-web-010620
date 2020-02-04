# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

s1 = SchoolClass.create(title:"Juniours", room_number:508)
s2 = SchoolClass.create(title:"Learners", room_number:510)

student = Student.create(first_name: "Bob", last_name: "Manchkin", school_class: s1)
student = Student.create(first_name: "Angela", last_name: "Fly", school_class:s1)
student = Student.create(first_name: "Izy", last_name: "Snow", school_class:s1)
student = Student.create(first_name: "Shrek", last_name: "Green", school_class:s2)
student = Student.create(first_name: "Elza", last_name: "Frosen", school_class:s2)
student = Student.create(first_name: "John", last_name: "Smith", school_class:s2)









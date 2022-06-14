# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
admin = UserX.create({email: "admin@zaggle.in",username: "Admin123" ,password:"admin123", role:true})
admin = UserX.create({email: "admin2@zaggle.in",username: "Admin234" ,password:"admin234", role:true})
admin = UserX.create({email: "admin3@zaggle.in",username: "Admin356" ,password:"admin356", role:true})
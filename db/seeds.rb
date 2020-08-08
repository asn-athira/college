# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'colorize'


puts "Adding Courses".green
 Course.create([
                   {   name: "B.E CSE",code: 'CS121	', description: 'Computer science engineering' , number_sem: '8' ,status: 'Active'}, 
                   {   name: "B.E EC",code: 'EC122	', description: 'Electrical engineering' , number_sem: '8' ,status: 'Active'}, 
                   {   name: "B.E Civil",code: 'CV123	', description: 'Civil engineering' , number_sem: '8' ,status: 'Active'}, 
                   {   name: "B.E Mechanical",code: 'ME124	', description: 'Mechanical engineering' , number_sem: '8' ,status: 'Active'}, 

                 ])
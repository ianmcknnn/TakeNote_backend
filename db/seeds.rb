# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Page.destroy_all
Journal.destroy_all
User.destroy_all

User.create(username: 'Ian', password: 'Ian')
Journal.create(title: 'First Journal', user_id: User.first.id)
Page.create(pageNumber: 0, label: 'Arithmetic', pageContent: '2+2=4', journal_id: Journal.first.id)
Page.create(pageNumber: 1, pageContent: '2*2=4', journal_id: Journal.first.id)
Page.create(pageNumber: 2, pageContent: '2+2+2*2=2^((2^2)-2/2)', journal_id: Journal.first.id)
Page.create(pageNumber: 3, label: 'Science', pageContent: "Scientific Method: \n1. Mess around \n2. Find out", journal_id: Journal.first.id)
Page.create(pageNumber: 4, label: 'History', pageContent: '?????', journal_id: Journal.first.id)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'delete all'
Category.delete_all
Article.delete_all

puts 'create categories'
sains = Category.create(name: 'Sains', slug: 'sains')
tekno = Category.create(name: 'Tekno', slug: 'tekno')
sport = Category.create(name: 'Sport', slug: 'sport')

puts 'create articles'
Article.create(title: 'Penemuan tentang telur ayam', content_body: 'Ini adalah artiken tentang sains', category: sains, views_count: 10)
Article.create(title: 'Penemuan tentang matahari', content_body: 'Ini adalah artiken tentang matahari dilangit', category: sains, views_count: 5)
Article.create(title: 'Draft baru', content_body: 'Baru Draft', category: sains, views_count: 1, published: false)
Article.create(title: 'Teknologi komputeer terbaru', content_body: 'Ini adalah artiken tentang komputer', category: tekno, views_count: 20)
Article.create(title: 'Pemain Sepakbola berskandal', content_body: 'Ini adalah artiken tentang olahraga', category: sport, views_count: 26)
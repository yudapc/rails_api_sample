# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sains = Category.create(name: 'Sains', slug: 'sains')
tekno = Category.create(name: 'Tekno', slug: 'tekno')
sport = Category.create(name: 'Sport', slug: 'sport')

Article.create(title: 'Penemuan tentang telur ayam', content_body: 'Ini adalah artiken tentang sains', category: sains)
Article.create(title: 'Penemuan tentang matahari', content_body: 'Ini adalah artiken tentang matahari dilangit', category: sains)
Article.create(title: 'Teknologi komputeer terbaru', content_body: 'Ini adalah artiken tentang komputer', category: tekno)
Article.create(title: 'Pemain Sepakbola berskandal', content_body: 'Ini adalah artiken tentang olahraga', category: sport)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.create(name: 'Kelly Clarkson', bio: 'American Idol First Season Winner')
Genre.create(name: "Country")
Song.create(name: "Because of You", artist_id: 1, genre_id: 1)
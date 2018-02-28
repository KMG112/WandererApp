# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p = Path.create(
	 content: " Test 1 Path 1"
	)

o = Path.create(
	 content: " Test 1 Path 2"
	)
c = Chapter.create(
	name: "Test 1",
    email: "test1@gmail.com",
    content: "1 This is the first test",
    path1_id: p.id,
    path2_id: o.id

	)
f = c.plots.create(path:p)
c.paths << o

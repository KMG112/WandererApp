# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p = Path.create(content: 'Test1',used: true)
o = Path.create(content: 'Test2',used: true)


e = Path.create(content: 'Test3')
f = Path.create(content: 'Test4')

q = Path.create(content: 'Test5')
w = Path.create(content: 'Test6')

c = Chapter.create(
	name: 'T1',
    email: 'test1@gmail.com',
    content: '1 This is the first test',
    path1_id: p.id,
    path2_id: o.id,
    lowest: false

	)

t = Chapter.create(
	name: 'T2',
    email: 'test2@gmail.com',
    content: '2 This is the first test',
    path1_id: e.id,
    path2_id: f.id,
    pathPrev_id: 1

	)

b = Chapter.create(
	name: 'T3',
    email: 'test3@gmail.com',
    content: '3 This is the first test',
    path1_id: q.id,
    path2_id: w.id,
    pathPrev_id: 2

	)





c.plots.create(path: p)
c.paths << o


t.plots.create(path: e)
t.paths << f

b.plots.create(path: q)
b.paths << w

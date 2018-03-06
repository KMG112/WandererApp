# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p = Path.create(content: "A bookstore sounds like the perfect way to spend an afternoon.",used: true)
o = Path.create(content: "You got no time for books, let's keep rolling and see where the day takes you. ",used: true)

e = Path.create(content: "Take the book upstairs and see about this reading room.",used: true)
f = Path.create(content: "Follow the girl to the back to check out the greenhouse.")

q = Path.create(content: "Lean in closer to the talking salamander and ask why it's in trouble and how you can help.")
w = Path.create(content: "Nope. No talking salamander is going to play you. Snatch up this abomination and take it to the authorities.")

a = Path.create(content: "Take the drink, by now you're hands are shaking and it might help settle your nerves.")
s = Path.create(content: "This place creeps you out. Decline the drink and head for the exit as quickly as possible.")


c = Chapter.create(
	name: 'Administrator',
    email: 'chris.j.gannon@gmail.com',
    content: "Today is the first day of sunshine after a long wet winter and you're sitting at a café in East Austin watching a pair of mockingbirds chase each other from power lines to tree branches with quick flashes of white and grey and a group of students are laughing at a table next to you and your coffee is warm in your hands. A more beautiful day would be hard to imagine.

The friend you were supposed to meet has cancelled on you and now you are free to spend the afternoon unencumbered by companionship or social obligation. You pay for your coffee, get on your bike, and lazily roll down the small residential streets lined on either side with bungalows, paint all peeling, nestled cozy under a canopy of hackberry and live oak. 

You know this area quite well, but today you notice something different about one of the older homes. This building is narrow and set back deep on the lot, mostly obscured by a giant live oak and all overgrown with pride of barbados and frostweed. The large front window is painted with gold lettering:

W. F. Strayhorn's
Rare & Imported Books",
    path1_id: p.id,
    path2_id: o.id,
    lowest: false

	)

t = Chapter.create(
	name: "Bear",
    email: "chris.j.gannon@gmail.com",
    content: "
Inside the bookstore is a single room, surprisingly well lit, with one large free standing shelf filled with thick, leather bound books. The walls are all covered with old photographs - yellowing black and white images of people in antiquated clothing, landscapes with small horse mounted figures, a ship crisp against a foreground of blurry people. 

Behind a desk sits a young girl playing on her phone.

'You're the bookkeeper?'

'no, that's my father. I just work here sometimes' she replies without looking up. 'Feel free to grab a book if you'd like, we have a reading room upstairs. You can get a drink up there too.'

You browse the books. They're mostly science books with an emphasis on anthropology. You find one on South American indigenous people's usage of plants and pull it out to take closer look. Maybe there's some good illustrations you think.

'That's my favorite one' the bookkeeper's daughter tells you without breaking from the phone. 'You should check out our greenhouse out back. I've been growing some weird stuff.'",
    path1_id: e.id,
    path2_id: f.id,
    pathPrev_id: p.id

	)




b = Chapter.create(
    name: "Bear",
    email: "chris.j.gannon@gmail.com",
    content: "You keep rolling down the street, there's excitement in the air and people are buzzing about. You decide to head towards downtown, there's a good farmers market in the park today and if you hurry you can still get some nice produce.

At the market you pick up fresh bread and cheese and honey infused with extracts of fungus and a pear. There's a soft grassy lawn nearby and you find a spot near a giant round sculpture of a large black bird. The grass is a little wet but you find that you don't really mind. 

As you're lying in the grass you hear a tiny voice.

please help me

You look around. There's some kids chasing each other, laughing; there's a couple in their early twenties with a picnic lunch; there's the typical din of the farmers market, but no one seems to be in any kind of trouble. Maybe you imagined it.

You reach down to dribble a little more honey on your bread and stop short. Perched on the thick crust is a small orange salamander. It's tiny limbs pulling itself up onto your bread and across the soft cheese, it's rounded face looking straight up at you.  

please help me",
    path1_id: q.id,
    path2_id: w.id,
    pathPrev_id: o.id

    )

k = Chapter.create(
    name: "Bear",
    email: "chris.j.gannon@gmail.com",
    content: "
You walk up the narrow flight of stairs to a small landing tight against the ceiling, the exposed rafters still punctuated by ceramic tubes from the original wiring. There is a single solid wood door embellished with a detailed carving of a serpent - each scale rendered with a long mark from the chisel, feathering off it's body as if to new an saurian aura - and a hand lettered sign reading:

Quetzaano
A Fine Mezcaleria

You push the door open and inside you find an ornate bar - the floor of black concrete tile, the walls plaster with a black lacquered wainscoting, the bar itself carved from thick slabs of dark oak with a black marble bartop. On the end of the bar nearest you is a taxidermy snake painted wild colors and decorated with beads and feathers. It's eyes have been replaced with shimmering red jewels. It seems to stare directly at the entrance, as if to guard the bar. At the far end of the bar is a brass cash register and a wall of dusty bottles. 

Not much of a reading room you think.

You turn around to leave but the door you entered is now on the other side of the room. You look back at the bar and the layout has been flipped. The end that used to hold the cash register now displays the taxidermy and in front of you now sits the register and standing behind it a man with a ferocious mustache. 

'You look lost.' He says, 'Can I offer you a drink?'",
    path1_id: a.id,
    path2_id: s.id,
    pathPrev_id: e.id

    )


c.plots.create(path: p)
c.paths << o


t.plots.create(path: e)
t.paths << f

b.plots.create(path: q)
b.paths << w

k.plots.create(path: a)
k.paths << s



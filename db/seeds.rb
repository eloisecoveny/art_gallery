require_relative("../models/Artist")
require_relative("../models/Exhibit")

require("pry")

Exhibit.delete_all()
Artist.delete_all()

artist1 = Artist.new({"name" => "Tracey Emin", "born" => "1963", "biography" => "Tracey Emin is an English artist known for her autobiographical and confessional artwork", "image" => "https://pbs.twimg.com/profile_images/722461820724883456/XFJS_GlV_400x400.jpg"})
artist1.save()

artist2 = Artist.new({"name" => "Susan Philipsz", "born" => "1965", "biography" => "is a Scottish artist who won the 2010 Turner Prize. Originally a sculptor, she is best known for her sound installations. She records herself singing a cappella versions of songs which are replayed over a public address system in the gallery or other installation. She currently lives and works in Berlin.", "image" => "https://artmuseum.pl/public/upload/photo/0638_0406/51f788b8ccf58.jpg"})
artist2.save()

exhibit1 = Exhibit.new({"title" => "Terribly Wrong", "subtitle" => "Diaries of a Liar", "opening" => "19 February 2019", "closing" => "31 March 2019", "description" => "Emin's monoprints have a diaristic aspect and frequently depict events from the past.", "artist_id" => artist1.id, "category" => "performance", "image" => "https://www.tate.org.uk/art/images/work/P/P11/P11565_10.jpg"})
exhibit1.save()

exhibit2 = Exhibit.new({"title" => "You Are Not Alone", "subtitle" => "Would the Earth Exist Without the Sun?", "opening" => "1 March 2019", "closing" => "10 May 2019", "description" => "A sound installation by Philipsz entitled You are not alone (Would the Earth Exist Without the Sun?) is her first “invisible” sculpture in the Bródnowski Park.", "artist_id" => artist2.id, "category" => "sound installation", "image" => "https://mapmagazine.co.uk/assets/articles/_entry/61814.01_BARRADA_vdet13_0.jpg"})
exhibit2.save()


binding.pry
nil

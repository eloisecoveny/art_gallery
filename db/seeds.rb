require_relative("../models/Artist")
require_relative("../models/Category")
require_relative("../models/Exhibit")
require_relative("../models/TextFormat")

require("pry")

Exhibit.delete_all()
Category.delete_all()
Artist.delete_all()

artist1 = Artist.new({"name" => "Tracey Emin", "born" => "1963", "biography" => "Tracey Emin is an English artist known for her autobiographical and confessional artwork. Emin produces work in a variety of media including drawing, painting, sculpture, film, photography, neon text and sewn appliqué. Once the 'enfant terrible' of the Young British Artists in the 1980s, Tracey Emin is now a Royal Academician of the Royal Academy of Arts.

In December 2011, she was appointed Professor of Drawing at the Royal Academy; with Fiona Rae, she is one of the first two female professors since the Academy was founded in 1768.", "image" => "https://pbs.twimg.com/profile_images/722461820724883456/XFJS_GlV_400x400.jpg"})
artist1.save()

artist2 = Artist.new({"name" => "Susan Philipsz", "born" => "1965", "biography" => "Susan Philipsz is a Scottish artist who won the 2010 Turner Prize. Originally a sculptor, she is best known for her sound installations. She records herself singing a cappella versions of songs which are replayed over a public address system in the gallery or other installation. She currently lives and works in Berlin.\n

Philipsz predominantly creates sound installations using recordings of her own voice that are played in specific geographical sites to 'heighten the visitor's engagement with their surroundings while inspiring thoughtful introspection.' Although Philipsz sings many of her works, it is a key element of her work that she has an untrained, average voice. Philipsz cannot read or write sheet music. She said: 'Everyone can identify with a human voice. I think hearing an unaccompanied voice, especially an untrained one, even if it's singing a song you don't know, can trigger some really powerful memories and associations. If I'd gone to music school and had proper training, I would not be doing what I do today.'", "image" => "https://news.artnet.com/app/news-upload/2015/11/Susan-PHILIPSZ-tate.jpg"})
artist2.save()

artist3 = Artist.new({"name" => "Edward Burne-Jones", "born" => "1833", "biography" => "Edward Coley Burne-Jones was an English artist and designer closely associated with the later phase of the Pre-Raphaelite movement, who worked closely with William Morris on a wide range of decorative arts as a founding partner in Morris, Marshall, Faulkner & Co. Burne-Jones was closely involved in the rejuvenation of the tradition of stained glass art in Britain; his stained-glass include windows in St. Philip's Cathedral, Birmingham, St Martin in the Bull Ring, Birmingham, Holy Trinity Church, Sloane Square, Chelsea, St Peter and St Paul parish church in Cromer, St Martin's Church in Brampton, Cumbria (the church designed by Philip Webb), St Michael's Church, Brighton, All Saints, Jesus Lane, Cambridge, St Edmund Hall and Christ Church, two colleges of the University of Oxford. His stained glass works also feature in St. Anne's Church, Brown Edge, Staffordshire Moorlands and St.Edward the Confessor church at Cheddleton Staffordshire. Burne-Jones's early paintings show the heavy inspiration of Dante Gabriel Rossetti, but by the 1860s Burne-Jones was discovering his own artistic 'voice'. In 1877, he was persuaded to show eight oil paintings at the Grosvenor Gallery (a new rival to the Royal Academy). These included The Beguiling of Merlin. The timing was right, and he was taken up as a herald and star of the new Aesthetic Movement.\n

In addition to painting and stained glass, Burne-Jones worked in a variety of crafts; including designing ceramic tiles, jewellery, tapestries, and mosaics.", "image" => "https://upload.wikimedia.org/wikipedia/commons/8/81/Edward_Burne-Jones_Photogravure_Hollyer.jpg"})
artist3.save()

artist4 = Artist.new({"name" => "Dorothea Tanning", "born" => "1910", "biography" => "Dorothea Margaret Tanning (August 25, 1910 – January 31, 2012) was an American painter, printmaker, sculptor, writer, and poet. Her early work was influenced by Surrealism.", "image" => "https://visit-sedona.s3.amazonaws.com/CMS/7519/dorthea_tanning__wysiwyg.jpg"})
artist4.save()

artist5 = Artist.new ({"name" => "Joanna Piotrowska", "born" => "1985", "biography" => "Joanna lives and works between London and Warsaw. She studied Photography at the Royal College of Art in London and Academy of Fine Arts in Kraków. Her photographic practice focuses on familial structures and their relationship to the wider systems—including politics, economics, social, and cultural life. She explores the past and the present, showing all the inequalities of power and psychological drama, and translating the gestures and everyday intimate behaviors into new scenarios - giving them an almost caricature-like quality. The artist uses her surroundings to show the anxiety and psychological tension of the domestic space - rather as a document of a performance than a documentary image. In 2014 she published her first monograph book 'Frowst', published by MACK Books, London.", "image" => "https://fkmagazine.lv/wp-content/uploads/2015/03/10612792_295470817324125_6143509861945122209_n.jpg"})
artist5.save()

artist6 = Artist.new({"name" => "Pierre Bonnard", "born" => "1867", "biography" => "Pierre Bonnard was a French painter and printmaker, as well as a founding member of the Post-Impressionist group of avant-garde painters Les Nabis. Bonnard preferred to work from memory, using drawings as a reference, and his paintings are often characterized by a dreamlike quality. The intimate domestic scenes, for which he is perhaps best known, often include his wife Marthe de Meligny.\n

Bonnard has been described as 'the most thoroughly idiosyncratic of all the great twentieth-century painters', and the unusual vantage points of his compositions rely less on traditional modes of pictorial structure than voluptuous color, poetic allusions and visual wit. Identified as a late practitioner of Impressionism in the early 20th century, he has since been recognized for his unique use of color and his complex imagery. 'It's not just the colors that radiate in a Bonnard,' writes Roberta Smith, 'there’s also the heat of mixed emotions, rubbed into smoothness, shrouded in chromatic veils and intensified by unexpected spatial conundrums and by elusive, uneasy figures.'", "image" => "https://upload.wikimedia.org/wikipedia/en/f/f5/Pierre_Bonnard%2C_Self-portrait._c._1889%2C_oil_on_canvas%2C_21.5_x_15.8_cm.jpg"})
artist6.save()

artist7 = Artist.new({"name" => "Robert Mapplethorpe", "born" => "1946", "biography" => "Robert Mapplethorpe was an American photographer, known for his sensitive yet blunt treatment of controversial subject-matter in the large-scale, highly stylized black and white medium of photography. His work featured an array of subjects, including celebrity portraits, male and female nudes, self-portraits and still-life images of flowers. His most controversial work is that of the BDSM subculture in the late 1960s and early 1970s of New York City. The homoeroticism of this work fuelled a national debate over the public funding of controversial artwork.", "image" => "https://upload.wikimedia.org/wikipedia/en/4/4c/Robert_Mapplethorpe%2C_Self-portrait%2C_1980.jpg"})
artist7.save()

category1 = Category.new("name" => "performance")
category1.save()

category2 = Category.new("name" => "sculpture")
category2.save()

category3 = Category.new("name" => "sound installation")
category3.save()

category4 = Category.new("name" => "installation")
category4.save()

category5 = Category.new("name" => "painting")
category5.save()

category6 = Category.new("name" => "ceramics")
category6.save()

category7 = Category.new("name" => "moving image")
category7.save()

category8 = Category.new("name" => "printmaking")
category8.save()

category9 = Category.new("name" => "photography")
category9.save()

exhibit1 = Exhibit.new({"title" => "Terribly Wrong", "subtitle" => "Diaries of a Liar", "opening" => "2019-02-19", "closing" => "2019-03-31", "description" => "Emin's monoprints have a diaristic aspect and frequently depict events from the past. Often they incorporate text as well as image, although some bear only text and others only image. The text appears as the artist's stream of consciousness voice. The rapid, one-off technique involved in making monoprints is perfectly suited to (apparently) immediate expression, as is Emin's scratchy drawing style. Terribly Wrong is based on an abortion the artist had during a 'week from hell' in 1994. During this week Emin had major dentistry, split up with her boyfriend and had an abortion. She exhibited drawings, together with documentation and remnants of the events of this disastrous week in Minky Manky at South London Gallery in 1995 under the collective title A Week From Hell. From the Week of Hell '94 (see Tate P11568) refers to the same event.", "artist_id" => artist1.id, "category_id" => category1.id, "image" => "https://uploads1.wikiart.org/images/tracey-emin/everybodies-been-there-1997.jpg!Large.jpg"})
exhibit1.save()

exhibit2 = Exhibit.new({"title" => "War Damaged Musical Instruments", "subtitle" => "", "opening" => "2019-03-01", "closing" => "2019-05-10", "description" => "War Damaged Musical Instruments features fourteen recordings of British and German brass and wind instruments damaged in conflicts over the last 200 years.\n

The notes recorded are based on the tones of the military bugle call ‘The Last Post’, but the tune is fragmented to such an extent that it is almost unrecognisable. The tune signalled to lost and wounded soldiers that it was safe to return to base and is used today as a final farewell in military funerals and Remembrance ceremonies.\n

The artist has worked with the architecture of the space devising a sequence of sounds that travel the length of the Duveen galleries. Philipsz explains,\n

I am less interested in creating music than to see what sounds these instruments are still capable of, even if that sound is just the breath of the player as he or she exhales through the battered instrument. All the recordings have a strong human presence.\n

Forming part of the 14-18 NOW arts programme to commemorate the First World War centenary, the work features several instruments from that period, and has a special resonance with the history of Tate Britain, as part of the site was originally a military hospital that treated soldiers injured in the First World War.\n

It is also a poignant reminder that conflict and loss are present in the world today.", "artist_id" => artist2.id, "category_id" => category3.id, "image" => "https://www.tate.org.uk/sites/default/files/styles/width-840/public/images/phillipszwardamagedinstruments.jpg"})
exhibit2.save()

exhibit3 = Exhibit.new({"title" => "Edward Burne-Jones", "subtitle" => "One of the last Pre-Raphaelites, Edward Burne-Jones brought imaginary worlds to life in awe-inspiring paintings, stained glass windows and tapestries", "opening" => "2018-10-24", "closing" => "2019-02-24", "description" => "Born in 1833, Burne-Jones rejected the industrial world of the Victorians, looking instead for inspiration from medieval art, religion, myths and legends.\n

He made spectacular works depicting Arthurian knights, classical heroes and Biblical angels – working across painting, stained glass, embroidery, jewellery and more. With his friend William Morris he was a pioneer of the arts and crafts movement, which aimed to bring beautiful design to everyone.\n

This exhibition charts Burne-Jones’s rise from an outsider with little formal art training to one of the most influential British artists of the late 19th century.\n

With over 150 objects, it will bring together major works from across his career for the first time in generations. Highlights include some of his best loved works, such as his huge paintings telling the dreamlike fairytale of Sleeping Beauty, wall-filling tapestries and his remarkable drawings.", "artist_id" => artist3.id, "category_id" => category5.id, "image" => "https://www.tate.org.uk/sites/default/files/styles/width-420/public/id_096_1_2_42.jpg"})
exhibit3.save()

exhibit4 = Exhibit.new({"title" => "Dorothea Tanning", "subtitle" => "Discover the artist who pushed the boundaries of surrealism", "opening" => "2019-02-27", "closing" => "2019-06-09", "description" => "This is the first large-scale exhibition of Dorothea Tanning’s work for 25 years. It brings together 100 works from her seven-decade career – from enigmatic paintings to uncanny sculptures.\n

Tanning wanted to depict ‘unknown but knowable states’: to suggest there was more to life than meets the eye. She first encountered surrealism in New York in the 1930s. In the 1940s, her powerful self-portrait Birthday 1942 attracted the attention of fellow artist Max Ernst – they married in 1946. Her work from this time combines the familiar with the strange, exploring desire and sexuality.\n

From the 1950s, now working in Paris, Tanning’s paintings became more abstract, and in the 1960s she started making pioneering sculptures out of fabric. A highlight of the exhibition is the room-sized installation Chambre 202, Hotel du Pavot 1970-3. This sensual and eerie work features bodies growing out the walls of an imaginary hotel room. In later life, Tanning dedicated more of her time to writing. Her last collection of poems, Coming to That, was published at the age of 101.​", "artist_id" => artist4.id, "category_id" => category5.id, "image" => "https://www.tate.org.uk/art/images/work/T/T07/T07346_9.jpg"})
exhibit4.save()

exhibit5 = Exhibit.new({"title" => "Joanna Piotrowska All Our False Devices", "subtitle" => "Joanna Piotrowska presents an installation of carefully composed black and white photographs", "opening" => "2019-03-08", "closing" => "2019-06-09", "description" => "Born in Poland and based in London, Piotrowska has an interest in domestic spaces and man-made environments. For one series of works she asked people in Lisbon, Rio de Janeiro, Warsaw and London to build makeshift shelters in their homes and gardens, subverting childhood play.\n

Other works present gestures and movements from self-defence manuals, implying violence against women as well as their empowerment. Her photographs and films relate to self-protection, psychophysical relationships and the power dynamics underlying how we relate to each other.\n

Her work was included in Being: New Photography 2018, MoMA, New York and 10th Biennale Berlin, 2018, Germany and forthcoming projects include a solo show at Kunsthalle Basel in the autumn 2019.​", "artist_id" => artist5.id, "category_id" => category9.id, "image" => "https://www.tate.org.uk/sites/default/files/styles/width-420/public/image_2_1.jpg"})
exhibit5.save()

exhibit6 = Exhibit.new({"title" => "Pierre Bonnard
The Colour of Memory", "subtitle" => "Rediscover this master of colour and composition at Hill Street Gallery", "opening" => "2019-01-23", "closing" => "2019-05-06", "description" => "This is the first major exhibition of Pierre Bonnard’s work in the UK since the much-loved show at Tate 20 years ago. It will allow new generations to discover Bonnard’s unconventional use of colour, while surprising those who think they already know him.\n

Born 1867, Bonnard was, with Henri Matisse, one of the greatest colourists of the early 20th century. He preferred to work from memory, imaginatively capturing the spirit of a moment and expressing it through his unique handling of colour and innovative sense of composition.\n

The exhibition concentrates on Bonnard’s work from 1912, when colour became a dominant concern, until his death in 1947. It presents landscapes and intimate domestic scenes which capture moments in time – where someone has just left the room, a meal has just finished, a moment lost in the view from the window, or a stolen look at a partner.", "artist_id" => artist6.id, "category_id" => category5.id, "image" => "https://www.tate.org.uk/sites/default/files/styles/width-600/public/le_jardin_v.2_1.jpg"})
exhibit6.save()

exhibit7 = Exhibit.new({"title" => "Robert Mapplethorpe", "subtitle" => "The Atkinson will show the work of renowned American photographer, Robert Mapplethorpe", "opening" => "2018-12-15", "closing" => "2019-03-23", "description" => "Mapplethorpe is known for a vast, provocative and powerful body of work which has established him as one of the most important artists of the late twentieth century. The works in the exhibition are drawn from the collection of ARTIST ROOMS which holds one of the most significant collections of Mapplethorpe’s photographs in the world.\n

ARTIST ROOMS is a collection of international modern and contemporary art jointly owned by Tate and National Galleries of Scotland. ARTIST ROOMS was established through The d’Offay Donation in 2008, with the assistance of the National Heritage Memorial Fund, Art Fund and the Scottish and British Governments.", "artist_id" => artist7.id, "category_id" => category9.id, "image" => "https://www.tate.org.uk/art/images/work/AR/AR00185_9.jpg"})
exhibit7.save()


binding.pry
nil


# mastodon = Artist.create!( { name: "", bio: "", image_url: "" } )

mastodon = Artist.create!( { name: "Mastodon", bio: "Atlanta-based sludge/stoner/alternative metal outfit Mastodon formed in 1999 around the talents of guitarist Bill Kelliher, drummer Bränn Dailor, bassist/vocalist Troy Sanders, and guitarist/vocalist Brent Hinds. One of the more notable New Wave of American Heavy Metal acts, a genre spawned in the mid-'90s by bands like Pantera, Biohazard, and Machine Head, Mastodon's innovative, lyrically astute blend of progressive metal, grindcore, and hardcore helped position the band as one of the preeminent metal acts of the early 21st century.", image_url: "https://goo.gl/Y8Xmoe" } )


artists_count = Artist.all.length
puts "#{artists_count} artists were created."

deftones = Artist.create!( { name: "Deftones", bio: "Deftones is an American alternative metal band from Sacramento, California, U.S. Formed in 1988, the band was founded by Chino Moreno (lead vocals, rhythm guitar), Stephen Carpenter (lead guitar), Abe Cunningham (drums) and Dominic Garcia (bass). During the group's first five years, the band's lineup changed several times, but stabilized in 1993 when Cunningham rejoined the group after his departure in 1990. Cunningham replaced John Taylor, who had replaced Garcia after he had switched to drums in 1990, and the bassist role had been filled by Chi Cheng. The lineup remained stable for fifteen years, with the exception of keyboardist and turntablist Frank Delgado being added in 1999.", image_url: "https://goo.gl/1G7uh2" } )

Album.create!([
  { album_name: "Adrenaline", released: 1995, album_image_url: "https://goo.gl/vMO6Og", artist: deftones },
  { album_name: "Around The Fur", released: 1997, album_image_url: "https://goo.gl/72yX73", artist: deftones},
  { album_name: "White Pony", released: 2000, album_image_url: "https://goo.gl/AIp8YL", artist: deftones },
  { album_name: "Deftones", released: 2003, album_image_url: "https://goo.gl/DYSpVv", artist: deftones },
  { album_name: "Saturday Night Wrist", released: 2006, album_image_url: "https://goo.gl/aK3a6J", artist: deftones },
  { album_name: "Diamond Eyes", released: 2010, album_image_url: "https://goo.gl/n1kxKI", artist: deftones },
  { album_name: "Koi No Yokan", released: 2012, album_image_url: "https://goo.gl/gSfGmQ", artist: deftones },
  { album_name: "Gore", released: 1995, album_image_url: "https://goo.gl/7gJNFY", artist: deftones },
])

albums_count = Album.all.length
puts "#{albums_count} albums were created."

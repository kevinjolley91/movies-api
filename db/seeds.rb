User.create!([
  {name: "Kevin", email: "kevin@example.com", password_digest: "$2a$12$OT9CCZHbYgRIeTfpCxX9fe55Dui5hQj8ZrbLjJ4gDhFJNMsabtcNq", image_url: "google.com/images"},
  {name: "John", email: "john@example.com", password_digest: "$2a$12$oqsf.qtDoiXYEk1LcI5qM.gRh6t6fTgkkU6wepi6C/f/xHIA0LowC", image_url: "google.com/images"},
  {name: "Mike", email: "mike@example.com", password_digest: "$2a$12$DVmRtU12LvCsUkYuWbfg0OGrEZ5dop.kd.6zoPkQyP/CPVvk5MUEW", image_url: "google.com/images"},
  {name: "Fred", email: "fred@example.com", password_digest: "$2a$12$CZFHHbv1otN7qxJaLA2kguQPYgk.4CkLC3aEm4eUe2nEVpamRlImq", image_url: "google.com/images"},
  {name: "Jeff", email: "jeff@example.com", password_digest: "$2a$12$6CVopwebRlNxatxRv1FMyOkFaZo/YUDAVgrE492Tazk8Wgw5CylCK", image_url: "google.com/images"},
  {name: "Bobby", email: "bobby@example.com", password_digest: "$2a$12$2tjGTtkWthdnAItEFr/Y6uuMc7I.Rpg5UrNGO2Y6rTWzBODPdJlSe", image_url: "google.com/images"},
  {name: "George", email: "george@example.com", password_digest: "$2a$12$QmXMON2.32EBzE6ydvq7MOE0UJU5/PrxSR0AxJQ8DffIEHJM84nXa", image_url: "google.com/images"},
  {name: "Amanda", email: "amanda@example.com", password_digest: "$2a$12$oAnnHgxoRgROCHgsDd48/OWFGwkJcs5ws94ndHVwWpeYi.blKHb1u", image_url: "google.com/images"},
  {name: "Anakin", email: "anakin@example.com", password_digest: "$2a$12$DbZCLLd8HMkqfQ1I81SFkuXoir98jIP44X39YzahTcABRMdNRVq7G", image_url: "google.com/images"}
])
Movie.create!([
  {name: "John Wick", image_url: "https://myhotposters.com/cdn/shop/products/mHP0101_1024x1024.jpeg?v=1571444280", description: "Don't kill dogs.", category: "action"},
  {name: "Terminator 2", image_url: "https://www.movieposters.com/cdn/shop/products/ba46401f2935b4ea66c0f364e5a91fdf_494d1a8e-c326-4a88-9aea-c20eddba3a09_500x.jpg?v=1573594882", description: "A.I. took over", category: "action"},
  {name: "The Departed", image_url: "https://m.media-amazon.com/images/I/510gCMld+uL.jpg", description: "Expect twists", category: "just weird"},
  {name: "Grey Man", image_url: "https://upload.wikimedia.org/wikipedia/en/5/59/The_Gray_Man_poster.png", description: "spy stuff", category: "action"},
  {name: "Heat", image_url: "https://static.displate.com/857x1200/displate/2019-12-31/281e5b4685fca0b7abe3ef3f4de8a425_f89c44ae1ade319119df1a035b4b63d4.jpg", description: "Don't rob banks.", category: "action"},
  {name: "Thor: Ragnarok", image_url: "https://i.ebayimg.com/images/g/l88AAOSwsFVax5qg/s-l1600.jpg", description: "It's 80s Thor", category: "action"},
  {name: "John Wick 2", image_url: "https://www.themoviedb.org/t/p/original/5Dnd2PvII921OxKl1ef8KHQczZl.jpg", description: "Still don't kill dogs", category: "action"},
  {name: "Star Wars Episode 3", image_url: "https://m.media-amazon.com/images/I/61jCCwfO6HL.jpg", description: "Its Star Wars", category: "action"},
  {name: "John Wick 3", image_url: "https://musicart.xboxlive.com/7/446f6500-0000-0000-0000-000000000002/504/image.jpg?w=1920&h=1080", description: "You shouldn't have killed dogs.", category: "action"},
  {name: "John Wick 4", image_url: "https://www.thevillagesentertainment.com/wp-content/uploads/2023/03/John-wick-4-poster-scaled.jpg", description: "He's killing everything now.", category: "action"},
  {name: "Ford v Ferrari", image_url: "https://www.motortrend.com/uploads/sites/11/2019/11/Ford-vs-Ferrari-14.jpg?interpolation=lanczos-none&fit=around%7C691:1024", description: "They go fast", category: "cars, racing"},
  {name: "Avengers Endgame", image_url: "https://lumiere-a.akamaihd.net/v1/images/p_avengersendgame_19751_e14a0104.jpeg?region=0%2C0%2C540%2C810", description: "Oh snap", category: "action, scifi"}
])
Favorite.create!([
  {user_id: 2, movie_id: 2},
  {user_id: 3, movie_id: 3},
  {user_id: 4, movie_id: 4},
  {user_id: 1, movie_id: 2},
  {user_id: 2, movie_id: 1},
  {user_id: 8, movie_id: 7},
  {user_id: 8, movie_id: 3},
  {user_id: 1, movie_id: 1},
  {user_id: 1, movie_id: 7}
])

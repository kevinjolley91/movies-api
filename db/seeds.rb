User.create!([
  {name: "Kevin", email: "kevin@example.com", password_digest: "$2a$12$OT9CCZHbYgRIeTfpCxX9fe55Dui5hQj8ZrbLjJ4gDhFJNMsabtcNq", image_url: "google.com/images"},
  {name: "John", email: "john@example.com", password_digest: "$2a$12$oqsf.qtDoiXYEk1LcI5qM.gRh6t6fTgkkU6wepi6C/f/xHIA0LowC", image_url: "google.com/images"},
  {name: "Mike", email: "mike@example.com", password_digest: "$2a$12$DVmRtU12LvCsUkYuWbfg0OGrEZ5dop.kd.6zoPkQyP/CPVvk5MUEW", image_url: "google.com/images"},
  {name: "Fred", email: "fred@example.com", password_digest: "$2a$12$CZFHHbv1otN7qxJaLA2kguQPYgk.4CkLC3aEm4eUe2nEVpamRlImq", image_url: "google.com/images"}
])
Movie.create!([
  {name: "John Wick", image_url: "https://myhotposters.com/cdn/shop/products/mHP0101_1024x1024.jpeg?v=1571444280", description: "Don't kill dogs.", category: "action"},
  {name: "Terminator 2", image_url: "https://www.movieposters.com/cdn/shop/products/ba46401f2935b4ea66c0f364e5a91fdf_494d1a8e-c326-4a88-9aea-c20eddba3a09_500x.jpg?v=1573594882", description: "A.I. took over", category: "action"},
  {name: "The Departed", image_url: "https://m.media-amazon.com/images/I/510gCMld+uL.jpg", description: "Expect twists", category: "just weird"},
  {name: "Grey Man", image_url: "https://upload.wikimedia.org/wikipedia/en/5/59/The_Gray_Man_poster.png", description: "spy stuff", category: "action"}
])
Favorite.create!([
  {user_id: 1, movie_id: 1},
  {user_id: 2, movie_id: 2},
  {user_id: 3, movie_id: 3},
  {user_id: 4, movie_id: 4},
  {user_id: 1, movie_id: 2},
  {user_id: 1, movie_id: 3},
  {user_id: 1, movie_id: 4}
])

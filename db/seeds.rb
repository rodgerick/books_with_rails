# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

books = Book.create([
  {
    name: "The Lord of The Rings",
    image: "https://s26162.pcdn.co/wp-content/uploads/2017/05/the-lord-of-the-rings-book-cover-232x300.jpg"
  },
  {
    name: "The Hunger Games",
    image: "https://upload.wikimedia.org/wikipedia/en/thumb/d/dc/The_Hunger_Games.jpg/220px-The_Hunger_Games.jpg"
  },
  {
    name: "The Lord of The Flies",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLWNNk7HUD3dcEfma8n196xw7XBOg6X0tFsnbM1g_XYD08ZKWBxEIbcsYnvbbuagZ2WV4&usqp=CAU"
  },
  {
    name: "The Art of War",
    image: "https://video-images.vice.com/_uncategorized/1507823504823-suntzuAoW.jpeg"
  },
  {
    name: "Harry Potter",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB7wYEXrvTwZUxJ93jG9StxO0sh0NUk7I3ag&usqp=CAU"
  },
  {
    name: "Crime and Punishment",
    image: "https://awards.kyoorius.com/2015/design/wp-content/uploads/2015/08/26621.jpg"
  },
])

descriptions = Description.create([
  {
    author: "JRR Tolkien",
    book: books.first
  },
  {
    author: "Suzane Collins",
    book: books.second
  }
])
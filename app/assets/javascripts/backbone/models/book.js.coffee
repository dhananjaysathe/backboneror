class Bookstore.Models.Book extends Backbone.Model
  paramRoot: 'book'

class Bookstore.Collections.BooksCollection extends Backbone.Collection
  model: Bookstore.Models.Book
  url: '/books'

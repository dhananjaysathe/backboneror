class Bookstore.Routers.BooksRouter extends Backbone.Router

  initialize: (options) ->
    @books = new Bookstore.Collections.BooksCollection()
    @books.reset options.books

  routes:
    "index"       : "index"
    "new"         : "newBook"
    ":id"         : "show"
    ":id/edit"    : "edit"
    ".*"          : "index"

  index: ->
    @view = new Bookstore.Views.BooksIndexView({collection: @books})

  newBook: ->
    @view = new Bookstore.Views.BooksNewView({collection: @books})

  show: (id) ->
    book = @books.get(id)
    @view = new Bookstore.Views.BooksShowView({model: book})

  edit: (id) ->
    book = @books.get(id)
    @view = new Bookstore.Views.BooksEditView({model: book})

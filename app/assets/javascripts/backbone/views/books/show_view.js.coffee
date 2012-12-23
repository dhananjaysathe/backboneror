class Bookstore.Views.BooksShowView extends Backbone.View

  template: JST["backbone/templates/books/show"]

  el: '#books'

  initialize: ->
    @render()

  render: ->
    @$el.html(@template(@model.toJSON()))
    @

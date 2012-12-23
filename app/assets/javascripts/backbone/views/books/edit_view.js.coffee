class Bookstore.Views.BooksEditView extends Backbone.View

  template: JST["backbone/templates/books/edit"]

  el: '#books'

  events:
    "submit #edit-book" : "update"

  initialize: ->
    @render()

  render: ->
    @$el.html @template(@model.toJSON())
    @

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()
    name = $('#name').val()
    author = $('#author').val()
    status = $('#status').val()
    @model.save({name: name, author: author, status: status},
                success: (book) =>
                    @model = book
                    window.location.hash = "/#{@model.id}")

class Bookstore.Views.BooksNewView extends Backbone.View
 el: '#books'

 template: JST["backbone/templates/books/new"]

 events:
   "submit #new-book": "save"

 initialize: ->
   @render()

 render: ->
   @$el.html @template()

 save: (e) ->
   e.preventDefault()
   e.stopPropagation()
   name = $('#name').val()
   author = $('#author').val()
   status = $('#status').val()
   model = new Blog.Models.Post({name: name, author: author, status: status})
   @collection.create model,
        success: (book) =>
       @model = book
       window.location.hash = "/#{@model.id}"

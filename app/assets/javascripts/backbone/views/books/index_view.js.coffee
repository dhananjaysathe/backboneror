class Bookstore.Views.BooksIndexView extends Backbone.View

el: '#books'

template: JST["backbone/templates/books/index"]

initialize: ->
    @render()
    @addAll()

addAll: ->
    @collection.forEach(@addOne, @)

addOne: (model) ->
    @view = new Bookstore.Views.BookView({model: model})
    @$el.find('tbody').append @view.render().el

render: ->
    @$el.html @template()
    @

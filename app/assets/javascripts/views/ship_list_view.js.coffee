class Battleship.Views.ShipList extends Backbone.View
  tagName: 'ul'
  className: 'ships'

  render: ->
    @collection.each (model) ->
      view = new Battleship.Views.Ship({ model: model })
      view.render()
    this

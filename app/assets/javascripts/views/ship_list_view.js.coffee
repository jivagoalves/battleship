class Battleship.Views.ShipList extends Backbone.View
  tagName: 'ul'
  className: 'ships'

  render: ->
    @collection.each (model) ->
      new Battleship.Views.Ship({ model: model })
    this

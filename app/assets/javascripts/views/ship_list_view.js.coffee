class Battleship.Views.ShipList extends Backbone.View
  tagName: 'ul'
  className: 'ships'

  render: ->
    @collection.each(
      (model) ->
        shipView = new Battleship.Views.Ship({ model: model })
        @.$el.append(shipView.render().el)
      ,
      @
    )
    @

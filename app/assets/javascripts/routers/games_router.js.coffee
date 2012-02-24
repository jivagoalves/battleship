class Battleship.Routers.Games extends Backbone.Router
  routes:
    "": "index"

  index: ->
    new Battleship.Views.ShipList()

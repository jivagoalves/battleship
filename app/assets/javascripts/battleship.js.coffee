window.Battleship =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Battleship.Routers.Games()
    Backbone.history.start() if Backbone.history

$(document).ready ->
  Battleship.init()

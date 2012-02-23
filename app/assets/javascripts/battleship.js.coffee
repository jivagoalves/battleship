window.Battleship =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    Backbone.history.start() if Backbone.history

$(document).ready ->
  Battleship.init()

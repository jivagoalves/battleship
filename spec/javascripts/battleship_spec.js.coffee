describe 'Application', ->
  objects = [
    'Battleship'
    'Battleship.Routers'
    'Battleship.Views'
    'Battleship.Collections'
    'Battleship.Models'
  ]
  for object in objects
    it "should define the object #{object}", ->
      expect(eval(object)).toBeDefined()

  describe 'Battleship', ->
    describe '#init', ->
      beforeEach ->
        Backbone.history.stop() if Backbone.history
      describe 'when there is at least one route', ->
        it 'should start the Backbone history', ->
          new Backbone.Router({
            routes:
              "route": "callback"
          })

          spyOn Backbone.history, 'start'
          Battleship.init()
          expect(Backbone.history.start).toHaveBeenCalled()
      it 'should initialize the routers', ->
        routers = [
          'Games'
        ]
        for router in routers
          spyOn Battleship.Routers, router
        Battleship.init()
        for router in routers
          expect(eval("Battleship.Routers.#{router}")).toHaveBeenCalled()

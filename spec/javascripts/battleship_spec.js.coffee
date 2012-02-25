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
      it 'should start the Backbone.history when it exists', ->
        @stub Backbone, 'history', true
        Backbone.history.start = jasmine.createSpy()
        Backbone.history.route = jasmine.createSpy()
        Battleship.init()
        expect(Backbone.history.start).toHaveBeenCalled()
      it 'should initialize the routers', ->
        routers = [
          'Games'
        ]
        for router in routers
          @stub Battleship.Routers, router, true
        Battleship.init()
        for router in routers
          expect(Battleship.Routers[router]).toHaveBeenCalled()

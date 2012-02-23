describe 'Games router', ->
  beforeEach ->
    Backbone.history.stop() if Backbone.history
    @router = new Battleship.Routers.Games()
    Backbone.history.start({ silent: true })
    @router.navigate "someroute"
  afterEach ->
    Backbone.history.stop() if Backbone.history

  it 'should be defined', ->
    expect(Battleship.Routers.Games).toBeDefined()

  describe 'when the "index" route matches', ->
    it 'should call the callback for "index"', ->
      callback = jasmine.createSpy()
      @router.bind 'route:index', callback
      @router.navigate "", true
      expect(callback).toHaveBeenCalled()

describe 'ShipList view', ->
  beforeEach ->
    @shipView = new Backbone.View()
    @stub @shipView, 'render'
    @stub(Battleship.Views, 'Ship', true).andReturn(@shipView)
    @view = new Battleship.Views.ShipList()
  it 'should be defined', ->
    expect(Battleship.Views.ShipList).toBeDefined()
  it 'should create a list element', ->
    expect(@view.el.nodeName).toEqual("UL")
  it 'should have a class of "ships"', ->
    expect(@view.$el).toHaveClass('ships')
  describe '#render', ->
    beforeEach ->
      @models = [1..3].map (id) ->
        new Backbone.Model({ id: id })
      @view.collection = new Backbone.Collection(@models)
    it 'should create a Ship view for each ship', ->
      @view.render()
      expect(Battleship.Views.Ship.callCount).toEqual(@models.length)
      @models.forEach (model) ->
        expect(Battleship.Views.Ship).toHaveBeenCalledWith({ model: model })
    it 'should call Ship#render for each ship', ->
      @view.render()
      expect(@shipView.render.callCount).toEqual(@models.length)
    it 'should return the ShipList view', ->
      expect(@view.render()).toEqual(@view)

describe 'Ship view', ->
  beforeEach ->
    model = new Backbone.Model({ id: 1 })
    @view = new Battleship.Views.Ship({ model: model })
  it 'should be defined', ->
    expect(Battleship.Views.Ship).toBeDefined()
  it 'should have a tag name "li"', ->
    expect(@view.el.nodeName).toEqual('LI')
  it 'should have a class "ship"', ->
    expect(@view.$el).toHaveClass('ship')
  describe '#render', ->
    it 'should be chainable by returning itself', ->
      expect(@view.render()).toEqual(@view)
    it 'should render a draggable element', ->
      expect(@view.render().$el).toHaveAttr('draggable', 'true')

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

class Coffee

  constructor: (@name, @strength=1) ->

  brew: -> alert "brewing #{@name}"


class MaxgoodHouse extends Coffee
  constructor: (@name, @strength=0) ->
    @brand = 'Maxgood House'

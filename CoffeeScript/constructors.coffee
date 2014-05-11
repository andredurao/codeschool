class Coffee

  constructor: (name, strength=1) ->
    @name = name
    @strength = strength

  brew: -> alert "brewing #{@name}"
  pour: (amount=1) ->
    if amount is 1
      "Poured a single cup"
    else
      "Poured #{amount} cups"


french = new Coffee("French", 2)
french.brew()

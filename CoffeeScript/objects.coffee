coffee = 
  name: 'French'
  strength: 1
  brew: -> alert("brewing #{@name}")
  pour: (amount=1) ->
    if amount is 1
      "Puored a single cup"
    else
      "Poured #{amount} cups"

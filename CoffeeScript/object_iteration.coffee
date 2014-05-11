coffees = 
  french:
    strength: 1
    in_stock: 20
  italian:
    strength: 2
    in_stock: 12
  decaf:
    strength: 0
    in_stock: 0

"#{coffee} has #{attrs.in_stock}" for coffee, attrs of coffees


to_print = for coffee, attrs of coffees when attrs.in_stock > 0
  "#{coffee} has #{attrs.in_stock}"
to_print.join(', ')


if cupsOfCoffee?
  alert 'it exists!'


alert 'it exists!' if cupsOfCoffee?


cupsOfCoffee = 0 unless cupsOfCoffee?


cupsOfCoffee ?= 0


# -----------


if coffeePot?
  coffeePot.brew()
# => same as
coffeePot?.brew()

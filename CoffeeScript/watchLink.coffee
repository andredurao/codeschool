class DrinkLink
  watchClick: ->
    $('a').click ->
      $(@).css('color', '#F00')

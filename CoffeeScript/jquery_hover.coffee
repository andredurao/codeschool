$('drink li').hover(
  ->
  $(@).find('span').show()
  ->
  $(@).find('span').hide()
)

$(document).ready ->
  $('#displayWeaponForm').click (event)->
    event.preventDefault()
    $(this).hide()
    $('#newWeapon').show()
$.ajax
  url: '/coffeeList'
    method: 'GET', success: (results) ->
      $('ul.drink').append("<li>#{coffee.name}</li>") for coffee in results when coffee.level > 3
        error: (results) ->
          alert "failure #{results}"

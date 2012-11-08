$(document).ready ->
  $('#yes').bind 'click', ->
    $('#yes_form').submit()
  $('#no').bind 'click', ->
    $('#no_form').submit()
  $('#show_answer').bind 'click', ->
    $('#answer').fadeIn('slow')

Chuhi.setup_graph = (data) ->
  $("#deck-graph, #deck-graph-small").tufteBar
    data: data
    barWidth: 0.8
    barLabel: (index) ->
      this[0] + ""
    axisLabel: (index) ->
      this[1].label
    color: (index) ->
      ["#3399F3", "#CD0200", "#D47500"][index]
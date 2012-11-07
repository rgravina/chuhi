$(document).ready ->
  $.noConflict();
  $('#yes').bind 'click', ->
    $('#yes_form').submit()
  $('#no').bind 'click', ->
    $('#no_form').submit()
  $('#show_answer').bind 'click', ->
    $('#answer').fadeIn('slow')

  $("#deck-graph, #deck-graph-small").tufteBar
    data: [[1.0,
      label: "New"
    ], [3.6,
      label: "Forgotten"
    ], [1.3,
        label: "Expired"
      ]]
    barWidth: 0.8
    barLabel: (index) ->
      this[0] + "x"

    axisLabel: (index) ->
      this[1].label

    color: (index) ->
      ["#3399F3", "#CD0200", "#D47500"][index]


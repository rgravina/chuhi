# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

evnts = ->
  event: [
    date: "2012-09-16"
    title: "1"
  ,
    date: "2012-09-17"
    title: "2"
  ]

$(document).ready ->
  $("#calendar").Calendar(
    events: evnts
    weekStart: 1
  )

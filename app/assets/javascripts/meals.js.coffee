# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  $('.button_to').on 'ajax:success', (e, resp) ->
    console.log resp
    $(".ratings-count[data-id=#{resp.id}] .total-score").text(resp.ratings)
    $(".ratings-count[data-id=#{resp.id}] .average-score").text(resp.average)


$(ready)
$(document).on 'page:load', ready
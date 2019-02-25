# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  ### Search Toggle
  $('#search_input_box').hide()
  $('#search').on 'click', ->
    $('#search_input_box').slideToggle 'slow'
    $('#search_input').focus()
    return
  $('#close_search').on 'click', ->
    $('#search_input_box').slideUp 'slow'
    return
  ###
#* Navbar Fixed


  return



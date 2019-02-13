# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('.datetimepicker-field').datetimepicker locale: 'en'
  return

$ ->
  $('.datepicker-field').datetimepicker
    debug: false
    format: 'Y-M-D'
  return

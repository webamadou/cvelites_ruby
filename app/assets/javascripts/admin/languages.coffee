# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#languages-dt').dataTable
    processing: true
    serverSide: true
    ajax: $('#languages-dt').data('source')
    pagingType: 'full_numbers'
    columns: [
      {data: 'name'}
      {data: 'code'}
      {data: 'status'}
      {data: 'dt_actions'}
    ]
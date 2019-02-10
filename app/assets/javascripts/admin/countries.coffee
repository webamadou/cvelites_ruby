# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#country-dt').dataTable
    processing: true
    serverSide: true
    ajax: $('#country-dt').data('source')
    pagingType: 'full_numbers',
    columns: [
      {data: 'iso'}
      {data: 'name'}
      {data: 'numcode'}
      {data: 'phonecode'}
      {data: 'status'}
      {data: 'dt_actions'}
    ]
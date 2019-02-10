# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#template-dt').dataTable
    processing: true
    serverSide: true
    ajax: $('#template-dt').data('source')
    pagingType: 'full_numbers',
    columns: [
      {data: 'name'}
      {data: 'views'}
      {data: 'status'}
      {data: 'dt_actions'}
    ]

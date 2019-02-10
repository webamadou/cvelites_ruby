# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#users-dt').dataTable
    processing: true
    serverSide: true
    ajax: $("users-dt").data('source')
    pagingType: 'full_numbers'
    columns: [
      {data: 'name'}
      {data: 'title'}
      {data: 'birth_date'}
      {data: 'address'}
      {data: 'views'}
      {data: 'status'}
      {data: 'dt_actions'}
    ]
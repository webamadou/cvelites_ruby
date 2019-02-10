# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#companies-dt').dataTable
    processing: true
    serverSide: true
    ajax: $('#companies-dt').data('source')
    pagingType: 'full_numbers'
    columns: [
      {data: 'name'}
      {data: 'address'}
      {data: 'domain'}
      {data: 'status'}
      {data: 'exist_since'}
      {data: 'dt_actions'}
    ]
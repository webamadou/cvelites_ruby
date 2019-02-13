# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
  $ ->
    $('#educations-dt').dataTable
      processing: true
      serverSide: true
      ajax: $('#educations-dt').data('source')
      pagingType: 'full_numbers',
      columns: [
        {data: 'school_id'}
        {data: 'degree'}
        {data: 'graduation'}
        {data: 'description'}
        {data: 'address'}
        {data: 'dt_actions'}
      ]
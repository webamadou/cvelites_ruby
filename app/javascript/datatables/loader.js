/*
* this file will be used to load datatable based on the id on a table
* */
jQuery(document).ready(function() {
    $('#languages-dt').dataTable({
        "processing": true,
        "serverSide": true,
        "ajax": {
            "url": $('#languages-dt').data('source')
        },
        "pagingType": "full_numbers",
        "columns": [
            {data: 'name'},
            {data: 'code'},
            {data: 'status'},
            {data: 'dt_actions'}
        ]
        // pagingType is optional, if you want full pagination controls.
        // Check dataTables documentation to learn more about
        // available options.
    });
});
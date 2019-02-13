class Admin::HobbyDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
        name: {source: "Admin::Hobby.name"},
        user: {source: "Admin::User.name", orderable: false, searchable: false},
        status: {source: "Admin::Hobby.status"},
        dt_actions: {searchable: false, orderable: false}
    }
  end

  def data
    records.map do |record|
      {
        # example:
        name: record.decorate.name,
        user: record.users[0].name,
        status: record.decorate.status,
        dt_actions: record.decorate.actions,
        DT_RowId: record.id
      }
    end
  end

  def get_raw_records
    # insert query here
    Admin::Hobby.joins(:users)
  end

end

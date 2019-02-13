class Admin::AwardDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      # id: { source: "User.id", cond: :eq },
      title: {source: "Admin::Award.title", cond: :like, searchable: true, orderable: true},
      user: {source: "Admin::Award.user_id", cond: :like, searchable: true, orderable: true},
      date: {source: "Admin::Award.date", cond: :date_range, searchable: true, orderable: true },
      dt_actions: {searchable: false, orderable: false}
    }
  end

  def data
    records.map do |record|
      {
        title: record.decorate.title,
        user: record.decorate.user,
        date: record.decorate.date_format,
        dt_actions: record.decorate.actions
      }
    end
  end

  def get_raw_records
    # insert query here
    Admin::Award.group(:user_id)
  end

end

class Admin::UserDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      # id: { source: "User.id", cond: :eq },
      name: {source: "Admin::User.name", cond: :like, searchable: true, orderable: true},
      title: {source: "Admin::User.title", cond: :like, searchable: true, orderable: true},
      birth_date: {source: "Admin::User.birth_date", cond: :date_range, seachable: true, orderable: true},
      address: {source: "Admin::User.address", cond: :like, searchable: true, orderable: true},
      views: {source: "Admin::User.views", cond: :eq, searchable: true, orderable: true},
      status: {source: "Admin::User.status", cond: :eq, searchable: true, orderable: true},
      dt_actions: {searchable: false, orderable: false},
    }
  end

  def data
    records.map do |record|
      {
        # id: record.id,
        name: record.decorate.name,
        title: record.title,
        birth_date: record.decorate.birth,
        address: record.address,
        views: record.views,
        status: record.decorate.status,
        dt_actions: record.decorate.actions
      }
    end
  end

  def get_raw_records
    # insert query here
    Admin::User.all
  end

end

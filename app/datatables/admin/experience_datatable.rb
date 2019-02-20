class Admin::ExperienceDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      title: {source: "Admin::Experience.title", cond: :like, searchable: true, orderable: true},
      user: {source: "Admin::User.name", cond: :like, searchable: true, orderable: true},
      period: {source: "Admin::Experience.started_at", cond: :date_range, searchable: true, orderable: true},
      status: {source: "Admin::Experience.status", cond: :eq, searchable: true, orderable: true},
      dt_actions: {searchable: false, orderable: false},
    }
  end

  def data
    records.map do |record|
      {
        # example:
        # id: record.id,
        title: record.decorate.title,
        user: record.decorate.user,
        period: record.decorate.period,
        status: record.decorate.status,
        dt_actions: record.decorate.actions,
      }
    end
  end

  def get_raw_records
    # insert query here
    Admin::Experience.joins([:user, :company])
  end

end

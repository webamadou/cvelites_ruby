class Admin::DomainDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      # id: { source: "User.id", cond: :eq },
      name: {source: "Admin::Domain.name", cond: :like, searchable: true, orderable: true },
      parent: {source: "Admin::Domain.domain.name", cond: :like, searchable: true, orderable: true },
      status: {source: "Admin::Domain.status", cond: :eq, searchable: true, orderable: true },
      dt_actions: {searchable: false, orderable: false},
    }
  end

  def data
    records.map do |record|
      {
        # example:
        name: record.decorate.name,
        parent: record.decorate.parent,
        status: record.status,
        dt_actions: record.decorate.actions
      }
    end
  end

  def get_raw_records
    # insert query here
    Admin::Domain.all
  end

end

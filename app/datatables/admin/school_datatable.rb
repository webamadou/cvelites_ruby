class Admin::SchoolDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      name: {source: "Admin::School.name"},
      legal_status: {source: "Admin::School.legal_status"},
      address: {source: "Admin::School.address"},
      dt_actions: {searchable: false, orderable: false }
    }
  end

  def data
    records.map do |record|
      {
        name: record.decorate.name,
        legal_status: record.legal_status,
        address: record.decorate.address,
        dt_actions: record.decorate.actions,
        DT_RowId: record.id,
      }
    end
  end

  def get_raw_records
    # insert query here
    Admin::School.all.order(:country_id)
  end

end

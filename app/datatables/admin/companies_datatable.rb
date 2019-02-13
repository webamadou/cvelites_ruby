class Admin::CompaniesDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      name: {source: "Admin::Company.name",cond: :like,searchable: true, orderable: true},
      address: {source: "Admin::Company.address",cond: :like,searchable: true, orderable: true},
      domain: {source: "Admin::Company.domain.name",searchable: true, orderable: true},
      status: {source: "Admin::Company.status",cond: :eq, searchable: true, orderable: true},
      exist_since: {source: "Admin::Company.exist_since",cond: :date_range,searchable: true, orderable: true },
      dt_actions: {searchable: false, orderable: false}
    }
  end

  def data
    records.map do |record|
      {
        name: record.decorate.name,
        address: record.address,
        domain: record.domain.name,
        status: record.decorate.status,
        exist_since: record.exist_since,
        dt_actions: record.decorate.actions,
      }
    end
  end

  def get_raw_records
    # insert query here
    Admin::Company.all
  end

end

class CountryDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      name: {source: "Admin::Country.name",cond: :like, searchable: true, orderable: true},
      iso: {source: "Admin::Country.iso",cond: :like, searchable: true, orderable: true},
      numcode: {source: "Admin::Country.numcode", cond: :eq},
      phonecode: {source: "Admin::Country.phonecode", cond: :eq},
      status: {source: "Admin::Country.status",searchable: true, orderable: true},
      dt_actions: {oderable: false, searchable: false}
    }
  end

  def data
    records.map do |record|
      {
          name: record.decorate.names,
          iso: record.iso,
          numcode: record.decorate.numcode,
          phonecode: record.phonecode,
          status: record.decorate.status,
          dt_actions: record.decorate.actions,
          DT_RowId: record.id
      }
    end
  end

  def get_raw_records
    # insert query here
    Admin::Country.all
  end

end

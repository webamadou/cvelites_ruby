class TemplatesDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      #id:     { source: "Admin::Templates.name", cond: :eq },
      # name: { source: "User.name", cond: :like }
      name: {source: "Admin::Template.name",cond: :like, searchable: true, orderable: true},
      views: {source: "Admin::Template.views"},
      status: {source: "Admin::Template.status"},
      dt_actions: {searchable: false, orderable: false}
    }
  end

  def data
    records.map do |record|
      {
        # example:
        # id: record.id,
        # name: record.name
        name:         record.decorate.link_to,
        views:        record.decorate.views,
        status:       record.decorate.status,
        dt_actions:   record.decorate.dt_actions,
        DT_RowId:     record.id
      }
    end
  end

  def get_raw_records
    # insert query here
    Admin::Template.all
  end

end

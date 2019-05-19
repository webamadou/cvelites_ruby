class Admin::LanguageDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      # id: { source: "User.id", cond: :eq },
      name: {source: "Admin::Language.name", cond: :like, searchable: true, orderable: true},
      code: {source: "Admin::Language.code", cond: :like, searchable: true, orderable: true},
      status: {source: "Admin::Language.status",cond: :eq, searchable: false, orderable: true, align: :right},
      dt_action: {searchable: false, orderable: false}
    }
  end

  def data
    records.map do |record|
      {
        # example:
        name: record.name,
        code: record.code,
        status: record.status,
        dt_actions: record.decorate.actions()
      }
    end
  end

  def get_raw_records
    # insert query here
    Admin::Language.all
  end

end

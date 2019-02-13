class Admin::SkillDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      name: {source: "Admin::Skill.name"},
      description: {source: "Admin::Skill.description"},
      dt_actions: {searchable: false, orderable: false}
    }
  end

  def data
    records.map do |record|
      {
        name: record.decorate.name,
        description: record.description,
        dt_actions: record.decorate.actions,
        DT_RowId: record.id
      }
    end
  end

  def get_raw_records
    # insert query here
    Admin::Skill.all
  end

end

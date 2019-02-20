class Admin::EducationDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
        school_id: {source: "Admin::School.name", cond: :like, searchable: true, orderable: true},
        degree: {source: "Admin::Education.degree", cond: :like, searchable: true, orderable: true},
        graduation: {source: "Admin::Education.graduation_year", cond: :like, searchable: true, orderable: true},
        description: {source: "Admin::Education.description", cond: :like, searchable: true, orderable: true},
        address: {source: "Admin::Education.address", cond: :like, searchable: true, orderable: true},
        dt_ations: {searchable: false, orderable: false},
    }
  end

  def data
    records.map do |record|
      {
        # example:
        school_id: record.decorate.school,
        degree: record.degree,
        graduation: record.graduation_year,
        description: record.description,
        address: record.address,
        dt_actions: record.decorate.actions,
      }
    end
  end

  def get_raw_records
    # insert query here
    Admin::Education.joins(:school)
  end

end

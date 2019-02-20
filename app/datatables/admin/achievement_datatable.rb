class Admin::AchievementDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
        # id: { source: "User.id", cond: :eq },
        title: {source: "Admin::Achievement.title"},
        user: {source: "Admin::Achievement.user_id"},
        status: {source: "Admin::Achievement.status"},
        dt_actions: {searchable: false, orderable: false}
    }
  end

  def data
    records.map do |record|
      {
          title: record.decorate.title,
          user: record.decorate.user,
          status: record.decorate.status,
          dt_actions: record.decorate.actions
      }
    end
  end

  def get_raw_records
    # insert query here
    Admin::Achievement.group(:user_id)
  end

end

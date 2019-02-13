class Admin::SkillDecorator < ApplicationDecorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end
  def name
    h.content_tag(:h4, h.link_to(object.name, h.admin_skill_path(object)))
  end

  def actions
    links = []
    links <<(h.link_to 'Edit', h.edit_admin_skill_path(object), :class => 'btn btn-xs btn-primary')
    links <<(h.link_to "Delete", h.admin_skill_path(object), :methdod => :delete, 'data-confirm' => 'You are about to delete this skill. <br/>Do you confirm the action?', class: 'btn btn-xs btn-delete')
    h.safe_join(links,' - ')
  end
end

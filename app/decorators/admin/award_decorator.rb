class Admin::AwardDecorator < ApplicationDecorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end
  def user
    user = []
    user <<(h.content_tag(:p, h.content_tag(:strong, "#{object.user.firstname} #{object.user.name}")))
    h.safe_join(user, '')
  end

  def title
    h.content_tag(:h3, h.link_to("#{object.title}", h.admin_award_path(object)))
  end

  def date_format
    object.date.to_s
  end

  def actions
    links = []
    links <<(h.link_to 'Edit', h.edit_admin_award_path(object), :class => 'btn btn-xs btn-primary')
    links <<(h.link_to "Delete", h.admin_award_path(object), 'data-method' => :delete, 'data-confirm' => "You are about to delete the award #{object.title} . <br/>Do you confirm the action?", class: 'btn btn-xs btn-delete')
    h.safe_join(links,' - ')
  end

end

class Admin::UserDecorator < ApplicationDecorator
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
    names = []
    names <<(h.link_to(h.content_tag(:strong, "#{object.firstname} #{object.name}"), h.admin_user_path(object)))
    names <<(h.content_tag(:p, "#{object.email}"))
    h.safe_join(names, '')
  end

  def birth
    birth = []
    birth << "#{object.birth_date} at "
    birth << object.birth_place
    h.safe_join(birth, '')
  end

  def actions
    links = []
    links <<(h.link_to 'Edit', h.edit_admin_user_path(object), :class => 'btn btn-xs btn-primary')
    links <<(h.link_to "Delete", h.admin_user_path(object), :methdod => :delete, 'data-confirm' => "You are about to delete this user.  Do you confirm the action?", class: 'btn btn-xs btn-delete')
    h.safe_join(links,' - ')
  end
end

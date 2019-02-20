class Admin::HobbyDecorator < ApplicationDecorator
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
    name = []
    name << h.content_tag(:i, '', class: "fa fa-#{object.icon}") unless object.icon.nil?
    name << h.content_tag(:strong, h.link_to(object.name, h.admin_hobby_path(object)))
    h.safe_join(name, '')
  end

  def user
    user = []
    h.content_tag(:h5,h.link_to("#{object.users[0].firstname} #{object.users[0].name}", h.admin_user_path(object.users[0].id)))
    h.content_tag(:span,"#{object.users[0].email}")
    h.safe_join(user, '')
  end
end

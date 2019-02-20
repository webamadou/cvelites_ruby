class Admin::ExperienceDecorator < ApplicationDecorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end
  def title
    title = []
    title <<(h.content_tag(:h4, object.title))
    title <<(h.content_tag(:p, "#{object.company.name} "))
    h.safe_join(title, '')
  end

  def user
    h.link_to("#{object.user.firstname} #{object.user.name} \n #{object.user.email}", h.admin_user_path(object))
  end

  def period
    period = []
    period << object.started_at
    period << object.ended_at unless object.still_there.nil?
  end

end

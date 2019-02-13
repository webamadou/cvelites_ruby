class Admin::DomainDecorator < ApplicationDecorator
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
    h.content_tag(:strong, h.link_to(object.name, h.admin_domain_path(object)))
  end

  def parent
    h.content_tag(:p, object.domain.name) unless object.domain.nil?
  end
end

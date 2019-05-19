class Admin::SchoolDecorator < ApplicationDecorator
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
    name << h.link_to(object.name, h.admin_school_path(object))
    h.safe_join(name,'')
  end

  def address
    address = []
    address << h.content_tag(:h4, object.address)
    address << h.content_tag(:span, object.country.name.titleize)
    h.safe_join(address, '')
  end
end

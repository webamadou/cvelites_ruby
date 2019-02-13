class Admin::CountryDecorator < ApplicationDecorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end
  def iso
    h.content_tag(:span, "#{object.iso} - #{object.iso3}")
  end

  def names
    names = []
    names << h.content_tag(:strong, object.name)
    names << h.content_tag(:span, object.nicename)
    h.safe_join(names, ' - ')
  end

  def numcode
    h.content_tag :span, object.numcode
  end

  def actions
    links = []
    links <<(h.link_to 'Edit', h.edit_admin_country_path(object), :class => 'btn btn-xs btn-primary')
    links <<(h.link_to "Delete", h.admin_country_path(object), :methdod => :delete, 'data-confirm' => 'You are about to delete a country. <br/>Do you confirm the action?', class: 'btn btn-xs btn-delete')
    h.safe_join(links,' - ')
  end
end

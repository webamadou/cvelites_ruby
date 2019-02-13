class Admin::LanguageDecorator < ApplicationDecorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def actions
    links = []
    links <<(h.link_to 'Edit', h.edit_admin_language_path(object), :class => 'btn btn-xs btn-primary')
    links <<(h.link_to "Delete", h.admin_language_path(object), :methdod => :delete, 'data-confirm' => 'You are about to delete this language. <br/>Do you confirm the action?', class: 'btn btn-xs btn-delete')
    h.safe_join(links,' - ')
  end
end

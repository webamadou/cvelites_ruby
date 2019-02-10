class ApplicationDecorator < Draper::Decorator
  # Define methods for all decorated objects.
  # Helpers are accessed through `helpers` (aka `h`). For example:
  #
  #   def percent_amount
  #     h.number_to_percentage object.amount, precision: 2
  #   end
  def status
    #object.status == 1 ? 'Active' : 'Unactiv'
    case object.status
    when 0
      'pending'
    when 1
      'Active'
    when 2
      'blocked'
    when 3
      'banned'
    when 4
      'deleted'
    end
  end

  def actions
    links = []
    links <<(h.link_to 'Edit', h.edit_admin_country_path(object), :class => 'btn btn-xs btn-primary')
    links <<(h.link_to "Delete", h.admin_country_path(object), :methdod => :delete, 'data-confirm' => 'You are about to delete this entry. <br/>Do you confirm the action?', class: 'btn btn-xs btn-delete')
    h.safe_join(links,' - ')
  end
end

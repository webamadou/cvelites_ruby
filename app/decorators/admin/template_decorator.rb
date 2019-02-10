class Admin::TemplateDecorator < ApplicationDecorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end
  delegate :views

  def link_to
    h.link_to object.name, h.edit_admin_template_path(object)
  end


  # Just an example of a complex method you can add to you decorator
  # To render it in a datatable just add a column 'dt_actions' in
  # 'view_columns' and 'data' methods and call record.decorate.dt_actions
  def dt_actions
    links = []
    links <<(h.link_to 'Edit',   h.edit_admin_template_path(object), :class => 'btn btn-xs btn-primary')
    links <<(h.link_to 'Delete', h.admin_template_path(object), 'data-method' => :delete, 'data-confirm' => "Are you sure?", :class => 'btn btn-xs btn-delete')
    h.safe_join(links, '')
  end
end

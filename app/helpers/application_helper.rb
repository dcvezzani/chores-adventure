module ApplicationHelper
  def default_form_for(record, options = {}, &block)
    options.merge!({builder: DefaultFormBuilder})

    options[:html] = {} unless options[:html]
    options[:html].merge!({class: "default-form form-horizontal", role: "form"})
    
    form_for(record, options, &block)
  end

  def menu_item(label, href)
    content_tag(:span) do
      link_to(label, href)
    end
  end
end

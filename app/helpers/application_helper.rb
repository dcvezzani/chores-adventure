module ApplicationHelper
  def default_form_for(record, options = {}, &block)
    options.merge!({builder: DefaultFormBuilder})

    options[:html] = {} unless options[:html]
    options[:html].merge!({class: "default-form form-horizontal", role: "form"})
    
    form_for(record, options, &block)
  end
end

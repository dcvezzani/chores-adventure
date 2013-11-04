module ApplicationHelper
  def default_form_for(record, options = {}, &block)
    options.merge!({builder: DefaultFormBuilder})
    form_for(record, options, &block)
  end
end

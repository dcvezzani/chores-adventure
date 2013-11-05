class DefaultFormBuilder < ActionView::Helpers::FormBuilder
  def date_select(attribute, options={})
    options.merge!({class: "date-selectable"})
    text_field(attribute, options)
  end

  def label(method, content_or_options = nil, options = {}, &block)
    options.merge!({class: "col-sm-2 control-label"})
    super(method, content_or_options, options, &block)
  end

  def text_field(method, options = {})
    options.merge!({class: "form-control", placeholder: method.to_s.humanize})
    @template.content_tag(:div, class: "col-sm-10") do
      super(method, options)
    end
  end

  def submit(value=nil, options={})
    options.merge!({class: "btn btn-default"})
    @template.content_tag(:div, class: "col-sm-offset-2 col-sm-10") do
      super(value, options)
    end
  end

  def text_area(method, options = {})
    options.merge!({class: "form-control", placeholder: method.to_s.humanize})
    @template.content_tag(:div, class: "col-sm-10") do
      super(method, options)
    end
  end
end

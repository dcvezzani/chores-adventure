class DefaultFormBuilder < ActionView::Helpers::FormBuilder
  def date_select(attribute, options={})
    options.merge!({class: "date-selectable"})
    text_field(attribute, options)
  end
end

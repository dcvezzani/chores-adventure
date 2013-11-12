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

  def file_field(method, options = {})
    options.merge!({class: "form-control", placeholder: method.to_s.humanize})
    model = options.delete(:model)
    uploader_label = options.delete(:uploader_label)

    @template.content_tag(:div, class: "col-sm-10") do
      super(method, options) + 
      hidden_field("#{uploader_label}_cache".to_sym) +
      
      #image_tag model.picture_url(:thumbnail) if @kudo.picture.file.exists?
      if model.send(uploader_label).file.exists?
        @template.content_tag(:div, class: "current-preview") do
          @template.image_tag(model.send("#{uploader_label}_url", :thumbnail)) + 
          @template.content_tag(:span){"(current picture)"}
        end
      else
        ""
      end
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

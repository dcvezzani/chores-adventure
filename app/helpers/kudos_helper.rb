module KudosHelper
  def say_thankyou(testimonial)
    if(testimonial.recipient)
  		@testimonial.title.capitalize + ", " + @testimonial.recipient.name
    else
  		@testimonial.title.capitalize
    end
  end

  def testimonial_description(testimonial)
    if(testimonial.description.blank?) 
      "We sure appreciate your help!" 
    else
      if(testimonial.new_record?)
        raw(testimonial.description)
      else
        testimonial.description
      end
    end
  end
end

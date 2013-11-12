module KudosHelper
  def say_thankyou(testimonial)
    if(testimonial.recipient)
  		@testimonial.title.capitalize + ", " + @testimonial.recipient.name
    else
  		@testimonial.title.capitalize
    end
  end

end

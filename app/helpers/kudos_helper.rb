module KudosHelper
  def say_thankyou(testimonial)
    if(testimonial.recipient)
      Rails.logger.debug(">>> asdf")
  		@testimonial.title.capitalize + ", " + @testimonial.recipient.name
    else
  		@testimonial.title.capitalize
    end
  end

end

module KudosHelper
  def say_thankyou(testimonial)
    if(testimonial.recipient)
      Rails.logger.debug(">>> asdf-001")
  		@testimonial.title.capitalize + ", " + @testimonial.recipient.name
    else
      Rails.logger.debug(">>> asdf-002")
  		@testimonial.title.capitalize
    end
  end

end

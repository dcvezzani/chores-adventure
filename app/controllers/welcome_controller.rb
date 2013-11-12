class WelcomeController < ApplicationController
  layout 'landing-page'

  def index
    @latest_needs = Need.where{(picture != nil) & (picture != "")}.order{updated_at.desc}.limit(6)
    @testimonial = (Kudo.count > 0) ? Kudo.order{created_at.desc}.limit(1).first : Kudo.new(title: "Thank you!", description: "You see something nice?  <a href='/kudos/new'>Give some kudos</a>!")
    
  end
end

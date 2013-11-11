class WelcomeController < ApplicationController
  layout 'landing-page'

  def index
    @latest_needs = Need.where{(picture != nil) & (picture != "")}.order{updated_at.desc}.limit(6)
  end
end

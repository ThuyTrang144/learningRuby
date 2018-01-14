class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def insal
    render html: "insal is perfect"
    end
end

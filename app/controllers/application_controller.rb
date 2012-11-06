class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_timezone

  private

  def set_timezone
   min = request.cookies["time_zone"].to_i
   Time.zone = ActiveSupport::TimeZone[-min.minutes]
  end
end

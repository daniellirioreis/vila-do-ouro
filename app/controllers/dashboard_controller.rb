class DashboardController < ApplicationController
  def index
    @messages = Message.sorted
  end
end

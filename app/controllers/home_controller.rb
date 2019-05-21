class HomeController < ApplicationController
  def index
    @graphic = Participant.group(:name_cattle).sum(:score)
  end
end

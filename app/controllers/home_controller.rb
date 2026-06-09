class HomeController < ApplicationController
  def index
    @skills = Skill.order(:position)
  end
end
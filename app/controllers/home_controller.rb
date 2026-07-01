class HomeController < ApplicationController
  def index
    @skills = Skill.order(:position)
    @projects = Project.order(:position)
    @experiences = Experience.order(:display_order)
    @resume = Resume.find_by(is_active: true)
  end
end
class ApplicationController < ActionController::Base
  def index
    @skills = Skill.order(:position)
    @projects = Project.order(:position)
  end
end

class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.order(:display_order)
  end
end
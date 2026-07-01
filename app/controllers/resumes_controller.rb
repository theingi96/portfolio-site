class ResumesController < ApplicationController
  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(resume_params)

    if @resume.save
      redirect_to root_path, notice: "履歴書を登録しました。"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def resume_params
    params.require(:resume).permit(
      :title,
      :description,
      :is_active,
      :file
    )
  end
end
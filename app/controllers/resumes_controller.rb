class ResumesController < ApplicationController

  def show
    resume = Resume.find_by(id: params[:id])
    render json: resume.as_json
  end

  # def update
  #   resume = Resume.find_by(id: params[:id])
  #   resume.
  #   render json: 
  # end
end

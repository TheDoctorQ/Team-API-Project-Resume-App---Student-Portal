class CapstonesController < ApplicationController

  def show
    student = Student.find_by(id: params[:id])
    render json: {message: "in show"}
  end

  def update
    render json: {message: "in update"}
  end
end

class CapstonesController < ApplicationController

  def show
    student = Student.find_by(id: params[:id])
    capstone = Capstone.find_by(student_id: student.id)
    render json: capstone.as_json 
  end

  def update
    render json: {message: "in update"}
  end
end

class CapstonesController < ApplicationController

  def show
    student = Student.find_by(id: params[:id])
    capstone = Capstone.find_by(student_id: student.id)
    render json: capstone.as_json 
  end

  def update
    student = Student.find_by(id: params[:id])
    capstone = Capstone.find_by(student_id: student.id)

    capstone.name = params[:name] || capstone.name
    capstone.description = params[:description] || capstone.description
    capstone.url = params[:url] || capstone.url
    capstone.screenshot = params[:screenshot] || capstone.screenshot

    if capstone.save
      render json: capstone.as_json 
    else
      render json: {}, status: :unauthorized
    end
  end
end

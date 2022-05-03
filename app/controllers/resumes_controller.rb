class ResumesController < ApplicationController

  def show
    # resume = Resume.find_by(id: params[:id])
    # render json: resume.as_json

    student = Student.find_by(id: params[:id])
    education = Education.find_by(student_id: student.id)
    experience = Experience.find_by(student_id: student.id)
    resume = {education: education, experience: experience}
    render json: resume.as_json
  end

  def update
    student = Student.find_by(id: params[:id])
    education = Education.find_by(student_id: student.id)
    
    education.start_date = params[:education_start_date] || education.start_date
    education.end_date = params[:education_end_date] || education.end_date
    education.degree = params[:education_degree] || education.degree
    education.university_name = params[:education_university_name] || education.university_name
    education.details = params[:education_details] || education.details
    
    
    experience = Experience.find_by(student_id: student.id)

    experience.start_date = params[:experience_start_date] || experience.start_date
    experience.end_date = params[:experience_end_date] || experience.end_date
    experience.job_title = params[:experience_job_title] || experience.job_title
    experience.company_name = params[:experience_company_name] || experience.company_name
    experience.details = params[:experience_details] || experience.details
    
    if education.save && experience.save
      resume = {education: education, experience: experience}

      render json: resume.as_json 
    end
    

  end
end

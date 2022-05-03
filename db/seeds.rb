# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
5.times do 
  # student = Student.new(
  #   first_name: "magic",
  #   last_name: "johnson",
  #   email: "magic@johnson.com",
  #   phone_number: "3261542322",
  #   short_bio: "basketball superstar",
  #   linkedin_url: "linkedin.com/magicjohnson",
 
  #   twitter_handle: "@magic",
  #   personal_website: "magicjohnson.com",
  #   github_url: "github.com/magicjohnson",
  #   photo_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.9_Gmt-2QzNPRDLYGMQWnfwHaD3%26pid%3DApi&f=1"

  # )
  # student.save 

  
  
  # education = Education.new(
  #   start_date: "04/01/2020",
  #   end_date: "04/01/2022",
  #   degree: "CS",
  #   university_name: "UOC",
  #   details: "I went here and did a lot of cool sutff for a long time",
  #   student_id: 1
  # )
  # education.save

  # experience = Experience.new(
  #   start_date: "02/03/2019",
  #   end_date: "04/04/2022",
  #   job_title: "Candle Maker",
  #   company_name: "We Make Candles",
  #   details: "Kept making candles all day long in the hot sun",
  #   student_id: 1
  # )
  # experience.save

  # skill = Skill.new(
  #   student_id: 1,
  #   skill: "communication"
  # )
  # skill.save

  capstone = Capstone.new(
    student_id: 1,
    name: "Facebook",
    description: "like facebook but better",
    url: "www.facebook.com",
    screenshot: "www.facebook.com" )
  
  capstone.save

end
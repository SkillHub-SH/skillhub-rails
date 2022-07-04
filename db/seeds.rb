# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Developers
100.times do |iter|
  Developer.create(
    email: "developer_email#{iter}@developers.com",
    username: "developer#{iter}",
    password: 'password',
    password_confirmation: 'password',
    bio: "This developer number#{iter} bio",
    bersonal_website_link: 'wwww.example.come',
    facebook_link: 'facebook.com/profile',
    twitter_link: 'twitter.com/profile',
    linkedin_link: 'linkedin.com/profile',
    stackoverflow_link: 'stackoverflow.com/profile',
    github_link: 'github/profile'
  )
end

# Create Compamies
5.times do |iter|
  Company.create(
    email: "company_email#{iter}@developer.com",
    password: 'password',
    password_confirmation: 'password'
  )
end

# Create Topics
5.times do |iter|
  Topic.create(name: "Topic#{iter}")
end

10.times do |iter|
  Problem.create(
    title: "Problem number #{iter} title",
    body: "This is Problem number #{iter} body",
    difficullty: :easy,
    memory_limit: 15,
    time_limit: 1000,
    topic_id: 1,
    company_id: 1
  )
end

10.times do |iter|
  Problem.create(
    title: "Problem number #{iter} title",
    body: "This is Problem number #{iter} body",
    difficullty: :medium,
    memory_limit: 15,
    time_limit: 1000,
    topic_id: 2,
    company_id: 2
  )
end

10.times do |iter|
  Problem.create(
    title: "Problem number #{iter} title",
    body: "This is Problem number #{iter} body",
    difficullty: :hard,
    memory_limit: 15,
    time_limit: 1000,
    topic_id: 3,
    company_id: 3
  )
end

10.times do |iter|
  Problem.create(
    title: "Problem number #{iter} title",
    body: "This is Problem number #{iter} body",
    difficullty: :easy,
    memory_limit: 15,
    time_limit: 1000,
    topic_id: 4,
    company_id: 4
  )
end

10.times do |iter|
  Problem.create(
    title: "Problem number #{iter} title",
    body: "This is Problem number #{iter} body",
    difficullty: :easy,
    memory_limit: 15,
    time_limit: 1000,
    topic_id: 5,
    company_id: 5
  )
end

ProgrammingLanguge.create(name: 'C (GCC 7.4.0)', judge_code: 48)
ProgrammingLanguge.create(name: 'C++ (GCC 7.4.0)', judge_code: 52)
ProgrammingLanguge.create(name: 'Java (OpenJDK 13.0.1)', judge_code: 62)
ProgrammingLanguge.create(name: 'Python (3.8.1)', judge_code: 71)
ProgrammingLanguge.create(name: 'Ruby (2.7.0)', judge_code: 72)

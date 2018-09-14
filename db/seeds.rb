# Creating occupations
10.times do |i|
  Occupation.find_or_create_by!(
    name: Faker::Job.title
  )
end

# Create clients
100.times do |i|
  Client.create!(
    name: Faker::Name.name,
    occupation: Occupation.all.sample
  )
end
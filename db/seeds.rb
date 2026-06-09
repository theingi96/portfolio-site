user = User.first

skills = [
  ["Ruby", 4, 1],
  ["Ruby on Rails", 4, 2],
  ["HTML", 4, 3],
  ["CSS", 4, 4],
  ["JavaScript", 3, 5],
  ["SQL", 3, 6],
  ["Git", 4, 7],
  ["GitHub", 4, 8]
]

skills.each do |name, level, position|
  Skill.find_or_create_by!(name: name) do |skill|
    skill.level = level
    skill.position = position
    skill.user = user
  end
end
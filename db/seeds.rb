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

# ==========================
# Experiences
# ==========================

Experience.destroy_all

Experience.create!(
  company: "株式会社ケイズビュー",
  position_title: "ミャンマー担当支援員",
  start_date: "2024",
  end_date: "Present",
  description: "特定技能外国人の生活支援、定期面談、入国対応、企業対応を担当しました。",
  display_order: 1
)

Experience.create!(
  company: "フリーランス",
  position_title: "日本語教師",
  start_date: "2018",
  end_date: "2023",
  description: "日本語教育および学習サポートを担当しました。",
  display_order: 2
)

Experience.create!(
  company: "東京ウィン日本語学校",
  position_title: "インターンシップ",
  start_date: "2017",
  end_date: "2018",
  description: "留学手続き、ビザ申請サポート、書類管理を担当しました。",
  display_order: 3
)
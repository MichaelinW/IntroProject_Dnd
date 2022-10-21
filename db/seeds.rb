# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Dndclass.destroy_all
Race.destroy_all
Background.destroy_all
Racebonuss.destroy_all
Character.destroy_all

Faker::UniqueGenerator.clear

all_dndclass = JSON.parse(File.read(Rails.root.join('db/classes.json')))

all_dndclass.each do |dc|
    Dndclass.create(
      className: dc["name"],
      classHD: dc["features"]["hit-dice"],
      classDesc: dc["features"]["desc"],
      classProfSav: dc["features"]["prof-saving-throws"]
    )
end

all_race = JSON.parse(File.read(Rails.root.join('db/races.json')))

all_race.each do |r|
  new_race = Race.create(
    raceName: r["name"],
    raceDesc: r["desc"]
  )

  r["asi"].each do |atr|
    new_race.racebonusses.create(
      bonusAtr: atr['attributes'][0],
      bonusValue: atr['value']
    )
  end
end

all_bg = JSON.parse(File.read(Rails.root.join('db/backgrounds.json')))

all_bg.each do |bg|
  Background.create(
    bgName: bg["name"],
    bgDesc: bg["desc"]
  )
end

200.times do
  charClass = Dndclass.find(rand(1..12))
  charRace = Race.find(rand(1..9))
  charBg = Background.find(rand(1..3))
  Character.create(
    charName: Faker::FunnyName.unique.name,
    charGender: Faker::Gender.binary_type,
    charLvl: rand(1..20),
    dndclass_id: rand(1..12),
    race_id: rand(1..9),
    background_id: rand(1..3),
    str: rand(3..20),
    dex: rand(3..20),
    con: rand(3..20),
    wis: rand(3..20),
    int: rand(3..20),
    cha: rand(3..20)
  )
end


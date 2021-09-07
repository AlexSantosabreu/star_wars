FactoryBot.define do
  factory :specie do
    name { "Xexto" }
    classification { "unknown" }
    designation { "sentient" }
    average_height { "125" }
    skin_colors { "grey, yellow, purple" }
    hair_colors { "none" }
    eye_colors { "black" }
    average_lifespan { "unknown" }
    language { "Xextese" }
    planet_id { 1 }
  end
end

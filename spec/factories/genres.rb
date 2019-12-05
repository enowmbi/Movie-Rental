FactoryBot.define do
  factory :genre do
    name { "Rock" }
    description { "Include Rock n Roll and related genre of music" }
  end

  factory :genre2, parent: :genre do 
    name { "Hip Hop"}
    description {"Hip Hop and Funk"}
  end
end

def create_plant(overrides = {})
  Plant.create!({
  :common_name => "Planty #{rand(100..999)}",
  :genus_species => "Scientific Name #{rand(100..999)}",
  }.merge(overrides)
  )
end

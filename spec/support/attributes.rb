def project_attributes(overrides = {})
  {
    name: "Sporks-a-Million",
    description: "Saving the world one spork at a time.",
    target_pledge_amount: 700.00,
    pledging_ends_on:  1.day.from_now,
    website: "http://sporksamillion.com" 
    }.merge(overrides)
end

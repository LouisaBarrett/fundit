# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create!([
  { name: "Sporks-a-Million",
    description: "Saving the world one spork at a time.",
    target_pledge_amount: 700.00,
    pledging_ends_on:  1.day.from_now,
    website: "http://sporksamillion.com"
  },
  { name: "Kids Count",
    description: "Helping kids in underserved areas get excited about math.",
    target_pledge_amount: 1000.00,
    pledging_ends_on: 1.week.from_now,
    website: "http://kids_count.com"
  },
  { name: "Send Me On Vacation",
    description: "My name is Bob and I'm raising other people's money for a personal vacation!",
    target_pledge_amount: 500.00,
    pledging_ends_on: 1.month.from_now,
    website: "http://send_bob_to_hawaii.net"
  }
])

require 'spec_helper'

describe "Viewing the list of projects" do

  it "shows the projects" do
    projectA = Project.create(name: "Sporks-a-Million",
                              description: "Saving the world one spork at a time.",
                              target_pledge_amount: 700.00,
                              pledging_ends_on:  1.day.from_now,
                              website: "http://sporksamillion.com")
    projectB = Project.create(name: "Kids Count",
                              description: "Helping kids in underserved areas get excited about math.",
                              target_pledge_amount: 1000.00,
                              pledging_ends_on: 1.week.from_now,
                              website: "http://kids_count.com")

    projectC = Project.create(name: "Send Me On Vacation",
                              description: "My name is Bob and I'm raising other people's money for a personal vacation!",
                              target_pledge_amount: 500.00,
                              pledging_ends_on: 1.month.from_now,
                              website: "http://send_bob_to_hawaii.net")

    visit projects_url

    expect(page).to have_text("3 Projects")
    expect(page).to have_text(projectA.name)
    expect(page).to have_text(projectB.name)
    expect(page).to have_text(projectB.name)

    expect(page).to have_text(projectA.description)
    expect(page).to have_text("$700.00")
    expect(page).to have_text("1 day remaining")
    expect(page).to have_text(projectA.website)
  end
 
end

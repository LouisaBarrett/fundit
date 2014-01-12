require 'spec_helper'

describe "Viewing an individual project" do

  it "shows the project's details" do
    project = Project.create( name: "Sporks-a-Million",
                              description: "Saving the world one spork at a time.",
                              target_pledge_amount: 700.00,
                              pledging_ends_on:  1.day.from_now,
                              website: "http://sporksamillion.com" )
    visit project_url(project)

    expect(page).to have_text(project.name)
    expect(page).to have_text(project.description)
    expect(page).to have_text("$700.00")
    expect(page).to have_text(project.pledging_ends_on)
    expect(page).to have_text(project.website)
  end

end

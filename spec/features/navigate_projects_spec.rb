require 'spec_helper'

describe 'Navigating projects' do

  it 'allows navigation from the detail page to the listing page' do
    project = Project.create( name: "Sporks-a-Million",
                              description: "Saving the world one spork at a time.",
                              target_pledge_amount: 700.00,
                              pledging_ends_on:  1.day.from_now,
                              website: "http://sporksamillion.com" )

    visit project_url(project)

    click_link "All Projects"

    expect(current_path).to eq(projects_path)
  end

  it 'allows navigation from the listing page to the detail page' do
    project = Project.create( name: "Sporks-a-Million",
                              description: "Saving the world one spork at a time.",
                              target_pledge_amount: 700.00,
                              pledging_ends_on:  1.day.from_now,
                              website: "http://sporksamillion.com" )

    visit projects_url

    click_link project.name

    expect(current_path).to eq(project_path(project))
  end

end

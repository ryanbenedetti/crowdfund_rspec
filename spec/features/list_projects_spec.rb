require 'spec_helper'
describe "Viewing the list of projects" do
  
  it "shows three project names" do
    
    projectA = Project.create(name: "Start-Up Project",
                   description: "A description of a start-up project",
                   target_pledge_amount: 100.00,
                   pledging_ends_on: 1.day.from_now,
                   website: "http://project-a.com")
                   
    projectB = Project.create(name: "Another Start-Up",
                    description: "A description of a start-up project",
                    target_pledge_amount: 5076.00,
                    pledging_ends_on: 200.days.from_now,
                    website: "http://another.com")
                                  
    projectC = Project.create(name: "Thingamajig Project",
                   description: "A description of a start-up project",
                   target_pledge_amount: 1500.00,
                   pledging_ends_on: 125.days.from_now,
                   website: "http://thingamajig.com")

    visit projects_url
    
    expect(page).to have_text("3 Projects")
    expect(page).to have_text(projectA.name)
    expect(page).to have_text(projectB.name)
    expect(page).to have_text(projectB.name)
    
    expect(page).to have_text(projectA.description)
    expect(page).to have_text("$100.00")
    expect(page).to have_text(projectA.pledging_ends_on)
    expect(page).to have_text(projectA.website)
    
  end
end
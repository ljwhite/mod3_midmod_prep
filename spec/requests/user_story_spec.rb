require 'rails_helper'

feature "user can search for parks " do
  scenario "user submits state name" do
    visit '/'
    select "Tennessee", from: :state
    click_on "Find Parks"
    expect(current_path).to eq(parks_path)
    expect(page).to have_content("15 Parks")
    expect(page).to have_css(".park", count: 15)

    within(first(".park")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".description")
      expect(page).to have_css(".directions")
      expect(page).to have_css(".hours")
    end
  end
end

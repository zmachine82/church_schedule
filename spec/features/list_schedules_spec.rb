require 'rails_helper'

describe "Listing Schedules" do
  before do
    schedule = Schedule.create!(name: "Test Schedule")
    schedule2 = Schedule.create!(name: "Number 2")
  end

  it 'lists multiple schedules on a page' do
    visit(schedules_path)

    expect(page).to have_text("Test Schedule")
    expect(page).to have_text("Number 2")
  end
end

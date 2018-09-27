require 'rails_helper'

describe "Listing Schedules" do
  before do
    schedule = Schedule.create!(name: "Test Schedule")
  end

  it 'lists multiple schedules on a page' do
    visit(schedules_path)

    expect(page).to have_text("Test Schedule")
  end
end

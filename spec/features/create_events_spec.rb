require 'rails_helper'

describe "Creating a new Event" do
  it "saves a valid event and shows the event on the schedule listing" do
    @schedule = Schedule.create!(name: "Testing Schedule")
    visit(new_schedule_event_path(@schedule))

    fill_in("Name", with: "Test")
    fill_in("Service", with: "9am")
    click_button("Create Event")

    expect(current_path).to eq(schedule_path(@schedule))
    expect(page).to have_text("Test")
    expect(page).to have_text("9am")
  end
end

require 'rails_helper'

describe "Deleting an event" do
  it "deletes an event and shows te listing without the event" do
    @schedule = Schedule.create(name: "test")
    e = @schedule.events.create(name: "Test Event", service: "12pm")

    visit schedule_event_path(@schedule, e)

    click_link "Delete"

    expect(current_path).to eq(schedule_path(@schedule))
    expect(page).not_to have_text(e.name)
  end

end

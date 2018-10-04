require 'rails_helper'

describe "Editing an event" do
  it "updates an event and shows the updated details" do
    @schedule = Schedule.create(name: "Test Schedule")
    @event = @schedule.events.create(name: "teset123", service: "9am")

    visit edit_schedule_event_path(@schedule, @event)

    expect(find_field("Name").value).to eq(@event.name)

    fill_in "Name", with: "New Name"

    click_button "Update Event"

    expect(current_path).to eq(schedule_event_path(@schedule, @event))
  end
end

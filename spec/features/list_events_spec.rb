require 'rails_helper'

describe "Listing Events" do
  before do
    @schedule = Schedule.create!(name: "Test Schedule")
    @event = @schedule.events.create(name: "event", service: "9am")
    @event1 = @schedule.events.create(name: "event1", service: "11am")
  end

  it "lists events name on the assosciated schedule page" do
    visit(schedule_url(@schedule))

    expect(page).to have_text(@event.name)
    expect(page).to have_text(@event1.name)
  end
end

require 'rails_helper'

describe "Editing a Schedule" do

  it "updates the schedule and shows the schedules updated details" do
    schedule = Schedule.create(name: "Test Schedule")

    visit schedule_url(schedule)

    click_link "Edit"

    expect(current_path).to eq(edit_schedule_path(schedule))

    expect(find_field("Name").value).to eq(schedule.name)

    fill_in "Name", with: "New Name"

    click_button "Update Schedule"

    expect(current_path).to eq(schedule_path(schedule))

    expect(page).to have_text("New Name")
  end
end

require "rails_helper"

describe "Deleting a Schedule" do
  it 'deletes the schedule and shows the listing without the deleted schedule' do
    s = Schedule.create(name: "Test Schedule")

    visit schedule_path(s)

    click_link "Delete"

    expect(current_path).to eq(schedules_path)
    expect(page).not_to have_text(s.name)
  end
end

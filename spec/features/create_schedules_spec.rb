require 'rails_helper'

describe "Creating a new Schedule" do
  it 'saves a valid schedule and shows the schedule show page' do
    visit(schedules_path)

    click_link 'Add New Schedule'

    fill_in("Name", with: 'Test Schedule')
    click_button('Create Schedule')


    expect(current_path).to eq(schedule_path(Schedule.last))
    expect(page).to have_text("Test Schedule")
  end


end

require 'rails_helper'

describe "A Schedule" do
  it 'requires a name' do
    schedule = Schedule.new(name: "")

    schedule.valid?

    expect(schedule.errors[:name].any?).to eq(true)
  end
end

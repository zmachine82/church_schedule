require 'rails_helper'

describe "An Event" do
  it "requires a name as a non-blank string" do
    event = Event.new(name: "", service: "9am")

    event.valid?

    expect(event.errors[:name].any?).to eq(true)
  end

  it "requires a service time as a non-blank string" do
    event = Event.new(name: "Test", service: "")

    event.valid?

    expect(event.errors[:service].any?).to eq(true)
  end
end

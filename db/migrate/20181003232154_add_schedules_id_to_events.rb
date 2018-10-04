class AddSchedulesIdToEvents < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :schedule, foreign_key: true
  end
end

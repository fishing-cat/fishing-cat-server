class AddNoteToCampaigns < ActiveRecord::Migration[5.1]
  def change
    add_column :campaigns, :note, :text
  end
end

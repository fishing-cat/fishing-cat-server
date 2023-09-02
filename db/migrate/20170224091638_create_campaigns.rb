class CreateCampaigns < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
      t.string :cid
      t.text :form_template
      t.text :result_template
      t.timestamps
    end
    add_index :campaigns, :cid, unique: true
  end
end

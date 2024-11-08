class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :cid
      t.string :pid
      t.string :action
      t.timestamps
    end
    %i[cid pid action].each do |column|
      add_index :events, column
    end
  end
end

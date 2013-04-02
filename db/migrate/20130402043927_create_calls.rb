class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.string :message
      t.integer :contact_id

      t.timestamps
    end
  end
end

class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|
      t.string :title
      t.integer :frequency
      t.date :last_done

      t.timestamps
    end
  end
end

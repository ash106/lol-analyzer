class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :queue_type
      t.integer :ip_earned
      t.integer :largest_killing_spree
      t.integer :champion_id
      t.integer :gold_earned
      t.integer :spell_one
      t.integer :spell_two

      t.timestamps
    end
  end
end

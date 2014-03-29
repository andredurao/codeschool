class CreateTweets < ActiveRecord::Migration
  def change
    create_table(:tweets) do |t|
      t.integer :zombie_id
      t.string :status
    end
  end
end

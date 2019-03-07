# Create your haunted_houses migration here
class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string  :name
      t.string :network
      t.string  :day
      t.integer  :rating
    end
  end
end

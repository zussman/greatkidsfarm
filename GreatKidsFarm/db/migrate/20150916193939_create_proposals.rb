class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

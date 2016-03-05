class CreateExcuses < ActiveRecord::Migration
  def change
    create_table :excuses do |t|
      t.text :text

      t.timestamps null: false
    end
  end
end

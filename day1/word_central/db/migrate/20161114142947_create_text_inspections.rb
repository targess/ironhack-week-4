class CreateTextInspections < ActiveRecord::Migration[5.0]
  def change
    create_table :text_inspections do |t|

      t.timestamps
    end
  end
end

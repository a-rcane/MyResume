class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.string :degree
      t.string :school
      t.text :description
      t.date :start_date
      t.date :end_date

      t.belongs_to :profile, index: true, foreign_key: true

      t.timestamps
    end
  end
end

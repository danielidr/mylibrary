class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :status, default: 0
      t.date :returned_date
      t.date :lend_date

      t.timestamps
    end
  end
end

class CreateDressWeddings < ActiveRecord::Migration[5.1]
  def change
    create_table :dress_weddings do |t|
      t.number :size
      t.string :color
      t.number :amount
      t.double :cost

      t.timestamps
    end
  end
end

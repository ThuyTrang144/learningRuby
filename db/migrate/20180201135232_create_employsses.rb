class CreateEmploysses < ActiveRecord::Migration[5.1]
  def change
    create_table :employsses do |t|

      t.timestamps
    end
  end
end

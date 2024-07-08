class CreateNominations < ActiveRecord::Migration[7.0]
  def change
    create_table :nominations do |t|
      t.string :nominneName
      t.string :field
      t.string :category
      t.string :userEmail

      t.timestamps
    end
  end
end

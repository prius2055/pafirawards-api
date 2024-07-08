class AddNullFalseToNominations < ActiveRecord::Migration[7.0]
  def change
    change_column_null :nominations, :nomineeName, false
    change_column_null :nominations, :field, false
    change_column_null :nominations, :category, false
    change_column_null :nominations, :userEmail, false
  end
end

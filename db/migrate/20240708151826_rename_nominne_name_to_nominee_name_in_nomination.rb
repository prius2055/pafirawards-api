class RenameNominneNameToNomineeNameInNomination < ActiveRecord::Migration[7.0]
  def change
     rename_column :nominations, :nominneName, :nomineeName
  end
end

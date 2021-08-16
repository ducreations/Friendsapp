class ChangeDataTypeForNumber < ActiveRecord::Migration[6.1]
  def change
    change_column :friends, :number, 'integer USING CAST(number AS integer)'
  end
end

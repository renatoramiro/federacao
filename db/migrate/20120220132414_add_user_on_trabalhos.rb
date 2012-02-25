class AddUserOnTrabalhos < ActiveRecord::Migration
  def up
    add_column :trabalhos, :user_id, :reference
  end

  def down
  end
end

class AddFaceAndTwitterOnSocios < ActiveRecord::Migration
  def up
    add_column :socios, :facebook, :string
    add_column :socios, :twitter, :string
  end

  def down
  end
end

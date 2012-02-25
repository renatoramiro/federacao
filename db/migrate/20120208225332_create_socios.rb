class CreateSocios < ActiveRecord::Migration
  def change
    create_table :socios do |t|
      t.string :nome
      t.date :dataNascimento
      t.string :igreja
      t.references :user

      t.timestamps
    end
  end
end

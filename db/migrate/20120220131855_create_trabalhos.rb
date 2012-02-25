class CreateTrabalhos < ActiveRecord::Migration
  def change
    create_table :trabalhos do |t|
      t.string :nome
      t.text :descricao
      t.string :contato

      t.timestamps
    end
  end
end

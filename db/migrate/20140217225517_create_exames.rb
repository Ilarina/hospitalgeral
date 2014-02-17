class CreateExames < ActiveRecord::Migration
  def change
    create_table :exames do |t|
      t.string :descricao
      t.string :valor
      t.string :observacao

      t.timestamps
    end
  end
end

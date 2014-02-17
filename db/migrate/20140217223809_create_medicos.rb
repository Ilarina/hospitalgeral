class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.string :nome
      t.string :fone
      t.string :endereco
      t.string :email
      t.string :crm

      t.timestamps
    end
  end
end

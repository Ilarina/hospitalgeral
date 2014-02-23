class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :plano
      t.string :dataexame
      t.string :dataentrega
      t.string :laudo
      t.references :exame, index: true
      t.references :consultation, index: true

      t.timestamps
    end
  end
end

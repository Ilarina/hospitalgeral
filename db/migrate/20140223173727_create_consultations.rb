class CreateConsultations < ActiveRecord::Migration
  def change
    create_table :consultations do |t|
      t.string :data
      t.string :hora
      t.references :medico, index: true
      t.references :paciente, index: true

      t.timestamps
    end
  end
end

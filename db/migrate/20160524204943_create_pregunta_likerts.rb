class CreatePreguntaLikerts < ActiveRecord::Migration
  def change
    create_table :pregunta_likerts do |t|
      t.string :nombre
      t.text :pregunta

      t.timestamps null: false
    end
  end
end

class CreatePreguntaAlternativas < ActiveRecord::Migration
  def change
    create_table :pregunta_alternativas do |t|
      t.string :nombre
      t.text :pregunta
      t.string :respuesta1
      t.string :respuesta2
      t.string :respuesta3
      t.string :respuesta4
      t.integer :verdadera
      t.text :explicacion

      t.timestamps null: false
    end
  end
end

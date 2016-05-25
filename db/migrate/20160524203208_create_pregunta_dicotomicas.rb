class CreatePreguntaDicotomicas < ActiveRecord::Migration
  def change
    create_table :pregunta_dicotomicas do |t|
      t.string :nombre
      t.text :pregunta
      t.boolean :verdadero
      t.text :explicacion

      t.timestamps null: false
    end
  end
end

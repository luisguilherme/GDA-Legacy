class CreatePerguntas < ActiveRecord::Migration
  def self.up
    create_table :pergunta, :primary_key => :P_id do |t|
      t.integer :P_id
      t.text :P_texto
      t.integer :G_id
      t.string :P_tipo
    end
  end

  def self.down
    drop_table :pergunta
  end
end

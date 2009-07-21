class CreateDisciplinas < ActiveRecord::Migration
  def self.up
    create_table :disciplina, :id => false do |t|
      t.string :D_nome
      t.string :D_sigla, :unique => true
      t.integer :G_id
    end
  end

  def self.down
    drop_table :disciplina
  end
end

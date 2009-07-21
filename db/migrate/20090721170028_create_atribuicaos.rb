class CreateAtribuicaos < ActiveRecord::Migration
  def self.up
    create_table :atribuicao, :primary_key => :AT_id do |t|
      t.integer :AT_id
      t.string :D_sigla
      t.integer :PR_id
      t.integer :G_id
      t.string :AT_turma
      t.integer :AT_periodo
    end
  end

  def self.down
    drop_table :atribuicao
  end
end

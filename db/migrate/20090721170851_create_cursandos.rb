class CreateCursandos < ActiveRecord::Migration
  def self.up
    create_table :cursando, :id => false do |t|
      t.string :A_id
      t.string :D_sigla
      t.string :AT_turma
    end
  end

  def self.down
    drop_table :cursando
  end
end

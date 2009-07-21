class CreateAlunos < ActiveRecord::Migration
  def self.up
    create_table :aluno, :id => false do |t|
      t.string :A_id, :unique => true, :null => false
      t.integer :A_curso
    end
  end

  def self.down
    drop_table :aluno
  end
end

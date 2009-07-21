class CreateProfessors < ActiveRecord::Migration
  def self.up
    create_table :professor, :primary_key => :PR_id do |t|
      t.integer :PR_id
      t.string :PR_nome
      t.string :PR_login
      t.string :PR_senha
    end
  end

  def self.down
    drop_table :professor
  end
end

class CreateRespostas < ActiveRecord::Migration
  def self.up
    create_table :resposta, :primary_key => :R_id do |t|
      t.integer :R_id
      t.integer :AT_id
      t.string :A_id
      t.integer :P_id
      t.text :R_resposta
      t.integer :AL_id
    end
  end

  def self.down
    drop_table :resposta
  end
end

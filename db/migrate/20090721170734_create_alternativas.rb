class CreateAlternativas < ActiveRecord::Migration
  def self.up
    create_table :alternativa, :primary_key => :AL_id do |t|
      t.integer :AL_id
      t.text :AL_texto
      t.integer :P_id
    end
  end

  def self.down
    drop_table :alternativa
  end
end

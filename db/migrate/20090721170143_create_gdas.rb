class CreateGdas < ActiveRecord::Migration
  def self.up
    create_table :gda, :primary_key => :G_id do |t|
      t.integer :G_id
      t.string :G_unidade
      t.string :G_senha
    end
  end

  def self.down
    drop_table :gda
  end
end

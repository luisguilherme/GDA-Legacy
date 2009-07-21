class Pergunta < ActiveRecord::Base
  belongs_to :gda, :foreign_key => "G_id"
  has_many :alternativas, :foreign_key => :P_id

  set_primary_key :P_id
end

class Atribuicao < ActiveRecord::Base
  belongs_to :professor, :foreign_key => :PR_id
  belongs_to :gda, :foreign_key => :G_id
  belongs_to :disciplina, :foreign_key => :D_sigla
  
  has_many :respostas, :foreign_key => :AT_id

  set_primary_key :AT_id
end

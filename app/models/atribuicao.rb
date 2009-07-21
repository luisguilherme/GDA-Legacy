class Atribuicao < ActiveRecord::Base
  belongs_to :professor, :foreign_key => :PR_id, :primary_key => :PR_id
  belongs_to :gda, :foreign_key => :G_id, :primary_key => :G_id
  belongs_to :disciplina, :foreign_key => :D_sigla, :primary_key => :D_sigla
end

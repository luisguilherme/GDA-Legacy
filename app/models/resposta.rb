class Resposta < ActiveRecord::Base
  belongs_to :pergunta, :foreign_key => :P_id, :primary_key => :P_id
  belongs_to :aluno, :foreign_key => :A_id, :primary_key => :A_id
  belongs_to :atribuicao, :foreign_key => :AT_id, :primary_key => :AT_id
  belongs_to :gda, :foreign_key => :G_id, :primary_key => :G_id
  belongs_to :alternativa, :foreign_key => :AL_id, :primary_key => :AL_id
end

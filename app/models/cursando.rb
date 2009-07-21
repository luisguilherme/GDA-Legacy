class Cursando < ActiveRecord::Base
  belongs_to :aluno, :foreign_key => :A_id, :primary_key => :A_id
  belongs_to :disciplina, :foreign_key => :D_sigla, :primary_key => :D_sigla
end

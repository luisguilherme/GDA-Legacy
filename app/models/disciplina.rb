class Disciplina < ActiveRecord::Base
  belongs_to :gda, :foreign_key => :G_id
  
  set_primary_key :D_sigla
end

class Alternativa < ActiveRecord::Base
  belongs_to :pergunta, :foreign_key => "P_id" 
  
  set_primary_key :AL_id
end

class Disciplina < ActiveRecord::Base
  belongs_to :gda, :foreign_key => :G_id, :primary_key => :G_id
end

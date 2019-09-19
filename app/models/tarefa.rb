class Tarefa < ActiveRecord::Base
  belongs_to :projeto

  def completed?
  	!completed_at.blank?
  end
end

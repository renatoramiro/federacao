class Socio < ActiveRecord::Base
  #validates :nome, :presence => true
  validates_presence_of :nome, :igreja, :message => 'nao pode ficar em branco.'
  belongs_to :user
  
  def self.aniversatiantes_mes
    mes_atual = Time.zone.now.to_date.month
    all.select{|p| mes_atual == p.dataNascimento.month}
  end
end

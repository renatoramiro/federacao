class SiteController < ApplicationController
  def index
    #@socios = Socio.where("dataNascimento = ?", Date.new(1984, 04, 23))
    #@socios = Socio.where("MONTH(dataNascimento) = ?", Date.today.month)
    #@socios = Socio.where("strftime('%m', dataNascimento) = '2'")  
    #@socios = Socio.where("strftime('%m', dataNascimento) = ?", Date.today.month)
    #@socios = Socio.where("strftime('%m', dataNascimento) = ?", '%03d' % Date.today.month)
    #@socios = Socio.where("cast(STRFTIME('%m', dataNascimento) as integer) = ?", Date.today.month).order(:dataNascimento)
    #@socios = Socio.where("created_at between ? AND ?", Time.zone.now.beginning_of_month, Time.zone.now.end_of_month)
    #@socios = Socio.where("dataNascimento between ? AND ?", Time.zone.now.to_date.beginning_of_month, Time.zone.now.to_date.end_of_month)
    #@socios = Socio.where("extract(month from dataNascimento) = '?' ", Date.today.month)
    #@socios = Socio.where("extract(month from dataNascimento) = ? ", Date.today.month)
    @socios = Socio.aniversatiantes_mes.sort{|a| a[:dataNascimento]}
    #range = Time.now.beginning_of_month..Time.now.end_of_month
    #@socios = Socio.all(:conditions => {:dataNascimento => range} )

  end
  
  def trabalhos
    @trabalhos = Trabalho.all.reverse
  end
  
  def aniversariantes
    @socios = Socio.aniversatiantes_mes.sort{|a| a[:dataNascimento]}
  end
  
  def federacao
  end
end

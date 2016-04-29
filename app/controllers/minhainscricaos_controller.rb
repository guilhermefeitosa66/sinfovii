class MinhainscricaosController < ApplicationController

  def index
    @inscricao = Inscricao.find(params[:id])
    @minicurso = Minicurso.all
    @palestra = Palestra.all
    render 'index'
  end

  def adicionar_minicurso
    minicurso = Minicurso.find(params[:id])
    @inscricao = Inscricao.find(params[:Inscricao])
    if minicurso.vagas>=1 && minicurso != nil
      minicurso.vagas -= 1
      minicurso.save
      Minicurso_inscricao.create(minicurso:minicurso, inscricao: @inscricao, data: Time.now)
      @inscricao.precoTotal += minicurso.preco
      @inscricao.save
    else
      flash[:erro] = true
    end
    @minicurso = Minicurso.all
    @palestras = Palestra.all
    render "index"
  end

  def remover_minicurso
    minicurso_incricao = Minicurso_inscricao.find(params[:id])
    @inscricao = Inscricao.find(params[:inscricao])
    minicurso = Minicurso.find(minicurso_incricao.minicurso)
     #+= 1
    minicurso.save
  minicurso_incricao.destroy
    @Inscricao.precoTotal -= minicurso.preco
    @inscricao.save
    @minicurso = Minicurso.all
    @palestra = Palestra.all
    render "index"
  end


  def adicionar_palestra
    minicurso = Palestra.find(params[:id])
    @inscricao = Inscricao.find(params[:Inscricao])
    if palestra.vagas>=1 && palestra != nil
      palestra.vagas -= 1
      palestra.save
      Palestra_inscricao.create(palestra: palestra, inscricao: @inscricao, data: Time.now)
      @inscricao.precoTotal += palestra.preco
      @inscricao.save
    else
      flash[:erro] = true
    end
    @minicurso = Minicurso.all
    @palestras = Palestra.all
    render "index"
  end



  def remover_palestra
    palestra_inscricaoo = Palestra_inscricao.find(params[:id])
    @inscricao = Inscricao.find(params[:inscricao])
    palestra = Palestra.find(minicurso_incricao.minicurso)
    # += 1
    palestra.save
    Palestra_inscricao.destroy
    @Inscricao.precoTotal -= minicurso.preco
    @inscricao.save
    @minicurso = Minicurso.all
    @palestra = Palestra.all
    render "index"
  end


  def status_servico
    servicos_venda = ServicosVenda.find(params[:id])
    if servicos_venda.status == true
      servicos_venda.status = false
    else
      servicos_venda.status = true
    end
    servicos_venda.save
    @venda = Venda.find(params[:venda])
    @produtos = Produto.all
    @servicos = Servico.all
    render "index"
  end

end

class TrabalhosController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  # GET /trabalhos
  # GET /trabalhos.json
  def index
    @trabalhos = current_user.trabalhos

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trabalhos }
    end
  end

  # GET /trabalhos/1
  # GET /trabalhos/1.json
  def show
    @trabalho = Trabalho.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trabalho }
    end
  end

  # GET /trabalhos/new
  # GET /trabalhos/new.json
  def new
    @trabalho = current_user.trabalhos.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trabalho }
    end
  end

  # GET /trabalhos/1/edit
  def edit
    @trabalho = Trabalho.find(params[:id])
  end

  # POST /trabalhos
  # POST /trabalhos.json
  def create
    @trabalho = Trabalho.new(params[:trabalho])
    @trabalho.user = current_user

    respond_to do |format|
      if @trabalho.save
        format.html { redirect_to @trabalho, notice: 'Oferta de Trabalho foi criada com sucesso.' }
        format.json { render json: @trabalho, status: :created, location: @trabalho }
      else
        format.html { render action: "new" }
        format.json { render json: @trabalho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trabalhos/1
  # PUT /trabalhos/1.json
  def update
    @trabalho = Trabalho.find(params[:id])
    @trabalho.user = current_user

    respond_to do |format|
      if @trabalho.update_attributes(params[:trabalho])
        format.html { redirect_to @trabalho, notice: 'Oferta de Trabalho foi atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trabalho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trabalhos/1
  # DELETE /trabalhos/1.json
  def destroy
    @trabalho = Trabalho.find(params[:id])
    @trabalho.destroy

    respond_to do |format|
      format.html { redirect_to trabalhos_url }
      format.json { head :no_content }
    end
  end
end

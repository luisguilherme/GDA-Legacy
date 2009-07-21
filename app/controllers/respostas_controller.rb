class RespostasController < ApplicationController
  # GET /resposta
  # GET /resposta.xml
  def index
    @resposta = Resposta.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @resposta }
    end
  end

  # GET /resposta/1
  # GET /resposta/1.xml
  def show
    @resposta = Resposta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @resposta }
    end
  end

  # GET /resposta/new
  # GET /resposta/new.xml
  def new
    @resposta = Resposta.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @resposta }
    end
  end

  # GET /resposta/1/edit
  def edit
    @resposta = Resposta.find(params[:id])
  end

  # POST /resposta
  # POST /resposta.xml
  def create
    @resposta = Resposta.new(params[:resposta])

    respond_to do |format|
      if @resposta.save
        flash[:notice] = 'Resposta was successfully created.'
        format.html { redirect_to(@resposta) }
        format.xml  { render :xml => @resposta, :status => :created, :location => @resposta }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @resposta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /resposta/1
  # PUT /resposta/1.xml
  def update
    @resposta = Resposta.find(params[:id])

    respond_to do |format|
      if @resposta.update_attributes(params[:resposta])
        flash[:notice] = 'Resposta was successfully updated.'
        format.html { redirect_to(@resposta) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @resposta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /resposta/1
  # DELETE /resposta/1.xml
  def destroy
    @resposta = Resposta.find(params[:id])
    @resposta.destroy

    respond_to do |format|
      format.html { redirect_to(resposta_url) }
      format.xml  { head :ok }
    end
  end
end

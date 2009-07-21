class AtribuicaosController < ApplicationController
  # GET /atribuicao
  # GET /atribuicao.xml
  def index
    @atribuicao = Atribuicao.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @atribuicao }
    end
  end

  # GET /atribuicao/1
  # GET /atribuicao/1.xml
  def show
    @atribuicao = Atribuicao.find(params[:id])
    @respostas = @atribuicao.respostas.sort_by &:P_id

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @atribuicao }
    end
  end

  # GET /atribuicao/new
  # GET /atribuicao/new.xml
  def new
    @atribuicao = Atribuicao.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @atribuicao }
    end
  end

  # GET /atribuicao/1/edit
  def edit
    @atribuicao = Atribuicao.find(params[:id])
  end

  # POST /atribuicao
  # POST /atribuicao.xml
  def create
    @atribuicao = Atribuicao.new(params[:atribuicao])

    respond_to do |format|
      if @atribuicao.save
        flash[:notice] = 'Atribuicao was successfully created.'
        format.html { redirect_to(@atribuicao) }
        format.xml  { render :xml => @atribuicao, :status => :created, :location => @atribuicao }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @atribuicao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /atribuicao/1
  # PUT /atribuicao/1.xml
  def update
    @atribuicao = Atribuicao.find(params[:id])

    respond_to do |format|
      if @atribuicao.update_attributes(params[:atribuicao])
        flash[:notice] = 'Atribuicao was successfully updated.'
        format.html { redirect_to(@atribuicao) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @atribuicao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /atribuicao/1
  # DELETE /atribuicao/1.xml
  def destroy
    @atribuicao = Atribuicao.find(params[:id])
    @atribuicao.destroy

    respond_to do |format|
      format.html { redirect_to(atribuicao_url) }
      format.xml  { head :ok }
    end
  end
end

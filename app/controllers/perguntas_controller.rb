class PerguntasController < ApplicationController
  # GET /pergunta
  # GET /pergunta.xml
  def index
    @pergunta = Pergunta.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pergunta }
    end
  end

  # GET /pergunta/1
  # GET /pergunta/1.xml
  def show
    @pergunta = Pergunta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pergunta }
    end
  end

  # GET /pergunta/new
  # GET /pergunta/new.xml
  def new
    @pergunta = Pergunta.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pergunta }
    end
  end

  # GET /pergunta/1/edit
  def edit
    @pergunta = Pergunta.find(params[:id])
  end

  # POST /pergunta
  # POST /pergunta.xml
  def create
    @pergunta = Pergunta.new(params[:pergunta])

    respond_to do |format|
      if @pergunta.save
        flash[:notice] = 'Pergunta was successfully created.'
        format.html { redirect_to(@pergunta) }
        format.xml  { render :xml => @pergunta, :status => :created, :location => @pergunta }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pergunta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pergunta/1
  # PUT /pergunta/1.xml
  def update
    @pergunta = Pergunta.find(params[:id])

    respond_to do |format|
      if @pergunta.update_attributes(params[:pergunta])
        flash[:notice] = 'Pergunta was successfully updated.'
        format.html { redirect_to(@pergunta) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pergunta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pergunta/1
  # DELETE /pergunta/1.xml
  def destroy
    @pergunta = Pergunta.find(params[:id])
    @pergunta.destroy

    respond_to do |format|
      format.html { redirect_to(pergunta_url) }
      format.xml  { head :ok }
    end
  end
end

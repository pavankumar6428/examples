class ClocksController < ApplicationController


	respond_to :html, :js, :json, :xml
	def new
		@clock = Clock.new
   		respond_to do |format|
      		format.html # new.html.erb
      		format.xml  { render :xml => @clock }
    	end
	end

	def create
		 @clocknew = Clock.create(params[:clock])
    	@clocknew.save
    	@clock = Clock.all
    	render :action => 'index'
	end

	def index
		@clock = Clock.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clock }
    end
	end

	def show
		@clock = Clock.find(params[:id])
	end

	 def destroy
    @clock = Clock.find(params[:id])
    @clock.destroy

    respond_to do |format|
      format.html { redirect_to(clocks_path) }
      format.xml  { head :ok }
    end
  end

  def edit
     @clock = Clock.find(params[:id])
  end

  def update
     @clock = Clock.find(params[:id])

    respond_to do |format|
      if @clock.update_attributes(params[:clock])
        format.html { redirect_to(@clock, :notice => 'clock was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @clock.errors, :status => :unprocessable_entity }
      end
    end
  end


end

class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  # GET /requests
  # GET /requests.json

  def offerindex
	  @requests = Request.where(:favortype => 'offer' )

  end

  def requestindex
	  @requests = Request.where(:favortype => 'request' )

  end

  def index
	  @requests = Request.all

	  if params[:search]
		  @requests = Request.search(params[:search]).order("created_at DESC")
	  else
		  @requests = Request.all.order('created_at DESC')
	  end
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
	  @user = User.find(current_user)
	  @requests = @user.requests
  end

  # GET /requests/new
=begin
  def new
    @request = Request.new
  end
=end

  def newoffer
	  @request = Request.new
	  @request.favortype = "offer"
  end

  def newrequest
	  @request = Request.new
	  @request.favortype = "request"
  end
  # GET /requests/1/edit
  def edit
  end

  # POST /requests
  # POST /requests.json
	def createrequest
		@request = Request.new(request_params)
		@request.favortype = "request"

		respond_to do |format|
			if @request.save
				format.html { redirect_to @request, notice: 'Request was successfully created.' }
				format.json { render :show, status: :created, location: @request }
			else
				format.html { render :new }
				format.json { render json: @request.errors, status: :unprocessable_entity }
			end
		end
	end

	def createoffer
    @request = Request.new(request_params)
    @request.favortype = "offer"

    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
	    params.require(:request).permit(:title, :description, :username, :photo, :favortype).merge(user_id: current_user.id,)
    end
end

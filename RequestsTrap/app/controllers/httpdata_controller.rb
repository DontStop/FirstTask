class HttpdataController < ApplicationController
  before_action :set_httpdatum, only: [:show, :edit, :update, :destroy]

  # GET /httpdata
  # GET /httpdata.json
  def index
    @httpdata = Httpdatum.all
  end

  # GET /httpdata/1
  # GET /httpdata/1.json
  def show
  end

  # GET /httpdata/new
  def new
    @httpdatum = Httpdatum.new
  end

  # GET /httpdata/1/edit
  def edit
  end

  # POST /httpdata
  # POST /httpdata.json
  def create
    @httpdatum = Httpdatum.new(httpdatum_params)

    respond_to do |format|
      if @httpdatum.save
        format.html { redirect_to @httpdatum, notice: 'Httpdatum was successfully created.' }
        format.json { render :show, status: :created, location: @httpdatum }
      else
        format.html { render :new }
        format.json { render json: @httpdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /httpdata/1
  # PATCH/PUT /httpdata/1.json
  def update
    respond_to do |format|
      if @httpdatum.update(httpdatum_params)
        format.html { redirect_to @httpdatum, notice: 'Httpdatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @httpdatum }
      else
        format.html { render :edit }
        format.json { render json: @httpdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /httpdata/1
  # DELETE /httpdata/1.json
  def destroy
    @httpdatum.destroy
    respond_to do |format|
      format.html { redirect_to httpdata_url, notice: 'Httpdatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_httpdatum
      @httpdatum = Httpdatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def httpdatum_params
      params.require(:httpdatum).permit(:remote_ip, :request_method, :query_string, :query_params, :request_id)
    end
end

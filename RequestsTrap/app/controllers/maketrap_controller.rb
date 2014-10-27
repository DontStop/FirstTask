class MaketrapController < ApplicationController
  def index
    @request = Request.find_or_create_by(name: params[:name])
    #format.html { redirect_to requests_path}
    #if @request==nil

    httpdata=Httpdata.new
    httpdata.remote_ip=@request.id
    httpdata.request_method=request.method_symbol
    httpdata.query_string=request.query_string
    httpdata.query_params=request.request_parameters().to_s if request.post?
    httpdata.query_params=request.query_parameters().to_s if request.get?
    httpdata.save
      respond_to do |format|
        format.html { redirect_to requests_path, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      end
   # end
  end

end

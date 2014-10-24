class MaketrapController < ApplicationController
  def index
    @request = Request.find_or_create_by(name: params[:name])
    #format.html { redirect_to requests_path}
    #if @request==nil
      respond_to do |format|
        format.html { redirect_to requests_path, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      end
   # end
  end

end

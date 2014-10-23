class MaketrapController < ApplicationController
  def index
    @requests = Request.all
  end
end

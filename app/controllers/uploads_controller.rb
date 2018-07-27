class UploadsController < ApplicationController
  def index

  end

  def new
    @app_file = AppFile.new
  end
end

class UploadsController < ApplicationController
  before_action :build_app_file, only: %i(new create)

  def index

  end

  def new
  end

  def create
    @app_file.save!
  end

  private

  def build_app_file
    @app_file = AppFile.new(app_file_params)
  end

  def app_file_params
    params.fetch(:app_file, {}).permit(%i(file_data))
  end
end

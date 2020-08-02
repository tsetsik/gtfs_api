class Api::V1::GtfsController < ApplicationController
  def create
    import = ImportService.new(fileUrl: params[:fileUrl])
    head import.import ? 200 : 400, content_type: "text/html"
  end
end

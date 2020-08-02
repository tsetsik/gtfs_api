class Api::V1::StopsController < ApplicationController
  def index
    render json: stops
  end

  private

  def stops
    Stop.all.yield_self do |chain|
      # Allow filtering by latitude, longitude and range
      if params[:latitude].present? && params[:longitude].present? && params[:range].present?
        chain = chain.near([params[:latitude], params[:longitude]], params[:range], units: :km)
      elsif params[:latitude].present? && params[:longitude].present? && params[:range].nil?
        chain = chain.near([params[:latitude], params[:longitude]], 5, units: :km)
      end

      # Allow setting limit
      chain = chain.limit(params[:limit]) if params[:limit].present?

      chain
    end
  end
end

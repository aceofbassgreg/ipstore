class IpAddressesController < ApplicationController
require "net/http"
require "json"


  def index
    render json: IpAddress.pluck(:ip)
  end

  def show
  	IpAddress.find(params[:ip])
  rescue ActiveRecord::RecordNotFound
    render(:partial => 'errors/internal_server_error', :status => :internal_server_error)
  end

  def create
    params[:_json].each do |ip|
      IpAddress.create(ip: ip) unless ip == :ip
    end

    render json: IpAddress.pluck(:ip)
  end

  def destroy
    IpAddress.destroy_all
    head :ok
  end
end


class IpAddressesController < ApplicationController
require "net/http"
require "json"


  def index
    render json: IpAddress.pluck(:ip)
  end

  def show
  	@ip_address = IpAddress.find_by_ip(params[:ip])
    render json: @ip_address.ip
  end

  def create
    params[:_json].each do |ip|
      IpAddress.create(ip: ip) unless IpAddress.pluck(:ip).include?(ip)
    end

    render json: IpAddress.pluck(:ip)
  end

  def destroy
    IpAddress.destroy_all
    head :ok
  end
end


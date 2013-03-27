class IpAddressesController < ApplicationController
require "net/http"
require "json"


  def index
    render json: IpAddress.pluck(:ip)
  end

  def show
  	IpAddress.find(params[:ip])
  end

  def create
    existing_addresses = IpAddress.pluck(:ip)

    params[:_json].each do |ip|
      IpAddress.create(ip: ip) unless existing_addresses.include?(ip)
    end
    render json: existing_addresses
  end

  def destroy
    IpAddress.destroy_all
    head :ok
  end

  def do_nothing
  end
end


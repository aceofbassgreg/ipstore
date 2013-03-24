class IpAddressesController < ApplicationController
require "net/http"
require "json"

  def index
  	# ips = IpAddress.all 
  end

  def show
  	# ip = IPAddress.find(params[:ip])
  end

  def new
    # @ip = IpAddress.new
  end

  def create
    # ip = IpAddress.new(params[:ip_address])
    # JSON.parse(ip)
    # ips = IpAddress.all
    
    # #need to return 200
    #   unless ip = IpAddress.find(params[:ip])
    #     ips.push(ip)
    #   end
    # ip.code
  end

  def destroy
    # ip = IpAddress.all
    # ip.destroy
    # head :ok
  end
end


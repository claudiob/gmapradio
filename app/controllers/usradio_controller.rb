class UsradioController < ApplicationController
  def index
    api_keys = YAML.load_file(Rails.root.join('config', 'gmaps_api_key.yaml'))
    @api_key = api_keys[request.host] # or request.host_with_port
  end

  def update
    respond_to do |format|
       format.js
    end    
  end
  
end
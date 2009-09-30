class UsradioController < ApplicationController
  def index
    api_keys = YAML.load_file "#{RAILS_ROOT}/config/gmaps_api_key.yaml" 
    @api_key = api_keys[request.host] # or request.host_with_port
    respond_to do |format|
      format.html
      format.xml
    end    
  end

  def update
    respond_to do |format|
       format.js
    end    
  end
  
end
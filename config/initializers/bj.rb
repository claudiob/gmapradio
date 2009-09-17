# This initializer runs at Rails boot time a Radiotagmap process that creates
# and keeps updated a KML file which represents each U.S. state with a color
# indicative of the most played genre/tag by its FM radios in that moment

kml_path = "kml/overlay.kml" # TODO: DRY this, also used in views/usradio/index
command = "Radiotagmap::update_kml '#{RAILS_ROOT}/public/#{kml_path}'" # Add forever, tags
puts "Loading radiotagmap process (#{command})"

# To prevent pending processes from queueing, clear every pending job
begin
  ActiveRecord::Base.connection.execute("delete from bj_job;")
rescue ActiveRecord::StatementInvalid # In case the table does not yet exist
end

Bj.submit "ruby -r rubygems -e \"require 'radiotagmap'; #{command};\""

require 'rubygems'
require 'webrick'

include WEBrick

config = {:Port => 2000, :DocumentRoot => "."}

server = HTTPServer.new(config)

['INT', 'TERM'].each do |signal|
	trap(signal) { server.shutdown }
end

server.start
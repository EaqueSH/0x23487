require 'colorize'
require 'open-uri'


f = File.open("liste1.txt", "r")

f.each do |file|

	r = open("http://#{file}").read
	puts r.status



end
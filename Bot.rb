#!/usr/bin/env ruby

require 'discordrb'
require 'open-uri'
require 'json'

bot = Discordrb::Commands::CommandBot.new token: '', prefix: './'


bot.mention do |event|

	event.user.pm("Hi <@#{event.user.id}>, you have mentionned me ?")




end

bot.command :help do |helper|

	helper.respond("VOUS AVEZ ACCEDEZ AU HELPER ! :white_check_mark:\n`Prefixe: <-command->`\n\nTOOL :desktop:\n`Profile_ip: Type this command for watch profile of ip`\n\nINFORMATIONS OF DEVLOPPER :bulb:\n`github: Get the github of the creator`")	


end

bot.command :github do |github|

	github.respond("THE GITHUB OF MUHAM'RB IS: \n`https://github.com/EaqueSH`")


end


bot.command :Profile_ip do |profile_ip, *args|

	
	r = open("http://api.ipstack.com/#{args.join(' ')}?access_key=94cb634d42c46b94184a14a077481c89").read
	kaka = JSON.parse(r)

	profile_ip.respond("Ip: #{kaka["ip"]}\nCity: #{kaka["city"]}")

	



end

bot.run
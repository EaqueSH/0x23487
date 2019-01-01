#!/usr/bin/env ruby

require 'discordrb'
require 'open-uri'
require 'json'

bot = Discordrb::Commands::CommandBot.new token: 'NTI5MjkyNzg4MTkwMjgxNzI4.Dwuwgg.HHSjzXONXFEzXxwpgXoa5Qr3hU0', prefix: './'


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
bot.command :tlen do |e, *args|
	event.channel.send_embed do |e|
          e.title = "Some general info about #{mention.name}"
          e.add_field(name: "ID", value: "`#{mention.id}`")
          e.add_field(name: "Distinct (username#0000)", value: "#{mention.distinct}")
          e.add_field(name: "Nickname", value: "#{mention.on(event.server).nick}")
          e.add_field(name: "Game", value: "#{mention.game}")
          e.add_field(name: "Created On", value: "#{mention.creation_time}")
          e.add_field(name: "Joined This Server On", value: "#{mention.on(event.server).joined_at}")
          e.color = colors
end



bot.run

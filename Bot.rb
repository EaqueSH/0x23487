#!/usr/bin/env ruby

require 'discordrb'

bot = Discordrb::Bot.new token: 'XXXXXXXXXXXXXXXXXXXXXXXX'

bot.mention do |event|

	event.user.pm("Hi <@#{event.user.id}>, you have mentionned me ?")




end

bot.message(start_with: '<-help->') do |mess|

	mess.respond("VOUS AVEZ ACCEDEZ AU HELPER ! :white_check_mark:\n`Prefixe: <-command->\n\n `")	


end

bot.run
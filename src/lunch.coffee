# Description:
#   Hubot enforces the correct time to talk about lunch.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   lunch -> Isn't it a little early to be talking about lunch?
#
#
# Author:
#   arosenb2

module.exports = (robot) ->
  robot.hear /lunch/i, (msg) ->
    if new Date.getHours < 12 then msg.reply "Hey #{msg.message.user.name}, isn't it a bit early to start talking about lunch?"

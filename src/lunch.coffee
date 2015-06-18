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

moment = require('moment-timezone')

module.exports = (robot) ->
  robot.hear /lunch/i, (msg) ->
    isAppropriateLunchTime = moment().tz("America/New_York").getHours() < 12
    if isAppropriateLunchTime then msg.send "Hey #{msg.message.user.name}, isn't it a bit early to start talking about lunch?"

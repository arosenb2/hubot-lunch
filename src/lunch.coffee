# Description:
#   Hubot enforces the correct time to talk about lunch.
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_MOMENT_TIMEZONE - http://momentjs.com/timezone Timezone. If not present, defaults to Europe/London.
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
    timezone = process.env.HUBOT_MOMENT_TIMEZONE || "Europe/London"
    isAppropriateLunchTime = moment().tz(timezone).getHours() < 12
    if isAppropriateLunchTime then msg.send "Hey #{msg.message.user.name}, isn't it a bit early to start talking about lunch?"

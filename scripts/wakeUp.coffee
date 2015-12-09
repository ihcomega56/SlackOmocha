# Description:
#  Keep yobot alive
cron = require('cron').CronJob
module.exports = (robot) ->
  new cron '0 15,35,55 * * * 0-6', () =>
    robot.send {room: "labo"}, "寝る時間だ"
  , null, true

  robot.hear /起きて！/i, (msg) ->
    msg.send "お、起きてるで！！"

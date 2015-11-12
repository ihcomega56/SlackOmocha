cron = require('cron').CronJob
module.exports = (robot) ->
  new cron '0 15,35,55 * * * 1-5', () =>
    robot.send {room: "labo"}, "Hello, world!"
  , null, true

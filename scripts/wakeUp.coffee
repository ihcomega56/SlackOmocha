cronJob = require('cron').CronJob

module.export = (robot) ->
  task1 = new cronJob('00 15,35,55 * * * 0-6', () ->
    envelope = room: "general"
    robot.send envelope, "生きてるで〜"

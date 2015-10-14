module.exports = (robot) ->

  robot.hear /((せ|セ|ｾ|SE|se)+.?(や|ヤ|ﾔ|YA|ya)+.?(な|ナ|ﾅ|NA|na))+/i, (msg) ->
    msg.send "知らんけど"

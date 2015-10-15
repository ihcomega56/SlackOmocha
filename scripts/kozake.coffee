# Description:
#  Call kozakesan when some words related to him are mentioned.

module.exports = (robot) ->

  robot.hear /((こ|コ|ｺ)+.?(ざ|ザ|ｻﾞ)+.?(け|ケ|ｹ)+.?(さ|サ|ｻ)+.?(ん|ン|ﾝ)+|(こ|コ|ｺ|小)+.?(酒|🍶)+.?(さ|サ|ｻ)+.?(ん|ン|ﾝ))+/i, (msg) ->
    msg.send "こざけるな！"

  robot.hear /(関西|羽田|東京|関東|技術|実力)|(思|おも)+い+(知|し)+/i, (msg) ->
    msg.send "https://twitter.com/s_kozake/status/507829819480870912"

  robot.hear /(船|IT業界)+/i, (msg) ->
    msg.send "https://twitter.com/s_kozake/status/578908271903305728"

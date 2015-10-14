# Commands:
#   want <place> - 行きたいとこ にカードを追加する
#   will <place> - 行くとこ にカードを追加する
#   went <place> - 行ったとこ にカードを追加する

module.exports = (robot) ->
  robot.hear /^want (.*)/i, (msg) ->
    title = "#{msg.match[1]}"

    Trello = require("node-trello")
    t = new Trello(process.env.HUBOT_TRELLO_KEY, process.env.HUBOT_TRELLO_TOKEN)
    t.post "/1/cards", {name: title, idList: process.env.HUBOT_TRELLO_LIST_WANT}, (err, data) ->
      if err
        msg.send "ふえぇ"
        return
      msg.send "「#{title}」 を行きたいとこに保存しました"

  robot.hear /^will (.*)/i, (msg) ->
    title = "#{msg.match[1]}"

    Trello = require("node-trello")
    t = new Trello(process.env.HUBOT_TRELLO_KEY, process.env.HUBOT_TRELLO_TOKEN)
    t.post "/1/cards", {name: title, idList: process.env.HUBOT_TRELLO_LIST_WILL}, (err, data) ->
      if err
        msg.send "ふえぇ"
        return
      msg.send "「#{title}」 を行くとこに保存しました"

  robot.hear /^went (.*)/i, (msg) ->
    title = "#{msg.match[1]}"

    Trello = require("node-trello")
    t = new Trello(process.env.HUBOT_TRELLO_KEY, process.env.HUBOT_TRELLO_TOKEN)
    t.post "/1/cards", {name: title, idList: process.env.HUBOT_TRELLO_LIST_WENT}, (err, data) ->
      if err
        msg.send "ふえぇ"
        return
      msg.send "「#{title}」 を行ったとこに保存しました"

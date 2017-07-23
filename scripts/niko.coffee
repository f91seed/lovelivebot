# Description
# 矢澤にこ
#
# Commands:
# :niko / @ nikobot - ランダムでセリフを言う

message_yazawaniko = [
  "みんなのアイドルにこにーだよ～にっこにっこにー☆",
  "学院でもそんな感じなのか？・・・何のことかわからないにこ～",
  "あっつーい！・・・にこの水着に期待してる？",
  "プレゼントがあるって！やっぱりにこは人気者ねー",
  "いい？アイドルっていうのは笑顔を見せる仕事じゃない！笑顔にさせる仕事なの！それをよーく自覚しなさい！",
  "曲はいつもどんなときも、全員のためにあるのよ"
  ]

message_morning = [
  "おねえちゃん、起きて～！",
  "おはよう Powerful day!(Morning!)",
  "山頂アタックです！"
  ]

message_tired = [
  "今日も遅くまでお疲れ様でした",
  "ウチがよしよししてあげるやん",
  "穂乃果のハートをみんなにお届け！",
  "暑くて仕事するのが大変だね～"
  ]

module.exports = (robot) ->
  robot.hear /にこ|@nikobot|にこちゃん/, (msg) ->
    msg.send msg.randam message_yazawaniko

  robot.hear /おはよう/i, (msg) ->
    msg.send msg.randam message_morning

  robot.hear /(疲|つか)れた/i, (msg) ->
    msg.send msg.randam message_tired

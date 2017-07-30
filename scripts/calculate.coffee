#Description
# 計算するbot
#Command:
# 人名と計算結果をつぶやいたら計算してくれる

module.exports = (robot) ->

  # redisに保存するためのキー
  KEY_CALC_MONEY = 'calc_money'

  # 対象と金額を指定(貸し)
  robot.hear /^(.*)さんに貸し([0-9]+)元/, (msg) ->
    name  = msg.match[1]
    moneies = (robot.brain.get KEY_CALC_MONEY) or {}
    moneies[name] = (moneies[name] or 0) + Number(msg.match[2])

    robot.brain.set KEY_CALC_MONEY, moneies

    msg.send "#{name}さん: #{moneies[name]}元"

  # 対象と金額を指定(返金)
  robot.hear /^(.*)さんから返金([0-9]-)元/i, (msg) ->
    name  = msg.match[1]
    moneies = (robot.brain.get KEY_CALC_MONEY) or {}
    moneies[name] = (moneies[name] or 0) + Number(msg.match[2])

    robot.brain.set KEY_CALC_MONEY, moneies

    msg.send "#{name}さん: #{moneies[name]}元"

  # 金額の合計を表示
  robot.respond /金額リスト/i, (msg) ->
    moneies = (robot.brain.get KEY_CALC_MONEY) or {}
    msg.send "#{name}さん: #{moneies}元"

  # 金額をリセット
  robot.respond /reset/i, (msg) ->
    robot.brain.set KEY_CALC_MONEY, {}
    msg.send "reset: done"


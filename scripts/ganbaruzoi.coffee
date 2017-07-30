# Description
# 頑張るぞいを出すだけ
# commands:
# 頑張る - がんばるぞい

module.exports = (robot) ->
  robot.hear /(がんば|頑張)る/i, (msg) ->
    msg.send "http://33.media.tumblr.com/0bf0db79da89175b8bd514b13f9e5bb7/tumblr_n8i0tabaMp1re64ggo1_400.png"


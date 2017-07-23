# Description
# tumblrと連携してランダムで画像を取得する
#
# Commands:
# 

tumblr = require "tumblrbot"
SOURCES = {
  "lovelivegif.tumblr.com"
  }

getGit = (blod, msg) ->
  tumblr.photos(blog).randam (post) ->
    msg.send post.photos[0].original_size.url

module.exports = (robot) ->
  robot.respond /gif/i, (msg) ->
    blog = msg.random Object.keys(SOURCES)
    getGif blog, msg


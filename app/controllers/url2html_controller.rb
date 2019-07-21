require 'net/http'
require 'net/https'
require 'uri'

class Url2htmlController < ApplicationController
  def get
    # url = URI.parse('https://wikiwiki.jp/seikai/%E3%82%B7%E3%82%B9%E3%83%86%E3%83%A0/%E8%BB%A2%E8%81%B7')
    # puts url.port
    # res = Net::HTTP.start(url.host, url.port) do |http|
    #   http.get('/')
    # end
    #
    # puts res.code
    # puts res.body
    url = URI.parse(params[:url])
    puts url.path
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    resp, result = http.get(url.path)

    # p resp.body
    # p result

    render plain: resp.body
  end

  def post
    # url = URI.parse('https://wikiwiki.jp/seikai/%E3%82%B7%E3%82%B9%E3%83%86%E3%83%A0/%E8%BB%A2%E8%81%B7')
    # puts url.port
    # res = Net::HTTP.start(url.host, url.port) do |http|
    #   http.get('/')
    # end
    #
    # puts res.code
    # puts res.body
    p params[:url]
    url = URI.parse(params[:url])
    puts url.path
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    resp, result = http.get(url.path)

    # p resp.body
    # p result

    render plain: resp.body
  end
end

# encoding : utf-8
require 'rubygems'
require 'open-uri'
require 'nokogiri'
require 'csv'

namespace :crawler do
    # updating 
    url = 'http://vip.stock.finance.sina.com.cn/corp/view/vCB_AllBulletin.php?stockid=002121&Page=1'
    html = open(url).read
    html.force_encoding("gbk")
    html.encode!("utf-8", :undef => :replace, :replace => "", :invalid => :replace)
    doc = Nokogiri::HTML(html)
end

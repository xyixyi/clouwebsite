# encoding : utf-8
require 'rubygems'
require 'open-uri'
require 'nokogiri'
require 'json'
require 'rchardet19'
require 'pry'   # for debugging on terminal using command lines
require 'net/http'
require 'csv'

# 用来扒的网址
PAGE_URL = "http://www.cninfo.com.cn/cninfo-new/index"
# PAGE_URL = "http://www.cninfo.com.cn/cninfo-new/disclosure/szse"

# set timeout in Net::HTTP to 10 minutes, 否则有时候open url的时候会出现Net::OpenTimeout error
module Net
    class HTTP
        alias old_initialize initialize

        def initialize(*args)
            old_initialize(*args)
            @read_timeout = 10*60     # 10 minutes
        end
    end
end



# 来源：https://ruby-china.org/topics/6970
def toUtf8(_string)
    #用于检测编码格式  在gem rchardet9里
    if CharDet.detect(_string) .confidence > 0.6
      _string.force_encoding(cd.encoding)
    end
    _string.encode!("utf-8", :undef => :replace, :replace => "?", :invalid => :replace)
    return _string
end
# doc = Nokogiri::HTML(toUtf8(open(PAGE_URL).read))




# 有用并且efficiency的code：   在terminal跑 ruby crawler.rb, root文件夹就有cninfo.csv
# works perfectly on pry?!?!??!

doc = Nokogiri::HTML(open(PAGE_URL).read)

CSV.open("cninfo.csv", "wb") do |csv|
    csv << ["announcements"]
    csv << ["stock", "title"]                                   #未完 "date", "link", "type"
    doc.css('li').each do |li|
        @title = li.css("font").text[6..-1]
        puts @title
        li.css('div.t3 a').each do |a|
            puts "     " + a.text.lstrip
            csv << [@title, a.text.lstrip]
        end
        li.css('div.t4 a').each do |a|
            puts "     " + a.text.lstrip
            csv << [@title, a.text.lstrip]
        end
        
    end
end

puts "wrote data into csv, done"


# PAGE_URL = "http://disclosure.szse.cn/m/search0425.jsp"              ??????深交所网址

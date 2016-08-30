# encoding : utf-8
require 'rubygems'
require 'open-uri'
require 'pry'   # for debugging on terminal using command lines
require 'net/http'
require 'nokogiri'
require 'csv'

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

# 有用并且efficiency的code：   在terminal跑 ruby crawler.rb, root文件夹就有cninfo.csv

# return Nokogiri::HTML(url) with encoding utf-8
def read_url(url)
    html = open(url).read
    html.force_encoding("gbk")
    html.encode!("utf-8", :undef => :replace, :replace => "", :invalid => :replace)
    return Nokogiri::HTML(html)
end 

url = 'http://vip.stock.finance.sina.com.cn/corp/view/vCB_AllBulletin.php?stockid=002121&Page='
i = 1
CSV.open("sina_link.csv", "w+") #清空原有的file
while i <= 48 do
    doc = read_url(url + "#{i}")
    doc = doc.css('div.datelist')
    CSV.open("sina_link.csv", "a+") do |csv|
        doc.css('a').each do |content|
            @title = content.text
            if @title.include? "股东大会"
                @type = "股东大会"
            elsif @title.include? "董事会"
                @type = "董事会"
            elsif @title.include? "监事会"
                @type = "监事会"
            else
                @type = "其他"
            end
            @link = "http://vip.stock.finance.sina.com.cn" + content['href']
            csv << [@link, @type, @title]
        end
    end
    i+=1
end 

puts "finish getting sina_link"

puts "start geting result"

# 读取原始csv，进入每个link找到pdf，重新存到新的csv
result = CSV.open("result.csv", "w+") #清空原有的file
result << ["Date", "Title", "Link", "Type"]
csv = CSV.read('sina_link.csv')
csv.each do |row|
 doc = read_url(row[0])
 date = doc.css("td[style='text-align:center;height:12px;']").text[5..-1]
 pdf =  doc.css('tr th a')[0]['href']
 if !pdf.include? "PDF" #如果新浪证券没有原始pdf文件，直接返回sina_link
    pdf = row[0]
 end

 CSV.open("result.csv", "a+") do |new_csv|
    # date, title, pdf_link, type
    new_csv << [date, row[2], pdf, row[1]]
 end 
end

puts "finish. check result.csv and now you can import it"

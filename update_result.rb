require 'csv'
csv = CSV.read('result.csv')
csv.each do |row|
 CSV.open("testest.csv", "a+") do |new_csv|
    # sina_link, date, title, pdf_link, type
    pdf = row[3]
    if pdf == ""
        pdf = row[0]
    end
    new_csv << [row[1], row[2], pdf, row[4]]
 end 
end
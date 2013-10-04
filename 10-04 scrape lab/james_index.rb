require 'nokogiri'
require 'open-uri'
require 'pry'

doc = Nokogiri::HTML(open('http://students.flatironschool.com/'))

all_students_important_parts = doc.css(".home-blog-post")
#above line is unneccessary, however I want to narrow down the ele

names = all_students_important_parts.map do |student|
  student.css(".big-comment h3 a").text
end

photo_urls = all_students_important_parts.map do |student|
  student.css(".prof-image").attr("src").to_s
end

taglines = all_students_important_parts.map do |student|
  student.css(".home-blog-post-meta").text
end

blurbs = all_students_important_parts.map do |student|
  student.css(".excerpt p").text
end
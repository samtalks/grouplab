require 'nokogiri'
require 'open-uri'
require 'pry'

doc = Nokogiri::HTML(open('http://students.flatironschool.com/index.html'))
#doc = Nokogiri::HTML(open('http://students.flatironschool.com/students/vivianzhang.html'))


p slinks = doc.css('.big-comment a').map { |link| 'http://students.flatironschool.com/' + link['href'] }


s = Nokogiri::HTML(open(slinks[1]))  # to get each different student, change the index 0.


p sname = s.css('h4')[0].text  # keep all these indexes (0) the same. Don't change 0.

smedia = s.css('.social-icons a')

puts 

smedia.each do |i|
  puts i.attr('href')   # all student's social media links
end

puts
p quote = s.css('h3')[0].children.text

puts 
p bio = s.css('.services p')[0].children.text.strip

puts 
p work = s.css('.services p')[1].children.text.strip

puts 
p education = s.css('.services ul')[0].children.text.squeeze(' ').split("\n ")

# education = s.css('.services p')[1].children.text.squeeze(' ').split("\n ")[1]  # for Sam Yang's page

#binding.pry

=begin
hacker_news = Nokogiri::HTML(open('https://news.ycombinator.com/news'))

stories = hacker_news.css('span.comhead')


stories.first.css('a').to_s

stories.first.css('a').attr("href")
stories.first.css('a').inner 

stories.first.parent.css('a').text

stories.first.parent.css('a').text
=============================
stories = sources.collect do |source_doc|
  title = source_doc.parent.css ('a').text.to_s
  href = source.doc.parent.css('a')

stories{}

vote_count = hacker_news data

=end

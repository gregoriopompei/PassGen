#select language

lang = ""

puts "1. Italian"
puts "2. English"
puts "3. Spanish"

print "Please, select your language: "
user_lang = gets.to_i

if user_lang == 1
	lang = "italian"
elsif user_lang == 2
	lang = "english"
elsif user_lang == 3
	lang = "spanish"
else
	print "#{user_lang} is an invalid option.\n"
end

File.open("languages/#{lang}"){|f|
  line = nil
  1.times { line = f.gets }
  puts "\n#{line}"
}
password = gets.chomp
  o = [('a'..'z'), ('A'..'Z'), (0 .. 9)].map { |i| i.to_a }.flatten
  string = (0...password.to_i).map { o[rand(o.length)] }.join

  (0...8).map { (65 + rand(15)).chr }.join

  (0...password.to_i).map {('a'..'z').to_a[rand(15)] }.join

  print "This is your password : #{string}\n"


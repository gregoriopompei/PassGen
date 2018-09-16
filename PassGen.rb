<<<<<<< HEAD

#select language

lang = ""

print "Please, select your language: \n"

sleep 0.5

puts "1. Italian"
puts "2. English"
puts "3. Spanish"

user_lang = gets.to_i

if user_lang == 1
	lang = "italian"
elsif user_lang == 2
	lang = "english"
elsif user_lang == 3
	lang = "spanish"
else
	print "I don't know this language, sorry.\n"
end

#start generator
#

progress = 'Loading < '
1000.times do |i|

j = i + 1

  if j % 20 == 0
    progress << "·"
    print "\r"
    print progress + " > #{j / 10}%"
    $stdout.flush
    sleep 0.05
  end
end

#

#welcome
File.open("languages/#{lang}"){|f|
  line = nil
  1.times { line = f.gets }
  puts "\n#{line}\n"
}

#name
File.open("languages/#{lang}"){|f|
  line = nil
  2.times { line = f.gets }
  puts "\n#{line}\n"
}

name = gets.chomp

if user_lang == 1
        puts "Ok #{name}, inserisci la lunghezza della password: "
elsif user_lang == 2
        puts "Ok #{name}, insert your password's lenght: "
elsif user_lang == 3
        puts "Ok #{name}, Escribes la longitud tuyo contraseña: "
end

password = gets.to_i

#thinking
File.open("languages/#{lang}"){|f|
  line = nil
  3.times { line = f.gets }
  puts "#{line}\n"
}

sleep 2.5

=======
print "Select language [Ita][Eng]\n"
lang = gets.chomp
print "Insert your password length:\n"
password = gets.chomp
>>>>>>> c071d433552e198316cfb23ed204213907e4a3e6
  o = [('a'..'z'), ('A'..'Z'), (0 .. 9)].map { |i| i.to_a }.flatten
  string = (0...password.to_i).map { o[rand(o.length)] }.join

  (0...8).map { (65 + rand(15)).chr }.join

  (0...password.to_i).map {('a'..'z').to_a[rand(15)] }.join

<<<<<<< HEAD
#result
if user_lang == 1
        puts "Spero che | #{string} | sia una buona password per te :) \nCiao!"
elsif user_lang == 2
        puts "I hope that | #{string} | is a good password for you :) \nBye"
elsif user_lang == 3
        puts "Yo espero que | #{string} | es buena para ti como contraseña :) \n¡Adiós!"
end

=======
  print "This is your password : #{string}\n"  
>>>>>>> c071d433552e198316cfb23ed204213907e4a3e6

print "Select language [Ita][Eng]\n"
lang = gets.chomp
print "Insert your password length:\n"
password = gets.chomp
  o = [('a'..'z'), ('A'..'Z'), (0 .. 9)].map { |i| i.to_a }.flatten
  string = (0...password.to_i).map { o[rand(o.length)] }.join

  (0...8).map { (65 + rand(15)).chr }.join

  (0...password.to_i).map {('a'..'z').to_a[rand(15)] }.join

  print "This is your password : #{string}\n"  

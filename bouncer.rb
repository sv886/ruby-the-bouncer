
def int_or_str(age, nationality)
  old = "How old are you"
  nat = "American or Brit"
  bad_answer = "You goofed on one of those answers. Try again. Enter quit for either question to exit program."
  bye = "See ya!"

  if age.to_i.to_s == age && (nationality.downcase == "american" || nationality.downcase == "us")
    us_age(age)
  elsif age.to_i.to_s == age && (nationality.downcase == "brit" || nationality.downcase == "uk")
    uk_age(age)
  elsif age.downcase == "quit" || nationality.downcase == "quit"
    puts "See ya!"
    system("say -v ralph #{bye}")
  elsif age.to_i.to_s != age || (nationality != "american" || nationality != "us" ||nationality != "brit" ||nationality != "uk")
    puts "You goofed on one of those answers. Try again. Enter 'quit' for either question to exit program."
    system("say -v ralph #{bad_answer}")
    puts "How old are you?:"
    system("say -v ralph #{old}")
    age = gets.chomp
    puts "American or Brit?:"
    system("say -v ralph #{nat}")
    nationality = gets.chomp
    int_or_str(age, nationality)
  end
end

def us_age(age)
  old = "How old are you"
  nat = "American or Brit"
  young = "Past your bedtime, is it not?"
  eighteen = "You can smoke and vote. Good for you."
  twenty_one = "You can drink, smoke and vote. Good for you."
  twenty_five = "You can drink, smoke, vote and wreck your rental."

      if (age.to_i < 18)
        puts "Isn't it past your bedtime?"
        system("say -v ralph #{young}")
      elsif (age.to_i >= 18 && age.to_i < 21)
        puts "You can smoke and vote. Good for you."
        system("say -v ralph #{eighteen}")
      elsif (age.to_i >= 21 && age.to_i < 25)
        puts "You can drink, smoke and vote. Good for you."
        system("say -v ralph #{twenty_one}")
      elsif (age.to_i >= 25)
        puts "You can drink, smoke, vote and wreck your rental."
        system("say -v ralph #{twenty_five}")
      end
      puts "How old are you?:"
      system("say -v ralph #{old}")
      age = gets.chomp
      puts "American or Brit?:"
      system("say -v ralph #{nat}")
      nationality = gets.chomp
      int_or_str(age, nationality)
end

def uk_age(age)
  old = "How old are you"
  nat = "American or Brit"
  young = "Nada!"
  ask = "Did your parents say it was ok to drink?"
  ok = "Party on, Garth."
  no = "Come back in a couple years, ol chap."
  eighteen = "You can drink. Good on ya."

      if age.to_i <= 15
        puts "Nada!"
        system("say -v ralph #{young}")
      elsif (age.to_i > 15 && age.to_i < 18)
        puts "Did your parents say it was ok to drink?"
        system("say -v ralph #{ask}")
        answer = gets.chomp
        if answer.downcase == "y" || answer.downcase == "yes"
          puts "Party on, Garth."
          system("say -v ralph #{ok}")
        else
          puts "Come back in a couple years, ol' chap."
          system("say -v ralph #{no}")
        end
      elsif (age.to_i >= 18)
        puts "You can drink. Good on ya."
        system("say -v ralph #{eighteen}")
      end
    puts "How old are you?:"
    system("say -v ralph #{old}")
    age = gets.chomp
    puts "American or Brit?:"
    system("say -v ralph #{nat}")
    nationality = gets.chomp
    int_or_str(age, nationality)
end

old = "How old are you"

nat = "American or Brit"

puts "American or Brit?:"

system("say -v ralph #{nat}")

nationality = gets.chomp

puts "How old are you?:"

system("say -v ralph #{old}")

age = gets.chomp

int_or_str(age, nationality)

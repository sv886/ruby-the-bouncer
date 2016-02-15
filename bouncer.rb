
def int_or_str(age, nationality)

  bad_answer = "You goofed on one of those answers. Try again."

  if age.to_i.to_s == age && (nationality.downcase == "american" || nationality.downcase == "us")
    us_age(age)
  elsif age.to_i.to_s == age && (nationality.downcase == "brit" || nationality.downcase == "uk")
      uk_age(age)
  elsif age.downcase == "quit" || nationality.downcase == "quit"
    "See ya!"
  elsif age.to_i.to_s != age || nationality.to_i.to_s == "0"
    puts "You goofed on one of those answers. Try again. Type 'quit' on nationality question to exit program."
    system("say -v ralph #{bad_answer}")
    puts "How old are you?:"
    age = gets.chomp
    puts "American or Brit?:"
    nationality = gets.chomp
    int_or_str(age, nationality)
  end
end

def us_age(age)
      if (age.to_i < 18)
        puts "Isn't it past your bedtime?"
      elsif (age.to_i >= 18 && age.to_i < 21)
        puts "You can smoke and vote. Good for you."
      elsif (age.to_i >= 21 && age.to_i < 25)
        puts "You can drink, smoke and vote. Good for you."
      elsif (age.to_i >= 25)
        puts "You can drink, smoke, vote and wreck your rental."
      end
      puts "How old are you?:"
      age = gets.chomp
      puts "American or Brit?:"
      nationality = gets.chomp
      int_or_str(age, nationality)
end

def uk_age(age)
      if age.to_i <= 15
        puts "No dice!"
      elsif (age.to_i > 15 && age.to_i < 18)
        puts "Did your parents say it was ok to drink?"
        answer = gets.chomp
        if answer.downcase == "y" || answer.downcase == "yes"
          puts "Ok have fun"
        else
          puts "Come back in a couple years, ol' chap."
        end
      elsif (age.to_i >= 18)
        puts "You can drink. Good for you."
      end
    puts "How old are you?:"
    age = gets.chomp
    puts "American or Brit?:"
    nationality = gets.chomp
    int_or_str(age, nationality)
end

old = "How old are you"

nat = "American or Brit"

puts "How old are you?:"

system("say -v ralph #{old}")

age = gets.chomp

puts "American or Brit?:"

system("say -v ralph #{nat}")

nationality = gets.chomp

int_or_str(age, nationality)

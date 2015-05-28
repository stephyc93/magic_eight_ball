class MagicEight

  def initialize
    @choice_hash = 
    {
      1 => "It is certain",
      2 =>"It is decidedly so",
      3 => "Without a doubt",
      4 => "Yes definitely",
      5 => "You may rely on it",
      6 => "As I see it, yes",
      7 => "Most likely",
      8 => "Outlook good",
      9 => "Yes",
      10 => "Signs point to yes",
      11 => "Reply hazy try again",
      12 => "Ask again later",
      13 => "Better not tell you now",
      14 => "Cannot predict now",
      15 => "Concentrate and ask again",
      16 => "Don't count on it",
      17 => "My reply is no",
      18 => "My sources say no",
      19 => "Outlook not so good",
      20 => "Very doubtful", 
      21 => "Konnie says no"
    }
  end

  def prompts_user
    puts "What question would you like the Magic 8 Ball to answer Or QUIT to exit?"
    @user_input = gets.chomp
   
  end

  def run_game
    while true
      if @user_input == "QUIT"
        exit
      else
        choose_random_answer
        prompts_user
      end
    end
  end

  def choose_random_answer
    computer_choice = rand(21)
    puts @choice_hash[computer_choice]
  end

  while @continue_game = true 
    if @user_input == "QUIT"
      break
    end
  end

end

m = MagicEight.new
m.prompts_user
m.run_game



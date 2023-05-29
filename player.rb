class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def take_life
    @lives -= 1
  end

  def is_dead
    @lives == 0
  end

  def new_question
    new_question = Question.new
    new_question.ask_question(name)
    print '> '
    @user_answer = $stdin.gets.chomp
    if new_question.check_answer?(@user_answer.to_i)
      puts 'Yes! You are correct.'
    else
      puts 'Seriously? No!'
      take_life
    end
  end
end
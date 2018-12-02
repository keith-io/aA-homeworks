require "byebug"
class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
    @ans = []
  end

  def play
    until game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    if @ans == seq
      round_success_message
    else
    @game_over = true
    end
  end


  def show_sequence
    add_random_color
    # self.seq.join(", ")
    puts self.seq
    # debugger
    # debugger
  end

  def require_sequence
    puts "Can you match the sequence? (format: 'color, color')"
    @ans = gets.chomp.split(", ")
  end

  def add_random_color
    self.seq << COLORS.sample 
    self.sequence_length = seq.length
  end

  def round_success_message
    puts "You got it right! bleep bloop"
    @sequence_length += 1
  end

  def game_over_message
    puts "Wrong sequence! You lose!"
  end

  def reset_game
    self.sequence_length = 1
    self.seq = []
    self.game_over = false
  end
end

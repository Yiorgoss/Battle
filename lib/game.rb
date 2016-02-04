class Game

  attr_reader :turn_count

  def initialize(p1, p2)
    @players = [p1, p2]
    @turn_count = 0
  end

  def player(number=(turn_count + 1))
    message = 'Please specify a valid player number'
    raise message if !number.is_a?(Numeric)
    raise message if (number > players.size || number < 0 )
    players[number - 1]
  end

  def attack(opponent)
    opponent.receive_damage
  end

  def next_turn
    @turn_count += 1
    @turn_count %= 2
  end

  private

  attr_reader :players

end

game = Game.new('p1', 'p2')
puts game.player
puts game.next_turn
puts game.player
puts game.next_turn
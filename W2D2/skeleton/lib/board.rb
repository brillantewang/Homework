require "byebug"

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { [] }

    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |cup, i|
      4.times { cup << :stone } unless i == 6 || i == 13
    end
  end

  def valid_move?(start_pos)
    raise Exception.new("Invalid starting cup") unless in_range?(start_pos)
  end

  def in_range?(pos)
    pos.between?(1, 12)
  end

  def make_move(start_pos, current_player_name)
    hand = @cups[start_pos]
    @cups[start_pos] = []
    i = (start_pos + 1) % 14

    until hand.empty?
      if i == 6
        @cups[i] << hand.pop if current_player_name == @name1
      elsif i == 13
        @cups[i] << hand.pop if current_player_name == @name2
      else
        @cups[i] << hand.pop
      end

      i = (i + 1) % 14
    end

    render
    next_turn((i - 1) % 14)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].count == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0...6].all?(&:empty?) || @cups[7...13].all?(&:empty?)
  end

  def winner
    if @cups[6].count == @cups[13].count
      :draw
    else
      @cups[6].count > @cups[13].count ? @name1 : @name2
    end
  end
end

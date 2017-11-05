class Player
  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    return @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    if @gold_coins % 10 == 0
      return level_up
    end
  end

  def do_battle(damage)
    @health_points -= damage
    if @health_points < 1
      @lives -= 1
      @health_points = 10
    end
    if @lives == 0
      restart
    end
    puts "lives = #{@lives}"
    puts "gold coins = #{@gold_coins}"
    puts "health points = #{@health_points}"
  end
  def restart
    puts "Gameover!!!"
    initialize
  end
end

coco = Player.new
coco.do_battle(10)
coco.collect_treasure
coco.do_battle(10)
coco.do_battle(500)

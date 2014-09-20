
class Player
  def play_turn(warrior)
    @health ||= warrior.health
    case 
    when warrior.health <=14 &&  warrior.feel.empty? && warrior.health==@health
     warrior.rest! 
    when warrior.feel.empty? && warrior.health< @health
      warrior.walk!
    when warrior.feel.empty? 
      warrior.walk!
    else
      warrior.attack!
    end 
    @health= warrior.health
  end
end

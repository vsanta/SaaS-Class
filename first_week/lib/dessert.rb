class Dessert
  def initialize name=nil , calories=nil
    @name = name
    @calories = calories
  end
  def name
    @name
  end

  def name= name
    @name = name
  end

  def calories
    @calories
  end

  def calories= calories
    @calories = calories
  end

  def delicious?
    true
  end

  def healthy?
    @calories < 200
  end

end

class JellyBean < Dessert

  def initialize name, calories, flavor
    super name, calories
    @flavor = flavor
  end

  def flavor
    @flavor
  end

  def flavor= flavor
    @flavor = flavor
  end

  def delicious?
    if @flavor.downcase == "black licorice"
      return false
    end
    super
  end
end
class Ncrmntr
  attr_reader :result
  attr_accessor :name

  def initialize(name=nil)
    @name = validate(name)
    @result = start_result
  end

  def owner
    who_is
  end

  def display_result
    calculate
  end

  def add
    @result += 1
  end

  def clear
    @result = start_result
  end

  private

  def validate(name)
    name.to_s unless name == nil
  end

  def haunted?
    !@name
  end

  def who_is
    if haunted?
      "👻 B O O O O O 👻"
    else
      "This belongs to #{@name}"
    end
  end

  def start_result
    0
  end

  def calculate
    if haunted?
      @result * -1
    else
      @result
    end
  end

end

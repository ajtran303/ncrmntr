class Ncrmntr
  attr_reader :name, :result

  def initialize(name="")
    @name = name.to_s
    @result = start_result
  end

  def haunted?
    @name == ""
  end

  def owner
    if haunted?
      "BOO"
    else
      "This belongs to #{@name}"
    end
  end

  def start_result
    0
  end

  def display_result
    @result
  end

  def add
    @result += 1
  end

  def clear
    @result = start_result
  end

end

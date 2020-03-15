class Incrementor
    attr_reader :result, :owner

    def initialize(owner=false)
        @owner = owner
        @result = 0
        puts "#{@owner} just got a spiffy new incrementor!" if @owner
        puts "The incrementor turns on and the display reads '#{@result}'."
        puts "#{owner} is bledatadated about it!" if @owner 
        puts "It did that by itself. Spookduculous!" unless @owner
        puts
    end

    def add_one()
        puts "The 'add_one' button was pressed, adding 1 to '#{@result}'."
        puts
        @result = @result + 1
    end

    def clear()
        puts "The 'clear' button was pressed and 0 takes the place of '#{@result}'."
        puts
        @result = 0
    end

    def show()
        puts "The 'show' button was pressed and the display reads '#{@result}'."
        puts
    end

    def belongs_to()
        puts  "This incrementor belongs to #{@owner}!" if @owner
        puts "This incrementor has no owner. Spooktacular!" unless @owner
        puts
    end

    def give_to(name)
        if @owner
            puts "#{@owner} gave this incrementor to #{name}."
            @owner = name
            puts "It now belongs to #{@owner}!!"
        else
            puts "#{name} claims this haunted incrementor. Splinkies!"
            @owner = name
        end
        puts
    end
end

calc_sara = Incrementor.new("Sara")

calc_sara.belongs_to
calc_sara.give_to("Lara")
calc_sara.belongs_to
calc_sara.show
5.times {calc_sara.add_one}
calc_sara.show
calc_sara.clear

calc_nobody = Incrementor.new
calc_nobody.belongs_to
calc_nobody.give_to("Sara")
calc_nobody.add_one
calc_nobody.add_one
calc_nobody.show
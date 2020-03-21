# THINGS TO DO?
# Maybe there should be an Owner class?
# That was, the Incrementor just focuses on number stuff

# Overall this program can be broken down and expanded....
# Like a weird text-based world of people owning or not owning calculators
# Their calculators can only do simple mundane things until they upgrade them?
# Just wondering...

class Incrementor
    attr_reader :result, :owner

    def initialize(owner=nil)
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
